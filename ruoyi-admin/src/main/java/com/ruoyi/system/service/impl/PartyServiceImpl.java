package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.PartyMapper;
import com.ruoyi.system.domain.Party;
import com.ruoyi.system.service.IPartyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 党建Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-20
 */
@Service
public class PartyServiceImpl implements IPartyService 
{
    @Autowired
    private PartyMapper partyMapper;

    /**
     * 查询党建
     * 
     * @param id 党建ID
     * @return 党建
     */
    @Override
    public Party selectPartyById(Long id)
    {
        return partyMapper.selectPartyById(id);
    }

    /**
     * 查询党建列表
     * 
     * @param party 党建
     * @return 党建
     */
    @Override
    public List<Party> selectPartyList(Party party)
    {
        return partyMapper.selectPartyList(party);
    }

    /**
     * 新增党建
     * 
     * @param party 党建
     * @return 结果
     */
    @Override
    public int insertParty(Party party)
    {
        return partyMapper.insertParty(party);
    }

    /**
     * 修改党建
     * 
     * @param party 党建
     * @return 结果
     */
    @Override
    public int updateParty(Party party)
    {
        return partyMapper.updateParty(party);
    }

    /**
     * 删除党建对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deletePartyByIds(String ids)
    {
        return partyMapper.deletePartyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除党建信息
     * 
     * @param id 党建ID
     * @return 结果
     */
    @Override
    public int deletePartyById(Long id)
    {
        return partyMapper.deletePartyById(id);
    }
}
