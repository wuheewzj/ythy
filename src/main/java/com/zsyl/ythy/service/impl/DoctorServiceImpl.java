package com.zsyl.ythy.service.impl;

import com.zsyl.ythy.dao.DoctorDao;
import com.zsyl.ythy.domain.Doctor;
import com.zsyl.ythy.service.DoctorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DoctorServiceImpl implements DoctorService {

    @Resource
    private DoctorDao doctorDao;

    private Logger logger = LoggerFactory.getLogger(DoctorServiceImpl.class);

    @Override
    public Doctor findDoctorById(String id) {
        return doctorDao.findById(id);
    }

}
