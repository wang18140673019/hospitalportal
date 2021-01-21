package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.News;

/**
 * 新闻Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-20
 */
public interface NewsMapper 
{
    /**
     * 查询新闻
     * 
     * @param id 新闻ID
     * @return 新闻
     */
    public News selectNewsById(Long id);

    /**
     * 查询新闻列表
     * 
     * @param news 新闻
     * @return 新闻集合
     */
    public List<News> selectNewsList(News news);

    /**
     * 新增新闻
     * 
     * @param news 新闻
     * @return 结果
     */
    public int insertNews(News news);

    /**
     * 修改新闻
     * 
     * @param news 新闻
     * @return 结果
     */
    public int updateNews(News news);

    /**
     * 删除新闻
     * 
     * @param id 新闻ID
     * @return 结果
     */
    public int deleteNewsById(Long id);

    /**
     * 批量删除新闻
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteNewsByIds(String[] ids);
}
