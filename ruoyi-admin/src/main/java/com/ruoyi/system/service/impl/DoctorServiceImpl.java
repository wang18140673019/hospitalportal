package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.DoctorMapper;
import com.ruoyi.system.domain.Doctor;
import com.ruoyi.system.service.IDoctorService;
import com.ruoyi.common.core.text.Convert;

/**
 * 医生Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
@Service
public class DoctorServiceImpl implements IDoctorService 
{
    @Autowired
    private DoctorMapper doctorMapper;

    /**
     * 查询医生
     * 
     * @param id 医生ID
     * @return 医生
     */
    @Override
    public Doctor selectDoctorById(Long id)
    {
        return doctorMapper.selectDoctorById(id);
    }

    /**
     * 查询医生列表
     * 
     * @param doctor 医生
     * @return 医生
     */
    @Override
    public List<Doctor> selectDoctorList(Doctor doctor)
    {
        return doctorMapper.selectDoctorList(doctor);
    }

    /**
     * 新增医生
     * 
     * @param doctor 医生
     * @return 结果
     */
    @Override
    public int insertDoctor(Doctor doctor)
    {
        return doctorMapper.insertDoctor(doctor);
    }

    /**
     * 修改医生
     * 
     * @param doctor 医生
     * @return 结果
     */
    @Override
    public int updateDoctor(Doctor doctor)
    {
        return doctorMapper.updateDoctor(doctor);
    }

    /**
     * 删除医生对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteDoctorByIds(String ids)
    {
        return doctorMapper.deleteDoctorByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除医生信息
     * 
     * @param id 医生ID
     * @return 结果
     */
    @Override
    public int deleteDoctorById(Long id)
    {
        return doctorMapper.deleteDoctorById(id);
    }
}
