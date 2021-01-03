layui.define(['layer', 'jquery', 'admin', 'form', 'laydate', 'table'], function (exports) {
    var layer = layui.layer;
    var admin = layui.admin;
    var form = layui.form;
    var laydate = layui.laydate;
    var table = layui.table;
    var $ = layui.jquery;
    var common = {
        /**
         * 耗时
         * @param btime
         * @param tip
         * @returns {number}
         */
        costTime: function (btime, tip) {
            var etime = new Date().getTime();
            if (btime) {
                console.log(tip + '：' + (etime - btime) + 'ms');
            }
            return etime;
        },
        // 缓存临时数据
        setTempData: function (key, value) {
            // var btime = common.costTime();
            sessionStorage.setItem(key, JSON.stringify({value: value}));
            // common.costTime(btime,'type:' + key);
        },
        // 获取缓存临时数据
        getTempData: function (key) {
            // var btime = new Date().getTime();
            var result = sessionStorage.getItem(key);
            result = JSON.parse(result);
            if (result) {
                result = result.value;
            }
            // var etime = new Date().getTime();
            // console.log('获取缓存[key=' + key + ']：' + (etime - btime) + '毫秒');
            return result;
        },
        removeData: function (key) {
            sessionStorage.removeItem(key);
        },
        // 封装layer.open
        open: function (params) {
            var successCallBack = params.success;
            params.type = 1;
            params.skin = 'layui-layer-molv';
            params.area = params.area ? params.area : '450px';
            params.offset = params.offset ? params.offset : '120px';
            params.success = function (layero, index) {
                successCallBack ? successCallBack(layero, index) : '';
                $.get(params.url, {}, function (data) {
                    // params.content = data;
                    $(layero).children('.layui-layer-content').html(data);
                });
            };

            return layer.open(params);
        },
        /**
         * 打开div弹窗
         */
        openDiv: function (options) {
            var defaultOption = {
                type: 1
                , area: '500px'
            };
            options = $.extend({}, defaultOption, options);
            layer.open(options);
        },
        getUrlParams: function (key) {
            var params = common.parseUrlParam(window.location.href);
            if (params && key) {
                if (params[key + ""]) {
                    return decodeURIComponent(params[key + ""]);
                } else {
                    return "";
                }

            }
            return params;
        },
        getTopUrlParams: function (key) {
            var params = common.parseUrlParam(top.window.location.href);
            if (params && key) {
                if (params[key + ""]) {
                    return decodeURIComponent(params[key + ""]);
                } else {
                    return "";
                }

            }
            return params;
        },
        //处理url参数返回对象
        parseUrlParam: function (url) {
            if (url.indexOf('?') == -1) {
                return null;
            }
            var index = url.indexOf('?');
            var paramstr = url.substring(index + 1);
            var params = paramstr.split('&');
            var data = new Object();
            for (var i = 0; i < params.length; i++) {
                if (!params[i] || params[i].indexOf('=') == -1) {
                    continue;
                }
                var map = params[i].trim().split('=');
                data[map[0]] = map[1];
            }
            return data;
        },
        //带有文件的表单上传方法
        ajaxPostFormFile: function (form, url, data, callBack) {
            var formdata = new FormData(form);
            $.ajax({
                url: url,
                method: 'post',
                data: formdata,
                dataType: 'JSON',
                processData: false,
                contentType: false,
                beforeSend: function (XMLHttpRequest) {
                    common.load();
                },
                success: function (data) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (data) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            });
        },
        swalInfo: function (title, text) {
            var params = {};
            params.title = title ? title : '提示';
            params.text = text ? text : '操作成功！';
            params.type = 'info';
            params.showConfirmButton = false;
            params.showCancelButton = true;
            params.cancelButtonText = '关闭';
            top.swal(params);
        },
        swalWarning: function (title, text) {
            var params = {};
            params.title = title ? title : '提示';
            params.text = text ? text : '操作成功！';
            params.type = 'warning';
            params.showConfirmButton = false;
            params.allowOutsideClick = true;
            params.timer = 2000;
            top.swal(params);
        },
        swalSuccess: function (title, text) {
            var params = {};
            params.title = title ? title : '新增';
            params.text = text ? text : '操作成功！';
            params.type = 'success';
            params.showConfirmButton = false;
            params.allowOutsideClick = true;
            params.timer = 1500;
            top.swal(params);
        },
        swalFail: function (title, text) {
            top.swal(title ? title : '异常信息', text ? text : '操作失败！', "error");
        },
        swalDelete: function (params, callBack) {
            if (params.text && params.text.length > 100) {
                params.text = '<em title="' + params.text + '">' + (params.text.substring(0, 100) + "...") + '</em>';
                params.html = 1;
            }
            params.title = params.title ? params.title : '确定删除吗？';
            params.text = params.text ? params.text : '你将无法恢复此数据！';
            params.type = params.type ? params.type : 'warning';
            params.cancelButtonText = '取消删除！';
            params.confirmButtonText = params.confirmButtonText ? params.confirmButtonText : '确定删除';
            params.showCancelButton = true;
            params.confirmButtonColor = "#DD6B55";
            params.closeOnConfirm = false;
            top.swal(params, function () {
                if ($.isFunction(callBack)) {
                    callBack();
                }
            });
        },
        swalConfirm: function (params, callBack, cancel) {
            params.title = params.title ? params.title : '确认信息？';
            params.text = params.text ? params.text : '你确定进行此操作！';
            params.type = params.type ? params.type : 'warning';
            params.cancelButtonText = '取消';
            params.confirmButtonText = params.confirmButtonText ? params.confirmButtonText : '确定';
            params.showCancelButton = true;
            params.confirmButtonColor = "#DD6B55";
            params.closeOnConfirm = false;
            top.swal(params, function (isConfirm) {
                if (isConfirm && $.isFunction(callBack)) {
                    callBack();
                }
                if (!isConfirm && $.isFunction(cancel)) {
                    cancel();
                }
            });
        },
        swalPrompt: function (params, callBack) {
            params.maxLength = params.maxLength || 100;
            params.title = params.title ? params.title : '确定信息？';
            params.type = 'prompt';
            params.input = 'textarea';
            params.inputPlaceholder = params.inputPlaceholder ? params.inputPlaceholder : '请输入...',
                params.cancelButtonText = '取消';
            params.confirmButtonText = params.confirmButtonText ? params.confirmButtonText : '确定';
            params.showCancelButton = true;
            params.confirmButtonColor = "#DD6B55";
            params.closeOnConfirm = false;
            top.swal(params, function (inputValue) {
                if (inputValue === false) return false;
                if (inputValue === "") {
                    top.swal.showInputError("请输入！");
                    return false;
                }
                if (params.maxLength && inputValue.length > params.maxLength) {
                    top.swal.showInputError("最多可输入" + params.maxLength + "个字");
                    return false;
                }
                if ($.isFunction(callBack)) {
                    callBack(inputValue);
                }
            });
        },
        swalClose: function () {
            top.sweetAlert.close();
        },
        ajax: function (options, callBack) {
            var config = {
                type: 'GET',
                dataType: 'json',
                data: [],
                beforeSend: function (XMLHttpRequest) {
                    common.load();
                },
                success: function (data, textStatus, jqXHR) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            };
            options = $.extend(true, {}, config, options);
            $.ajax(options);
        },
        ajaxGet: function (url, data, callBack) {
            if (!data) {
                data = {};
            }
            data.r = Math.random();//解决IE直接读取缓存问题
            return $.ajax(url, {
                type: 'GET',
                dataType: 'json',
                data: data,
                beforeSend: function (XMLHttpRequest) {
                    common.load();
                },
                success: function (data, textStatus, jqXHR) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            });
        },
        ajaxPost: function (url, data, callBack, hasLoad) {
            if (!data) {
                data = {};
            }
            data.r = Math.random();//解决IE直接读取缓存问题
            var ajax = $.ajax(url, {
                type: 'POST',
                dataType: 'json',
                data: data,
                beforeSend: function (XMLHttpRequest) {
                    if (!hasLoad) {
                        common.load();
                    }
                },
                success: function (data, textStatus, jqXHR) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            });
            return ajax;
        },
        ajaxPut: function (url, data, callBack, hasLoad) {
            if (!data) {
                data = {};
            }
            data.r = Math.random();//解决IE直接读取缓存问题
            $.ajax(url, {
                type: 'PUT',
                dataType: 'json',
                data: data,
                beforeSend: function (XMLHttpRequest) {
                    if (!hasLoad) {
                        common.load();
                    }
                },
                success: function (data, textStatus, jqXHR) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            });
        },
        ajaxDelete: function (url, data, callBack) {
            if (!data) {
                data = {};
            }
            data.r = Math.random();//解决IE直接读取缓存问题
            $.ajax(url, {
                type: 'DELETE',
                dataType: 'json',
                data: data,
                beforeSend: function (XMLHttpRequest) {
                    common.load();
                },
                success: function (data, textStatus, jqXHR) {
                    common.closeLoad();
                    if ($.isFunction(callBack)) {
                        callBack(data);
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    common.closeLoad();
                    var message = XMLHttpRequest.responseJSON.message;
                    common.exceptionDialog(message);
                }
            });
        },
        handleStrNull:function(value){
            if(value == null || value == undefined || value == 'null'){
                return "";
            }
            return value;
        },
        load: function () {
            var index = top.layer.open({
                type: 3,
                icon: 2,
                resize: false,
                shade: 0.01,
                zIndex: 90000001
            });
            return index;
        },
        closeLoad: function () {
            top.layer.closeAll('loading');
        },
        exceptionDialog: function (message) {
            top.layer.open({
                type: 0,
                title: '异常信息',
                skin: 'layui-layer-lan',
                content: message,
                icon: '5',
                zIndex: 90000001
            });
        },
        errorDialog: function (message) {
            top.layer.open({
                type: 0,
                title: '失败信息',
                skin: 'layui-layer-lan',
                content: message,
                icon: '5',
                zIndex: 90000001
            });
        },
        errorTip: function (message) {
            layer.msg(message, {icon: 5});
        },
        selectDictLabel: function (datas, value) {
            var actions = [];
            $.each(datas, function (index, dict) {
                if (dict.dictValue == value) {
                    actions.push('<span class="layui-badge layui-bg-' + dict.style + '">' + dict.dictName + '</span>');
                    return false;
                }
            });
            return actions.join('');
        },
        dictLabel: function (type, value) {
            var datas = common.getTempData("sysDict:" + type);
            var actions = [];
            $.each(datas, function (index, dict) {
                if (dict.dictValue == value) {
                    var style = "";
                    if (dict.style != null && dict.style != '') {
                        actions.push('<span class="layui-badge layui-bg-' + dict.style + '">' + dict.dictName + '</span>');
                    } else {
                        actions.push('<span>' + dict.dictName + '</span>');
                    }
                    return false;
                }
            });
            return actions.join('');
        },
        dictName: function (type, value) {
            var datas = common.getTempData("sysDict:" + type);
            var actions = [];
            $.each(datas, function (index, dict) {
                if (dict.dictValue == value) {
                    actions.push(dict.dictName);
                    return false;
                }
            });
            return actions.join('');
        },
        /**
         * 是否带html的常量显示
         * @param type
         * @param value
         * @param isHtml 默认显示
         * @returns {string}
         */
        dictIsLabel: function (type, value, isHtml) {
            var datas = common.getTempData("sysDict:" + type);
            var actions = [];
            $.each(datas, function (index, dict) {
                if (dict.dictValue == value) {
                    if (isHtml == undefined || isHtml == null || isHtml == true) {
                        var style = "";
                        if (dict.style != null && dict.style != '') {
                            actions.push('<span class="layui-badge layui-bg-' + dict.style + '">' + dict.dictName + '</span>');
                        } else {
                            actions.push('<span>' + dict.dictName + '</span>');
                        }
                    } else {
                        actions.push(dict.dictName);
                    }
                    return false;
                }
            });
            return actions.join('');
        },
        /**
         * 任务节点名称
         * @param type
         * @param task
         * @returns {string}
         */
        workTaskLabel: function (type, task) {
            var data = common.getTempData("workTask:" + type);
            var label = "";
            $.each(data, function (index, item) {
                if (item.task == task) {
                    var color = "blue";
                    if (task == 'start') {
                        color = "green";
                    } else if (task == 'fail') {
                        color = "red";
                    }
                    //根据美英需求，完成的状态是蓝色 mod zhengjinping(2019-2-22 11:20:00)
                    // else if (task == 'finish') {
                    //     color = "gray";
                    // }
                    label = '<span class="layui-badge layui-bg-' + color + '">' + item.taskName + '</span>';
                    return false;
                }
            });
            return label;
        },
        /**
         *  从集合对象搜索
         * @param datas 集合
         * @param searchKey 搜索的key
         * @param searchValue 搜索的值
         * @param resultKey 返回该对象指定key的值，不传入该值返回整个对象
         * @returns {*}
         */
        searchFromList: function (datas, searchKey, searchValue, resultKey) {
            var result = null;
            $.each(datas, function (index, item) {
                if (item[searchKey] == searchValue) {
                    result = item;
                    return;
                }
            });
            if (result && resultKey) {
                return result[resultKey];
            }
            return result;
        },
        /**
         *
         * @param options
         * {dom:"#id", //jquery选择器
         * data: [],//数据集合
         * valueKey:"id",//值的key
         * nameKey:"name",//名称的key
         * emptyText:"请选择"//"/front/hospital/个选项提示
         * }
         */
        selectFromList: function (options) {
            //默认配置
            var config = {
                dom: "#id",
                data: [],
                valueKey: "id",
                nameKey: "name",
                selectValue: null,
                emptyText: "请选择"
            };
            options = $.extend({}, config, options);
            var html = [];
            if (options.emptyText) {
                html.push("<option value=''>" + options.emptyText + "</option>")
            }
            $.each(options.data, function (index, item) {
                if (options.selectValue == item[options.valueKey]) {
                    html.push("<option value='" + item[options.valueKey] + "' selected>" + item[options.nameKey] + "</option>")
                } else {
                    html.push("<option value='" + item[options.valueKey] + "'>" + item[options.nameKey] + "</option>")
                }
            });
            $(options.dom).html(html.join(""));
        },
        dictRender: function (dictObj) {
            if (!dictObj) {
                dictObj = $('[lay-dict]');
            }
            dictObj.each(function () {
                var $this = $(this);
                var type = $this.attr("lay-dict");
                var tip = $this.attr("placeholder") != undefined ? $this.attr("placeholder") : '请选择';
                var typeObj = null;
                var selected = null;
                var includeValues = null;
                // common.ajaxGet('/sysDict/' + value, {}, function (result) {
                var OptionHtml = "";
                if (type.indexOf('{') == -1) {
                    OptionHtml = "<option value=''>" + tip + "</option>";
                } else {
                    typeObj = new Function('return ' + type)();
                    var isDefault = typeObj.default == undefined ? true : false;
                    if (isDefault) {
                        OptionHtml = "<option value=''>" + tip + "</option>";
                    }
                    type = typeObj.type;
                    selected = typeObj.selected;
                    includeValues = typeObj.includeValues;
                    if (includeValues) {
                        includeValues = includeValues.split(',');
                    }
                }
                var dictData = common.getTempData("sysDict:" + type);
                if (dictData != undefined) {
                    for (var i = 0; i < dictData.length; i++) {
                        var item = dictData[i];
                        //只要特定选项
                        if (includeValues && includeValues.indexOf(item.dictValue) == -1) {
                            continue;
                        }
                        if (item.status == 0) {
                            OptionHtml += "<option value='" + item.dictValue + "' " + (item.dictValue == selected ? 'selected="selected"' : '') + ">" + item.dictName + "</option>";
                        }
                    }
                }
                $this.html(OptionHtml);
                // });
            });
            form.render('select');
        },
        treeNodeClickCss: function (obj, isColor) {
            $(obj).parents('li').siblings().each(function () {
                $(this).children('a').removeAttr('style');
                $(this).children().children().each(function () {
                    $(this).children().removeAttr('style');
                });
            });
            $(obj).parents('li').children('a').removeAttr('style');
            $(obj).parents('li').children('li').each(function () {
                $(this).children('a').removeAttr('style');
            });
            $(obj).parents('li').children('ul').children('li').each(function () {
                $(this).children('a').removeAttr('style');
            });
            if (isColor == undefined || isColor == true) {
                $(obj).css("color", "#5a8bff");
            }
        },
        tableRowClickCheck: function () {
            $(document).on("click", ".layui-table-body table.layui-table tbody tr", function () {
                var index = $(this).attr('data-index');
                var tableBox = $(this).parents('.layui-table-box');
                //存在固定列
                if (tableBox.find(".layui-table-fixed.layui-table-fixed-l").length > 0) {
                    tableDiv = tableBox.find(".layui-table-fixed.layui-table-fixed-l");
                } else {
                    tableDiv = tableBox.find(".layui-table-body.layui-table-main");
                }
                var checkCell = tableDiv.find("tr[data-index=" + index + "]").find("td div.laytable-cell-checkbox div.layui-form-checkbox I");
                if (checkCell.length > 0) {
                    checkCell.click();
                }
            });
            $(document).on("click", "td div.laytable-cell-checkbox div.layui-form-checkbox", function (e) {
                e.stopPropagation();
            });
        },
        /**
         *折线图 ：line  柱状图: bar
         * @param XAxis XAxis[1,2,3,4,...]
         * @param names names名称["","",""]
         * @param YAxis [{name:"",type:"",stack:"",data:[1,2,3,4,...]},...]
         * @returns {{tooltip: {trigger: string}, legend: {data: *}, grid: {left: string, right: string, bottom: string, containLabel: boolean}, toolbox: {feature: {saveAsImage: {}}}, xAxis: {type: string, boundaryGap: boolean, data: *}, yAxis: {type: string}, series: *}|*}
         */
        brokenLineGraph: function (XAxis, names, YAxis) {
            //参数设置
            var option = {
                tooltip: {    //提示框组件
                    trigger: 'axis',
                    axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                        type: 'cross'        // 默认为直线，可选为：'line' | 'shadow'| 'cross'
                    }
                },
                legend: {     //图例组件
                    data: names
                },
                grid: {       //直角坐标系内绘图网格
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {     //工具栏 （保存图片）
                    feature: {
                        saveAsImage: {}
                    }
                },
                xAxis: {       //直角坐标系 grid 中的 x 轴
                    type: 'category',
                    boundaryGap: true,
                    data: XAxis,
                    axisLine: {
                        lineStyle: {
                            type: 'solid',
                            color: '#e6e6e6',//左边线的颜色
                            width: '1.5'//坐标线的宽度
                        }
                    }
                },
                yAxis: {  //直角坐标系 grid 中的 y 轴
                    type: 'value',
                    // modify by wujb num为true代表y坐标的值为数量
                    axisLabel: {formatter: YAxis.num ? '{value}' : '￥{value}'},
                    /*axisLabel: {formatter: '￥{value}'},*/
                    axisPointer: {snap: true},
                    axisLine: {
                        lineStyle: {
                            type: 'solid',
                            color: '#e6e6e6',
                            width: '1.5'
                        }
                    }
                },
                series: YAxis//系列列表
            };
            return option;
        },
        /**
         * 单个柱状图
         * X轴显示数值
         * @param XAxis
         * @param YAxis
         * @param type 类型'￥{value}'， '{value}'
         * @returns {{grid: {x: number, y: number}, tooltip: {trigger: string, axisPointer: {type: string}}, toolbox: {show: boolean, feature: {mark: {show: boolean}, dataView: {show: boolean, readOnly: boolean}, magicType: {show: boolean, type: string[]}, restore: {show: boolean}, saveAsImage: {show: boolean}}}, calculable: boolean, xAxis: *[], yAxis: *[], series: *[]}}
         */
        histogramSinglePour: function (XAxis, YAxis, type) {
            //参数设置
            var option = {
                grid: {
                    x: 200,
                    y: 0
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {type: 'cross'}
                },
                toolbox: {
                    show: true,
                    feature: {
                        mark: {show: false},
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        type: 'value',
                        axisLabel: {formatter: type},
                        boundaryGap: [0, 0.01],
                        axisPointer: {snap: true}
                    }
                ],
                yAxis: [
                    {
                        type: 'category',
                        data: YAxis
                    }
                ],
                series: [
                    {
                        type: 'bar',
                        data: XAxis,
                        symbolSize: 12,
                        lineStyle: {
                            normal: {
                                width: 5,
                                shadowColor: '#5a8bff',
                                shadowBlur: 40,
                                shadowOffsetY: 10
                            }
                        },
                        itemStyle: {
                            normal: {
                                label: {
                                    show: true, //开启显示
                                    position: 'right', //在上方显示
                                    textStyle: { //数值样式
                                        color: 'black',
                                        fontSize: 16
                                    }
                                }
                            }
                        },
                    }
                ]
            };
            return option;
        },
        /**
         * 普通的饼状图
         * @param legendData['',''] 图例
         * @param seriesData:[{name:'',value:''},{name:'',value:''}]
         */
        commonPie: function (legendData, seriesData) {
            var option = {
                tooltip: {
                    trigger: 'item',
                    //{a} <br/>{b} : {c} ({d}%)
                    formatter: "{b} : {c} ({d}%)"
                },
                legend: {
                    data: legendData
                },
                series: [
                    {
                        type: 'pie',
                        radius: '55%',
                        center: ['40%', '50%'],
                        data: seriesData,
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            return option;
        },
        /**
         * 圆形饼形
         * @param legendData ['直达','营销广告','搜索引擎','邮件营销','联盟广告','视频广告','百度','谷歌','必应','其他']
         * @param seriesData [{value:335, name:'直达'},{value:310, name:'邮件营销'}]
         * @returns
         */
        circularPie: function (legendData, seriesData) {
            option = {
                tooltip: {
                    trigger: 'item',
                    //{a} <br/>{b}: {c} ({d}%)
                    formatter: "{b}: {c} ({d}%)"
                },
                legend: {
                    x: 'center',
                    data: legendData
                },
                series: [
                    {
                        // name:'访问来源',
                        type: 'pie',
                        radius: ['40%', '55%'],
                        label: {
                            normal: {
                                formatter: '{b}{d}%',
                                borderColor: '#aaa',
                                borderRadius: 4
                            }
                        },
                        data: seriesData
                    }
                ]
            };
            return option;
        },
        /**
         * 新类的环形饼状图
         *  add by zhengjinping(2019-10-24 13:48:00)
         * @param legendData
         * @param seriesData
         */
        circularPieNew: function (legendData, seriesData) {
            var total = 0;
            layui.each(seriesData, function (i, item) {
                total = total + item.value;
            });
            var option = {
                title: {
                    text: '商品销售',
                    subtext: '   Top 10',
                    subtextStyle: {
                        fontSize: 18
                    },
                    x: '100',
                    y: 'center'
                },
                legend: {
                    orient: 'vertical',
                    y: 'center',
                    x: '50%',
                    itemGap: 20,
                    formatter: function (name) {
                        layui.each(seriesData, function (i, item) {
                            if (item.name == name) {
                                if (total > 0) {
                                    name = name + ' {a|' + item.value + '} ' + common.fmoneyText(common.accMul(common.accDiv(item.value, total), 100), 2) + '%';
                                } else {
                                    name = name + ' {a|' + item.value + '} 0.00%'
                                }
                            }
                        });
                        return name;
                    },
                    data: legendData,
                    textStyle: {
                        rich: {
                            a: {
                                color: '#aaa',
                                display: 'inline-block',
                                width: 50
                            }
                        }
                    },
                    borderRadius: 10,
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                series: [{
                    hoverAnimation: false,
                    name: '商品',
                    type: 'pie',
                    label: {
                        normal: {show: false},
                        emphasis: {show: false}
                    },
                    labelLine: {
                        normal: {show: false},
                        emphasis: {show: false}
                    },
                    radius: ['62%', '70%'],
                    center: ['150', '50%'],
                    avoidLabelOverlap: false,
                    data: seriesData
                }]
            };
            return option;
        },
        //乘法
        accMul: function (arg1, arg2) {
            var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
            try {
                m += s1.split(".")[1].length
            } catch (e) {
            }
            try {
                m += s2.split(".")[1].length
            } catch (e) {
            }
            return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m)
        },
        //除法
        accDiv: function (arg1, arg2) {
            var t1 = 0, t2 = 0, r1, r2;
            try {
                t1 = arg1.toString().split(".")[1].length
            } catch (e) {
            }
            try {
                t2 = arg2.toString().split(".")[1].length
            } catch (e) {
            }
            with (Math) {
                r1 = Number(arg1.toString().replace(".", ""))
                r2 = Number(arg2.toString().replace(".", ""))
                return (r1 / r2) * pow(10, t2 - t1);
            }
        },
        accAdd: function (arg1, arg2) {
            var r1, r2, m;
            try {
                r1 = arg1.toString().split(".")[1].length
            } catch (e) {
                r1 = 0
            }
            try {
                r2 = arg2.toString().split(".")[1].length
            } catch (e) {
                r2 = 0
            }
            m = Math.pow(10, Math.max(r1, r2))
            return (arg1 * m + arg2 * m) / m
        },
        accSub: function (arg1, arg2) {
            var r1, r2, m;
            try {
                r1 = arg1.toString().split(".")[1].length
            } catch (e) {
                r1 = 0
            }
            try {
                r2 = arg2.toString().split(".")[1].length
            } catch (e) {
                r2 = 0
            }
            m = Math.pow(10, Math.max(r1, r2))
            return (arg1 * m - arg2 * m) / m
        },
        fMoneyRmoveFormat: function (money) {
            return money.substring(1).replace(/\,/, "");
        },
        /**
         * 格式化金额
         * @param s  金额
         * @param n  保留位数
         * @returns {string}
         */
        fmoney: function (s, n) {
            var mid = s;
            if (s && s != null && !isNaN(s) && s != "") {
                var sign = "";
                s = s + "";
                if (s.indexOf("-") >= 0) {
                    sign = "-";
                    s = s.replace('-', '');
                }
                n = n > 0 && n <= 20 ? n : 2;
                s = (s + "").replace(',', '');//若已包含,，先替换下.modify by lincl 20190110
                s = Number((s + "").replace(/[^\d\.-]/g, ""));
                s = common.fmoneyText(s, n).toFixed(n) + "";
                var l = s.split(".")[0].split("").reverse(),
                    r = s.split(".")[1];
                t = "";
                for (i = 0; i < l.length; i++) {
                    t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
                }
                //modify by czl 2017/11/3 为-192时,显示为-,192;正常显示应该为-192
                var str = t.split("").reverse().join("") + "." + r;
                if (mid <= -100 && mid > -1000) {
                    return sign + str.replace(',', '');
                }

                return sign + t.split("").reverse().join("") + "." + r;
            } else {
                return '0.00';
            }
        },
        fmoneyText: function (s, n) {
            var mid = s;
            if (s && s != null && !isNaN(s) && s != "") {
                n = n > 0 && n <= 20 ? n : 2;
                s = (s + "").replace(',', '');//若已包含,，先替换下.modify by lincl 20190110
                s = Number((s + "").replace(/[^\d\.-]/g, ""));
                if (n == undefined) {
                    n = 2;
                }
                if (isNaN(n)) {
                    return s;
                }
                var divide = Math.pow(10, n);
                if(s<0) {
                    s = Math.round(s*(-1) * divide) / divide;
                    s = s*(-1);
                }else {
                    s = Math.round(s * divide) / divide;
                }
                return s;
            } else {
                return 0;
            }
        },
        /**
         * 格式化 金额(带颜色)
         * @param amount
         * @param n
         * @returns {string}
         */
        fColorMoney: function (amount, n) {
            var label = common.fmoney(amount, n);
            var cls = 'nepadmin-c-red';
            if (amount < 0) {
                cls = 'nepadmin-c-green'
            } else if (amount == 0) {
                cls = 'nepadmin-c-gray';
            }
            return '<span class="' + cls + '">￥' + label + '</span>';
        },
        /**
         * 数字格式化
         * @param num
         * @param n
         */
        fColorNum: function (num, n) {
            if (!num) {
                num = 0;
            }
            num = Number(num);
            var label = num;
            if (Number(n)) {
                label = num.toFixed(Number(n));
            }
            var cls = 'nepadmin-c-red';
            if (num < 0) {
                cls = 'nepadmin-c-green'
            } else if (num == 0) {
                cls = 'nepadmin-c-gray';
            }
            return '<span class="' + cls + '">' + label + '</span>';
        },
        fPrice: function (price) {
            if (price != undefined && price != null && price != "" && price != "0") {
                var prices = price.toString().split(".");
                var length = prices.length;
                if (length > 1) {
                    var len = prices[1].length;
                    if (len > 2) {
                        return common.fmoney(price, 4);
                    } else {
                        return common.fmoney(price, 2);
                    }
                } else {
                    return common.fmoney(price, 2);
                }
            } else {
                return '0.00';
            }
        },
        layDateDayRange: function (id, startId, endId, dateType) {
            if (dateType == undefined || dateType == null || dateType == '') {
                dateType = 'date';
            }
            //日期选择器
            laydate.render({
                elem: '#' + id,
                range: '~',
                done: function (value, date, endDate) {
                    if (value) {
                        var str = value.split('~');
                        if (startId) {
                            $("#" + startId).val(str[0]);
                        }
                        if (endId) {
                            $("#" + endId).val(str[1]);
                        }
                    } else {
                        if (startId) {
                            $("#" + startId).val("");
                        }
                        if (endId) {
                            $("#" + endId).val("");
                        }
                    }

                }
                , type: dateType //默认，可不填
            });
        },
        layDateDay: function (id) {
            //日期选择器
            laydate.render({
                elem: '#' + id,
                type: 'date' //默认，可不填
            });
        },
        /**
         * 时间控件
         * @param id
         * @param value
         * @param type
         */
        layDate: function (id, value, type) {
            //日期选择器
            laydate.render({
                elem: '#' + id,
                value: value != undefined && value != null ? value : new Date(),
                type: type != undefined ? type : 'date' //默认，可不填
            });
        },
        layDateTime: function (id) {
            //日期选择器
            laydate.render({
                elem: '#' + id,
                type: 'datetime' //默认，可不填
            });
        },
        layDateTimeInitValue: function (id, value) {
            //日期选择器
            laydate.render({
                elem: '#' + id,
                value: value != undefined ? value : new Date(),
                type: 'datetime' //默认，可不填
            });
        },
        layDateInitValue: function (id, value) {
            //日期选择器
            laydate.render({
                elem: '#' + id,
                value: value != undefined ? value : new Date()
            });
        },
        /**
         * 获取表达数据
         * @param $dom
         * @returns {*}
         */
        getFormData: function ($dom) {
            var fieldElem = $dom.find('input,select,textarea');
            var field = {};
            layui.each(fieldElem, function (_, item) {
                item.name = (item.name || '').replace(/^\s*|\s*&/, '');

                if (!item.name) return;

                //用于支持数组 name
                if (/^.*\[\]$/.test(item.name)) {
                    var key = item.name.match(/^(.*)\[\]$/g)[0];
                    nameIndex[key] = nameIndex[key] | 0;
                    item.name = item.name.replace(/^(.*)\[\]$/, '$1[' + (nameIndex[key]++) + ']');
                }

                if (/^checkbox|radio$/.test(item.type) && !item.checked) return;
                field[item.name] = item.value;
            });
            return field;
        },
        /**
         * 手动校验
         * @param $form
         * @returns {boolean}
         */
        doVerify: function ($form) {
            var DANGER = 'layui-form-danger';
            var verify = form.config.verify;
            var verifyElem = $form.find('*[lay-verify]'); //获取需要校验的元素
            var device = layui.device();
            var stop = false;
            //开始校验
            // layui.each(verifyElem, function (aa, item) {
            $(verifyElem).each(function (aa, item) {
                var othis = $(this)
                    , vers = othis.attr('lay-verify').split('|')
                    , verType = othis.attr('lay-verType') //提示方式
                    , value = othis.val();

                othis.removeClass(DANGER);
                $.each(vers, function (bb, thisVer) {
                    // vers.each(function (bb, thisVer) {
                    var isTrue //是否命中校验
                        , errorText = '' //错误提示文本
                        , isFn = typeof verify[thisVer] === 'function';

                    //匹配验证规则
                    if (verify[thisVer]) {
                        var isTrue = isFn ? errorText = verify[thisVer](value, item) : !verify[thisVer][0].test(value);
                        errorText = errorText || verify[thisVer][1];

                        //如果是必填项或者非空命中校验，则阻止提交，弹出提示
                        if (isTrue) {
                            //提示层风格
                            if (verType === 'tips') {
                                layer.tips(errorText, function () {
                                    if (typeof othis.attr('lay-ignore') !== 'string') {
                                        if (item.tagName.toLowerCase() === 'select' || /^checkbox|radio$/.test(item.type)) {
                                            return othis.next();
                                        }
                                    }
                                    return othis;
                                }(), {tips: 1});
                            } else if (verType === 'alert') {
                                layer.alert(errorText, {title: '提示', shadeClose: true});
                            } else {
                                layer.msg(errorText, {icon: 5, shift: 6});
                            }
                            if (!device.android && !device.ios) item.focus(); //非移动设备自动定位焦点
                            othis.addClass(DANGER);
                            stop = true;
                            return false;
                        }
                    }
                });
                if (stop) return false;
            });

            if (stop) {
                return false;
            }
            return true;
        },
        /**
         * 数组去重
         * @param arr
         * @param type
         * @returns {*}
         */
        uniqueObjArray: function (arr, type) {
            var newArr = [];
            var tArr = [];
            if (arr.length == 0) {
                return arr;
            } else {
                if (type) {
                    for (var i = 0; i < arr.length; i++) {
                        if (!tArr[arr[i][type]]) {
                            newArr.push(arr[i]);
                            tArr[arr[i][type]] = true;
                        }
                    }
                    return newArr;
                } else {
                    for (var i = 0; i < arr.length; i++) {
                        if (!tArr[arr[i]]) {
                            newArr.push(arr[i]);
                            tArr[arr[i]] = true;
                        }
                    }
                    return newArr;
                }
            }
        },
        shrinkEvent: function (tableElems, heights, othis) {
            var height = $('.shrink_box').height();
            var icon = othis.find('i');
            if (icon.hasClass('layui-icon-up')) {
                othis.find('i').removeClass('layui-icon-up');
                othis.find('i').addClass('layui-icon-down');
                $('.shrink_box').hide();
            } else {
                othis.find('i').removeClass('layui-icon-down');
                othis.find('i').addClass('layui-icon-up');
                $('.shrink_box').show();
                height = -height;
            }
            //折叠或展开的时候，把相应高度加到table表格中，不使用重载方法。modify by lincl.20190312
            for (var i = 0; i < tableElems.length; i++) {
                var tableElem = tableElems[i];
                var tableHeight = $('[lay-id=' + tableElem + ']').height();
                $('[lay-id=' + tableElem + ']').height(tableHeight + height);
                var mainHeight = $('[lay-id=' + tableElem + '] .layui-table-main').height();
                $('[lay-id=' + tableElem + '] .layui-table-main').height(mainHeight + height);
                $('[lay-id=' + tableElem + '] .layui-table-fixed').each(function () {
                    var h = $(this).find('.layui-table-body').height();
                    $(this).find('.layui-table-body').height(h + height);
                });
            }
        },
        renderFlow: function (elem, instanceId, workStatus) {
            common.ajaxGet('/workTask/listFlowStep', {workInstanceId: instanceId}, function (result) {
                if (result.ret) {
                    var html = '';
                    var data = result.data;
                    var hasCancel = false;
                    var newTime = '';
                    var noCreateTime = '';
                    var maxCreateTime = '';
                    for (var i = 0; i < data.length; i++) {
                        var item = data[i];
                        var createTime = item.createTime;
                        // if (item.task == 'finish') {
                        //     continue;
                        // }

                        if (item.newTask == 'cancel' || item.newTask == 'fail' || item.newTask == 'start') {
                            hasCancel = true;
                            noCreateTime = createTime;
                        }
                        if (item.createTime != undefined) {
                            if (maxCreateTime == '' || maxCreateTime < createTime) {
                                maxCreateTime = createTime;
                            }
                            if (i == 0) {
                                newTime = item.createTime;
                            }
                            if (item.createTime >= newTime) {
                                if (item.createTime >= maxCreateTime) {
                                    html += '<li data-task="' + item.task + '" class="current"><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                                } else {
                                    html += '<li data-task="' + item.task + '" ><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                                }
                            } else {
                                html += '<li data-task="' + item.task + '" ><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                            }
                        } else {
                            html += '<li data-task="' + item.task + '" ><span></span><i>' + item.taskName + '</i><em class="time"></em></li>';
                        }
                    }
                    $("#" + elem).html(html);
                    if (hasCancel && noCreateTime >= maxCreateTime) {
                        $("#" + elem).children().removeClass('current');
                    }

                    //指定了流程当前状态 add 修复流程直接已完成显示都是灰的问题 by lincl.20190516
                    if (workStatus) {
                        $("#" + elem).find('li').removeClass('current');
                        $("#" + elem).find('li').each(function () {
                            if (workStatus == $(this).data('task')) {
                                return false;
                            }
                            $(this).addClass('current');
                        });
                    }
                }
            });
        },
        renderPlanFlow: function (elem, instanceId) {
            common.ajaxGet('/workTask/listPlanFlowStep', {workInstanceId: instanceId}, function (result) {
                if (result.ret) {
                    var html = '';
                    var data = result.data;
                    var hasCancel = false;
                    var newTime = '';
                    var noCreateTime = '';
                    var maxCreateTime = '';
                    var isPass = 0;
                    for (var i = 0; i < data.length; i++) {
                        var item = data[i];
                        var createTime = item.createTime;
                        // if (item.task == 'finish') {
                        //     continue;
                        // }
                        if (item.newTask == 'cancel' || item.newTask == 'fail') {
                            hasCancel = true;
                            noCreateTime = createTime;
                        }
                        if (item.createTime != undefined) {
                            if (maxCreateTime == '' || maxCreateTime < createTime) {
                                maxCreateTime = createTime;
                                isPass = item.isPass;
                            }
                            if (i == 0) {
                                newTime = item.createTime;
                            }
                            if (item.createTime >= newTime) {
                                if (item.createTime >= maxCreateTime) {
                                    html += '<li class="current"><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                                } else {
                                    html += '<li><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                                }
                            } else {
                                html += '<li><span></span><i>' + item.taskName + '</i><em class="time">' + item.createTime + '</em></li>';
                            }
                        } else {
                            html += '<li><span></span><i>' + item.taskName + '</i><em class="time"></em></li>';
                        }
                    }
                    $("#" + elem).html(html);
                    if ((hasCancel && noCreateTime >= maxCreateTime) || isPass == '1') {
                        $("#" + elem).children().removeClass('current');
                    }
                }
            });
        },

        isStorageOutBatch: function (userBuyerId,callBack) {
            common.ajaxGet('/sysConfig/isStorageOutBatch', {userBuyerId: userBuyerId}, function (result) {
                if (result.ret) {
                   return callBack(result.data);
                }
                return callBack(false);
            });
        },
        //处理商品名称、规格、单位、厂家、供应商
        handleStr: function (value) {
            if (value != null) {
                value = value.trim();
                value = value.replace(/\(/g, '（');
                value = value.replace(/\)/g, '）');
                value = value.replaceAll('&amp;', '&');
                value = value.replaceAll('&lt;', '<');
                value = value.replaceAll('&gt;', '>');
                value = value.replaceAll('&nbsp;', ' ');
                return value;
            }
            return "";
        },

        /**
         * 导出数据处理 对导出字段需要格式化进行封装
         * @param tableValue [a,b,c]
         * @param numberValue [b,c]
         * @returns {{}}
         */
        handExportNumberType : function (tableValue, numberValue) {
            var exportType = {};
            if (!tableValue || !numberValue) {
                return null;
            }
            for (var i = 0; i < tableValue.length; i++) {
                var it = tableValue[i];
                var index = numberValue.indexOf(it);
                if (index >= 0) {
                    exportType[it] = function(value, line, data) {
                        var tableValue = value.v;
                        if (!Number(tableValue)) {
                            return value;
                        } else {
                            return {
                                v: tableValue,
                                t: 'n',//不写默认是常规 此处指定类型为数字
                                s : value.s,//这边可自定义样式
                            }
                        }
                    };
                } else {
                    exportType[it] = it;
                }
            }
            return exportType;
        },
        /**
         * 关闭当前tab页
         */
        closeCurTab: function () {
            $(top.window.document).find('.nepadmin-tabs-active .nepadmin-tabs-close').click();
        }
    };

    common.events = {
        // 关闭所有弹窗
        closeDialog: function () {
            layer.closeAll('page');
        },
        closeIframe: function () {
            admin.closeIframe();
        }
    };

    /**
     * 金额
     * @param amount
     */
    common.moneyLabel = function (amount, n) {
        if (!n) {
            n = 2;
        }
        if (!amount) {
            amount = 0;
        }
        var label = common.fmoney(amount, n);
        var cls = 'nepadmin-c-red';
        if (amount < 0) {
            cls = 'nepadmin-c-green'
        } else if (amount == 0) {
            cls = 'nepadmin-c-gray';
        }
        return '<span class="' + cls + '" data-value="' + amount + '">￥' + label + '</span>';
    };

    /**
     * 数字
     */
    common.numLabel = function (num, n) {
        if (!n) {
            n = 2;
        }
        if (!num) {
            num = 0;
        }
        var label = common.fmoney(num, n);
        var cls = 'nepadmin-c-red';
        if (num < 0) {
            cls = 'nepadmin-c-green'
        } else if (num == 0) {
            cls = 'nepadmin-c-gray';
        }
        return '<p><span class="' + cls + '" title="' + label + '" data-value="' + num + '">' + label + '</span></p>';
    },
        /**
         *  根据下拉控件获取文本
         * @param $select
         * @param values
         * @returns {string}
         */
        common.selectLabel = function ($select, values) {
            var $optArr = $select.find('option');
            var label = '';
            if (!values) {
                return label;
            }
            var valueArr = values.split(",");
            for (var i = 0; i < valueArr.length; i++) {
                $optArr.each(function () {
                    if ($(this).val() == valueArr[i]) {
                        label = label + ',' + $(this).text();
                        return false;
                    }
                });
            }
            return label.substring(1);
        };

    /**
     * 数字金额大写转换(可以处理整数,小数,负数)
     * @param amount
     * @returns {string}
     */
    common.moneyBigLabel = function (amount) {
        var cls = 'nepadmin-c-red';
        if (amount < 0) {
            cls = 'nepadmin-c-green'
        } else if (amount == 0) {
            cls = 'nepadmin-c-gray';
        }

        var fraction = ['角', '分'];
        var digit = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
        var unit = [['元', '万', '亿'], ['', '拾', '佰', '仟']];
        var head = amount < 0 ? '欠' : '';
        amount = Math.abs(amount);

        var s = '';

        for (var i = 0; i < fraction.length; i++) {
            s += (digit[Math.floor(amount * 10 * Math.pow(10, i)) % 10] + fraction[i]).replace(/零./, '');
        }
        s = s || '整';
        amount = Math.floor(amount);

        for (var i = 0; i < unit[0].length && amount > 0; i++) {
            var p = '';
            for (var j = 0; j < unit[1].length && amount > 0; j++) {
                p = digit[amount % 10] + unit[1][j] + p;
                amount = Math.floor(amount / 10);
            }
            s = p.replace(/(零.)*零$/, '').replace(/^$/, '零') + unit[0][i] + s;
        }
        var label = head + s.replace(/(零.)*零元/, '元').replace(/(零.)+/g, '零').replace(/^整$/, '零元整');
        return '<span class="' + cls + '">' + label + '</span>';
    };

    /**
     * 提示
     * @param $elem jquery对象
     * @param content 提示内容
     * @param maxLength 最长长度，默认20
     */
    common.tip = function ($elem, maxLength, options) {
        var content = $elem.text();
        if (!maxLength) {
            maxLength = 20;
        }
        if (content && content.length > maxLength || maxLength == -1) {
            $elem.hover(function () {
                layer.tips(content, $elem, options);
            }, function () {
                layer.close(layer.index);
            });
        }
    };

    /**
     * 提示
     * @param $elem jquery对象
     * @param maxLength 截取长度
     * @param type 类型 是tip 还是title  默认是tip，非0 为title
     * @param content 内容
     */
    common.tipOrTitle = function ($elem, maxLength, type, content) {
        var tvalue = "";
        if (!content) {
            content = $elem.text();
        } else {
            tvalue = content;
        }
        if (!maxLength || maxLength < 0) {
            maxLength = 20;
        }
        if (!type || type == '0') {
            $elem.attr("lay-tips", content);
        } else {
            $elem.attr("title", content);
        }
        if (content && content.length > maxLength) {
            content = content.substr(0, (maxLength - 2)) + "...";
            $elem.html(content);
        } else if (tvalue) {
            $elem.html(tvalue);
        }
    };

    /**
     * 重新渲染
     * @param type
     * @param $elem
     */
    common.renderElem = function ($elem) {
        var tagName = $elem[0].tagName.toLocaleLowerCase();
        var filter = new Date().getTime();
        $elem.parent().addClass('layui-form');
        $elem.parent().attr('lay-filter', filter);
        form.render(tagName, filter);
        return filter;
    };

    // 所有ew-event
    $('body').on('click', '*[ew-event]', function () {
        var event = $(this).attr('ew-event');
        var te = common.events[event];
        te && te.call(this, $(this));
    });

    $(window).ready(function () {
        $('[lay-dict]').each(function () {
            var $this = $(this);
            var type = $this.attr("lay-dict");
            var tip = $this.attr("placeholder") != undefined ? $this.attr("placeholder") : '请选择';
            // common.ajaxGet('/sysDict/'+value,{},function (result) {
            var selected = null;
            var OptionHtml = "";
            if (type.indexOf('{') == -1) {
                OptionHtml = "<option value=''>" + tip + "</option>";
            } else {
                type = new Function('return ' + type)();
                var isDefault = type.default == undefined ? true : false;
                if (isDefault) {
                    OptionHtml = "<option value=''>" + tip + "</option>";
                }
                selected = type.selected;
                type = type.type;
            }
            var dictData = common.getTempData("sysDict:" + type);
            if (dictData != undefined) {
                for (var i = 0; i < dictData.length; i++) {
                    var item = dictData[i];
                    if (item.status == 0) {
                        var selectedHtml = "";
                        if (item.dictValue == selected) {
                            selectedHtml = "selected='selected'";
                        }
                        OptionHtml += "<option value='" + item.dictValue + "' " + selectedHtml + " >" + item.dictName + "</option>";
                    }
                }
            }
            $this.html(OptionHtml);
        });

        $('[lay-taskDict]').each(function () {
            var $this = $(this);
            var type = $this.attr("lay-taskDict");
            var tip = $this.attr("placeholder") != undefined ? $this.attr("placeholder") : '请选择';
            var OptionHtml = "";
            if (type.indexOf('default') == -1) {
                OptionHtml = "<option value=''>" + tip + "</option>";
            } else {
                type = new Function('return ' + type)();
                var isDefault = type.default == undefined ? false : true;
                if (isDefault) {
                    OptionHtml = "<option value=''>" + tip + "</option>";
                }
                type = type.type;
            }
            var dictData = common.getTempData("workTask:" + type);
            if (dictData != undefined) {
                for (var i = 0; i < dictData.length; i++) {
                    var item = dictData[i];
                    if (item.status == 0 && item.isDict == 0) {
                        OptionHtml += "<option value='" + item.task + "'>" + item.taskName + "</option>";
                    }
                }
            }
            $this.html(OptionHtml);
        });

        $('[lay-platformtaskDict]').each(function () {
            var $this = $(this);
            var type = $this.attr("lay-platformtaskDict");
            var tip = $this.attr("placeholder") != undefined ? $this.attr("placeholder") : '请选择';
            var OptionHtml = "";
            if (type.indexOf('default') == -1) {
                OptionHtml = "<option value=''>" + tip + "</option>";
            } else {
                type = new Function('return ' + type)();
                var isDefault = type.default == undefined ? false : true;
                if (isDefault) {
                    OptionHtml = "<option value=''>" + tip + "</option>";
                }
                type = type.type;
            }
            var dictData = common.getTempData("workPlatformTask:" + type);
            if (dictData != undefined) {
                for (var i = 0; i < dictData.length; i++) {
                    var item = dictData[i];
                    if (item.status == 0 && item.isDict == 0) {
                        OptionHtml += "<option value='" + item.task + "'>" + item.taskName + "</option>";
                    }
                }
            }
            $this.html(OptionHtml);
        });

        $('[lay-taskPlanDict]').each(function () {

            var taskArray = new Array();
            var dictData = common.getTempData("workTask:0");
            // if (dictData1 != undefined && dictData1 != null && dictData1.length > 0) {
            //     dictData = dictData.concat(dictData1);
            // }
            if (dictData != undefined) {
                for (var i = 0; i < dictData.length; i++) {
                    var item = dictData[i];
                    if (item.status == 0 && item.isDict == 0) {
                        var obj = item.task + "," + item.taskName;
                        if ($.inArray(obj, taskArray) == -1) {
                            taskArray.push(obj);
                        }
                    }
                }
            }

            var $this = $(this);
            var tip = $this.attr("placeholder") != undefined ? $this.attr("placeholder") : '请选择';
            var OptionHtml = "<option value=''>" + tip + "</option>";
            for (var i = 0; i < taskArray.length; i++) {
                var objs = taskArray[i].split(",");
                OptionHtml += "<option value='" + objs[0] + "'>" + objs[1] + "</option>";
            }
            $this.html(OptionHtml);
        });

        form.render('select');
    });

    exports('common', common);
});

/**
 * 字符串替换全部
 *
 * @param s1
 * @param s2
 * @return
 */
String.prototype.replaceAll = function (s1, s2) {
    return this.replace(new RegExp(s1, "gm"), s2);
};