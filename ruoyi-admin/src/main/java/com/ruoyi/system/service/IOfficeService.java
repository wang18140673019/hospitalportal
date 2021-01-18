package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Office;

/**
 * 科室Service接口
 * 
 * @author ruoyi
 * @date 2021-01-18
 */
public interface IOfficeService 
{
    /**
     * 查询科室
     * 
     * @param id 科室ID
     * @return 科室
     */
    public Office selectOfficeById(Long id);

    /**
     * 查询科室列表
     * 
     * @param office 科室
     * @return 科室集合
     */
    public List<Office> selectOfficeList(Office office);

    /**
     * 新增科室
     * 
     * @param office 科室
     * @return 结果
     */
    public int insertOffice(Office office);

    /**
     * 修改科室
     * 
     * @param office 科室
     * @return 结果
     */
    public int updateOffice(Office office);

    /**
     * 批量删除科室
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteOfficeByIds(String ids);

    /**
     * 删除科室信息
     * 
     * @param id 科室ID
     * @return 结果
     */
    public int deleteOfficeById(Long id);
}
