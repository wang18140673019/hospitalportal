package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 医生对象 doctor
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
public class Doctor extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 科室编码 */
    @Excel(name = "科室编码")
    private String officecode;

    /** 医生名字 */
    @Excel(name = "医生名字")
    private String doctorname;

    /** 医生编码 */
    @Excel(name = "医生编码")
    private String doctorcode;

    /** 是否出诊 */
    @Excel(name = "是否出诊")
    private String iswork;

    /** 医生介绍 */
    @Excel(name = "医生介绍")
    private String doctorintroduction;

    /** 医生职称 */
    @Excel(name = "医生职称")
    private String doctorprofessional;

    /** 医疗专长 */
    @Excel(name = "医疗专长")
    private String doctorspeciality;

    /** 医生照片 */
    @Excel(name = "医生照片")
    private String doctorimg;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setOfficecode(String officecode) 
    {
        this.officecode = officecode;
    }

    public String getOfficecode() 
    {
        return officecode;
    }
    public void setDoctorname(String doctorname) 
    {
        this.doctorname = doctorname;
    }

    public String getDoctorname() 
    {
        return doctorname;
    }
    public void setDoctorcode(String doctorcode) 
    {
        this.doctorcode = doctorcode;
    }

    public String getDoctorcode() 
    {
        return doctorcode;
    }
    public void setIswork(String iswork) 
    {
        this.iswork = iswork;
    }

    public String getIswork() 
    {
        return iswork;
    }
    public void setDoctorintroduction(String doctorintroduction) 
    {
        this.doctorintroduction = doctorintroduction;
    }

    public String getDoctorintroduction() 
    {
        return doctorintroduction;
    }
    public void setDoctorprofessional(String doctorprofessional) 
    {
        this.doctorprofessional = doctorprofessional;
    }

    public String getDoctorprofessional() 
    {
        return doctorprofessional;
    }
    public void setDoctorspeciality(String doctorspeciality) 
    {
        this.doctorspeciality = doctorspeciality;
    }

    public String getDoctorspeciality() 
    {
        return doctorspeciality;
    }
    public void setDoctorimg(String doctorimg) 
    {
        this.doctorimg = doctorimg;
    }

    public String getDoctorimg() 
    {
        return doctorimg;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("officecode", getOfficecode())
            .append("doctorname", getDoctorname())
            .append("doctorcode", getDoctorcode())
            .append("iswork", getIswork())
            .append("doctorintroduction", getDoctorintroduction())
            .append("doctorprofessional", getDoctorprofessional())
            .append("doctorspeciality", getDoctorspeciality())
            .append("doctorimg", getDoctorimg())
            .toString();
    }
}
