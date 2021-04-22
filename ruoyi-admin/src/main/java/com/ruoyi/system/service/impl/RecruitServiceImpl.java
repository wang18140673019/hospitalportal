package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RecruitMapper;
import com.ruoyi.system.domain.Recruit;
import com.ruoyi.system.service.IRecruitService;
import com.ruoyi.common.core.text.Convert;

/**
 * 招聘Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-04-21
 */
@Service
public class RecruitServiceImpl implements IRecruitService 
{
    @Autowired
    private RecruitMapper recruitMapper;

    /**
     * 查询招聘
     * 
     * @param id 招聘ID
     * @return 招聘
     */
    @Override
    public Recruit selectRecruitById(Long id)
    {
        return recruitMapper.selectRecruitById(id);
    }

    /**
     * 查询招聘列表
     * 
     * @param recruit 招聘
     * @return 招聘
     */
    @Override
    public List<Recruit> selectRecruitList(Recruit recruit)
    {
        return recruitMapper.selectRecruitList(recruit);
    }

    /**
     * 新增招聘
     * 
     * @param recruit 招聘
     * @return 结果
     */
    @Override
    public int insertRecruit(Recruit recruit)
    {
        return recruitMapper.insertRecruit(recruit);
    }

    /**
     * 修改招聘
     * 
     * @param recruit 招聘
     * @return 结果
     */
    @Override
    public int updateRecruit(Recruit recruit)
    {
        return recruitMapper.updateRecruit(recruit);
    }

    /**
     * 删除招聘对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteRecruitByIds(String ids)
    {
        return recruitMapper.deleteRecruitByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除招聘信息
     * 
     * @param id 招聘ID
     * @return 结果
     */
    @Override
    public int deleteRecruitById(Long id)
    {
        return recruitMapper.deleteRecruitById(id);
    }
}
