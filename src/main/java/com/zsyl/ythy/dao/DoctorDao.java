package com.zsyl.ythy.dao;

import com.zsyl.ythy.domain.Doctor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface DoctorDao {

    /**
     *
     * @param id
     * @return
     */
    Doctor findById(@Param("id") String id);
}
