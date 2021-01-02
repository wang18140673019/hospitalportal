function SetHome(obj) {   
        try {   
  var url = window.location.href; //获取当前url地址
  obj.style.behavior = 'url(#default#homepage)';   
  obj.setHomePage(url);   
        } catch (e) {   
  if (window.netscape) {   
      try {   
netscape.security.PrivilegeManager   
        .enablePrivilege("UniversalXPConnect");   
      } catch (e) {   
alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");   
      }   
      var prefs = Components.classes['@mozilla.org/preferences-service;1']   
    .getService(Components.interfaces.nsIPrefBranch);   
      prefs.setCharPref('browser.startup.homepage', vrl);   
  }   
        }   
}
function addFavorite()
{
    var url = window.location.href; 
    var title = document.title; 
    try {
        window.external.addFavorite(url, title);
    } catch (e) {
        try {
  window.sidebar.addPanel(title, url, "");
        } catch (e) {
  alert("加入收藏失败,请手动添加.");
        }
    }
}
document.writeln("<div class=\"top4 fr\"><ul class=\"top5\">");
document.writeln("<li><a href=\"http://e.weibo.com/u/3561505435\" target=\"_blank\" class=\"black12\">官方微博</a></li>");
document.writeln("</ul><p class=\"blank10\"></p><p><form id=\"productSearch\" method=\"post\" action=\"/List/News\" name=\"productSearch\">");
document.writeln("<input type=\"text\" title=\"输入您想找的关键字或词...\" name=\"key\" class=\"top6\">");
document.writeln("<a href=\"#\" onclick=\"if(productSearch.key.value==''){alert('请输入关键字!');}");
document.writeln("else {productSearch.submit();}\" ><img src=\"/front/images/3.jpg\"></a></form></p>");
document.writeln("</div>");
