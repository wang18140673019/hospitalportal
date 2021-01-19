package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RegisterrecordMapper;
import com.ruoyi.system.domain.Registerrecord;
import com.ruoyi.system.service.IRegisterrecordService;
import com.ruoyi.common.core.text.Convert;

/**
 * 挂号Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
@Service
public class RegisterrecordServiceImpl implements IRegisterrecordService 
{
    @Autowired
    private RegisterrecordMapper registerrecordMapper;

    /**
     * 查询挂号
     * 
     * @param id 挂号ID
     * @return 挂号
     */
    @Override
    public Registerrecord selectRegisterrecordById(Long id)
    {
        return registerrecordMapper.selectRegisterrecordById(id);
    }

    /**
     * 查询挂号列表
     * 
     * @param registerrecord 挂号
     * @return 挂号
     */
    @Override
    public List<Registerrecord> selectRegisterrecordList(Registerrecord registerrecord)
    {
        return registerrecordMapper.selectRegisterrecordList(registerrecord);
    }

    /**
     * 新增挂号
     * 
     * @param registerrecord 挂号
     * @return 结果
     */
    @Override
    public int insertRegisterrecord(Registerrecord registerrecord)
    {
        return registerrecordMapper.insertRegisterrecord(registerrecord);
    }

    /**
     * 修改挂号
     * 
     * @param registerrecord 挂号
     * @return 结果
     */
    @Override
    public int updateRegisterrecord(Registerrecord registerrecord)
    {
        return registerrecordMapper.updateRegisterrecord(registerrecord);
    }

    /**
     * 删除挂号对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteRegisterrecordByIds(String ids)
    {
        return registerrecordMapper.deleteRegisterrecordByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除挂号信息
     * 
     * @param id 挂号ID
     * @return 结果
     */
    @Override
    public int deleteRegisterrecordById(Long id)
    {
        return registerrecordMapper.deleteRegisterrecordById(id);
    }
}
