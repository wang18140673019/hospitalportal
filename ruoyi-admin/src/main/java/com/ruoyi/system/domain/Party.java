package com.ruoyi.system.domain;

import java.sql.Date;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 党建对象 party
 * 
 * @author ruoyi
 * @date 2021-01-20
 */
public class Party extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 栏目 */
    @Excel(name = "栏目")
    private String theme;

    /** 主题 */
    @Excel(name = "主题")
    private String title;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** url */
    @Excel(name = "url")
    private String imgurl;

    /** 发布时间 */
    @Excel(name = "发布时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date publishtime;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTheme(String theme) 
    {
        this.theme = theme;
    }

    public String getTheme() 
    {
        return theme;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setImgurl(String imgurl) 
    {
        this.imgurl = imgurl;
    }

    public String getImgurl() 
    {
        return imgurl;
    }
    public void setPublishtime(Date publishtime) 
    {
        this.publishtime = publishtime;
    }

    public Date getPublishtime() 
    {
        return publishtime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("theme", getTheme())
            .append("title", getTitle())
            .append("content", getContent())
            .append("imgurl", getImgurl())
            .append("publishtime", getPublishtime())
            .toString();
    }
}
