package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.Registerrecord;

/**
 * 挂号Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-19
 */
public interface RegisterrecordMapper 
{
    /**
     * 查询挂号
     * 
     * @param id 挂号ID
     * @return 挂号
     */
    public Registerrecord selectRegisterrecordById(Long id);

    /**
     * 查询挂号列表
     * 
     * @param registerrecord 挂号
     * @return 挂号集合
     */
    public List<Registerrecord> selectRegisterrecordList(Registerrecord registerrecord);

    /**
     * 新增挂号
     * 
     * @param registerrecord 挂号
     * @return 结果
     */
    public int insertRegisterrecord(Registerrecord registerrecord);

    /**
     * 修改挂号
     * 
     * @param registerrecord 挂号
     * @return 结果
     */
    public int updateRegisterrecord(Registerrecord registerrecord);

    /**
     * 删除挂号
     * 
     * @param id 挂号ID
     * @return 结果
     */
    public int deleteRegisterrecordById(Long id);

    /**
     * 批量删除挂号
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteRegisterrecordByIds(String[] ids);
}
