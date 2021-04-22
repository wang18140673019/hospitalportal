package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Recruit;

/**
 * 招聘Mapper接口
 * 
 * @author ruoyi
 * @date 2021-04-21
 */
public interface RecruitMapper 
{
    /**
     * 查询招聘
     * 
     * @param id 招聘ID
     * @return 招聘
     */
    public Recruit selectRecruitById(Long id);

    /**
     * 查询招聘列表
     * 
     * @param recruit 招聘
     * @return 招聘集合
     */
    public List<Recruit> selectRecruitList(Recruit recruit);

    /**
     * 新增招聘
     * 
     * @param recruit 招聘
     * @return 结果
     */
    public int insertRecruit(Recruit recruit);

    /**
     * 修改招聘
     * 
     * @param recruit 招聘
     * @return 结果
     */
    public int updateRecruit(Recruit recruit);

    /**
     * 删除招聘
     * 
     * @param id 招聘ID
     * @return 结果
     */
    public int deleteRecruitById(Long id);

    /**
     * 批量删除招聘
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteRecruitByIds(String[] ids);
}
