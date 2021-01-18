package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 科室对象 office
 * 
 * @author ruoyi
 * @date 2021-01-18
 */
public class Office extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 科室名字 */
    @Excel(name = "科室名字")
    private String officename;

    /** 医生数量 */
    @Excel(name = "医生数量")
    private String doctornum;

    /** 科室编码 */
    @Excel(name = "科室编码")
    private String officecode;

    /** 科室介绍 */
    @Excel(name = "科室介绍")
    private String introduction;

    /** 是否启用 */
    @Excel(name = "是否启用")
    private String flag;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOfficename(String officename) 
    {
        this.officename = officename;
    }

    public String getOfficename() 
    {
        return officename;
    }
    public void setDoctornum(String doctornum) 
    {
        this.doctornum = doctornum;
    }

    public String getDoctornum() 
    {
        return doctornum;
    }
    public void setOfficecode(String officecode) 
    {
        this.officecode = officecode;
    }

    public String getOfficecode() 
    {
        return officecode;
    }
    public void setIntroduction(String introduction) 
    {
        this.introduction = introduction;
    }

    public String getIntroduction() 
    {
        return introduction;
    }
    public void setFlag(String flag) 
    {
        this.flag = flag;
    }

    public String getFlag() 
    {
        return flag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("officename", getOfficename())
            .append("doctornum", getDoctornum())
            .append("officecode", getOfficecode())
            .append("introduction", getIntroduction())
            .append("flag", getFlag())
            .toString();
    }
}
