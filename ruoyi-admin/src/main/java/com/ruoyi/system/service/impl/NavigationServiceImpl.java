package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.NavigationMapper;
import com.ruoyi.system.domain.Navigation;
import com.ruoyi.system.service.INavigationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 就医指南Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-04-22
 */
@Service
public class NavigationServiceImpl implements INavigationService 
{
    @Autowired
    private NavigationMapper navigationMapper;

    /**
     * 查询就医指南
     * 
     * @param id 就医指南ID
     * @return 就医指南
     */
    @Override
    public Navigation selectNavigationById(Long id)
    {
        return navigationMapper.selectNavigationById(id);
    }

    /**
     * 查询就医指南列表
     * 
     * @param navigation 就医指南
     * @return 就医指南
     */
    @Override
    public List<Navigation> selectNavigationList(Navigation navigation)
    {
        return navigationMapper.selectNavigationList(navigation);
    }

    /**
     * 新增就医指南
     * 
     * @param navigation 就医指南
     * @return 结果
     */
    @Override
    public int insertNavigation(Navigation navigation)
    {
        return navigationMapper.insertNavigation(navigation);
    }

    /**
     * 修改就医指南
     * 
     * @param navigation 就医指南
     * @return 结果
     */
    @Override
    public int updateNavigation(Navigation navigation)
    {
        return navigationMapper.updateNavigation(navigation);
    }

    /**
     * 删除就医指南对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteNavigationByIds(String ids)
    {
        return navigationMapper.deleteNavigationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除就医指南信息
     * 
     * @param id 就医指南ID
     * @return 结果
     */
    @Override
    public int deleteNavigationById(Long id)
    {
        return navigationMapper.deleteNavigationById(id);
    }
}
