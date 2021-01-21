package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.Party;

/**
 * 党建Service接口
 * 
 * @author ruoyi
 * @date 2021-01-20
 */
public interface IPartyService 
{
    /**
     * 查询党建
     * 
     * @param id 党建ID
     * @return 党建
     */
    public Party selectPartyById(Long id);

    /**
     * 查询党建列表
     * 
     * @param party 党建
     * @return 党建集合
     */
    public List<Party> selectPartyList(Party party);

    /**
     * 新增党建
     * 
     * @param party 党建
     * @return 结果
     */
    public int insertParty(Party party);

    /**
     * 修改党建
     * 
     * @param party 党建
     * @return 结果
     */
    public int updateParty(Party party);

    /**
     * 批量删除党建
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deletePartyByIds(String ids);

    /**
     * 删除党建信息
     * 
     * @param id 党建ID
     * @return 结果
     */
    public int deletePartyById(Long id);
}
