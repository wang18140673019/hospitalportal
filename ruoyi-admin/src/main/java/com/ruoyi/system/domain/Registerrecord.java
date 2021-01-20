package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.Date;

/**
 * 挂号对象 registerrecord
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
public class Registerrecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String username;

    /** 性别 */
    @Excel(name = "性别")
    private String usersex;

    /** 年龄 */
    @Excel(name = "年龄")
    private String userage;

    /** 身份证 */
    @Excel(name = "身份证")
    private String useridentitycard;

    /** 医保卡 */
    @Excel(name = "医保卡")
    private String medicalcard;

    /** 看病时间 */
    @Excel(name = "看病时间")
    private String gohospitaltime;

    /** 病情描述 */
    @Excel(name = "病情描述")
    private String descriptionofillness;

    /** 医生名字 */
    @Excel(name = "医生名字")
    private String doctorname;

    /** 医生科室 */
    @Excel(name = "医生科室")
    private String doctorofficename;

    /** 医生编码 */
    @Excel(name = "医生编码")
    private String doctorcode;

    private Date createtime;

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getUsername() 
    {
        return username;
    }
    public void setUsersex(String usersex) 
    {
        this.usersex = usersex;
    }

    public String getUsersex() 
    {
        return usersex;
    }
    public void setUserage(String userage) 
    {
        this.userage = userage;
    }

    public String getUserage() 
    {
        return userage;
    }
    public void setUseridentitycard(String useridentitycard) 
    {
        this.useridentitycard = useridentitycard;
    }

    public String getUseridentitycard() 
    {
        return useridentitycard;
    }
    public void setMedicalcard(String medicalcard) 
    {
        this.medicalcard = medicalcard;
    }

    public String getMedicalcard() 
    {
        return medicalcard;
    }
    public void setGohospitaltime(String gohospitaltime) 
    {
        this.gohospitaltime = gohospitaltime;
    }

    public String getGohospitaltime() 
    {
        return gohospitaltime;
    }
    public void setDescriptionofillness(String descriptionofillness) 
    {
        this.descriptionofillness = descriptionofillness;
    }

    public String getDescriptionofillness() 
    {
        return descriptionofillness;
    }
    public void setDoctorname(String doctorname) 
    {
        this.doctorname = doctorname;
    }

    public String getDoctorname() 
    {
        return doctorname;
    }
    public void setDoctorofficename(String doctorofficename) 
    {
        this.doctorofficename = doctorofficename;
    }

    public String getDoctorofficename() 
    {
        return doctorofficename;
    }
    public void setDoctorcode(String doctorcode) 
    {
        this.doctorcode = doctorcode;
    }

    public String getDoctorcode() 
    {
        return doctorcode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("username", getUsername())
            .append("usersex", getUsersex())
            .append("userage", getUserage())
            .append("useridentitycard", getUseridentitycard())
            .append("medicalcard", getMedicalcard())
            .append("gohospitaltime", getGohospitaltime())
            .append("createtime", getCreateTime())
            .append("descriptionofillness", getDescriptionofillness())
            .append("doctorname", getDoctorname())
            .append("doctorofficename", getDoctorofficename())
            .append("doctorcode", getDoctorcode())
            .toString();
    }
}
