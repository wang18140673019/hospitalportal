package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Navigation;

/**
 * 就医指南Service接口
 * 
 * @author ruoyi
 * @date 2021-04-22
 */
public interface INavigationService 
{
    /**
     * 查询就医指南
     * 
     * @param id 就医指南ID
     * @return 就医指南
     */
    public Navigation selectNavigationById(Long id);

    /**
     * 查询就医指南列表
     * 
     * @param navigation 就医指南
     * @return 就医指南集合
     */
    public List<Navigation> selectNavigationList(Navigation navigation);

    /**
     * 新增就医指南
     * 
     * @param navigation 就医指南
     * @return 结果
     */
    public int insertNavigation(Navigation navigation);

    /**
     * 修改就医指南
     * 
     * @param navigation 就医指南
     * @return 结果
     */
    public int updateNavigation(Navigation navigation);

    /**
     * 批量删除就医指南
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNavigationByIds(String ids);

    /**
     * 删除就医指南信息
     * 
     * @param id 就医指南ID
     * @return 结果
     */
    public int deleteNavigationById(Long id);
}
