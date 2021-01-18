package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.OfficeMapper;
import com.ruoyi.system.domain.Office;
import com.ruoyi.system.service.IOfficeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 科室Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-18
 */
@Service
public class OfficeServiceImpl implements IOfficeService 
{
    @Autowired
    private OfficeMapper officeMapper;

    /**
     * 查询科室
     * 
     * @param id 科室ID
     * @return 科室
     */
    @Override
    public Office selectOfficeById(Long id)
    {
        return officeMapper.selectOfficeById(id);
    }

    /**
     * 查询科室列表
     * 
     * @param office 科室
     * @return 科室
     */
    @Override
    public List<Office> selectOfficeList(Office office)
    {
        return officeMapper.selectOfficeList(office);
    }

    /**
     * 新增科室
     * 
     * @param office 科室
     * @return 结果
     */
    @Override
    public int insertOffice(Office office)
    {
        return officeMapper.insertOffice(office);
    }

    /**
     * 修改科室
     * 
     * @param office 科室
     * @return 结果
     */
    @Override
    public int updateOffice(Office office)
    {
        return officeMapper.updateOffice(office);
    }

    /**
     * 删除科室对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteOfficeByIds(String ids)
    {
        return officeMapper.deleteOfficeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除科室信息
     * 
     * @param id 科室ID
     * @return 结果
     */
    @Override
    public int deleteOfficeById(Long id)
    {
        return officeMapper.deleteOfficeById(id);
    }
}
