package com.zsyl.ythy.controller;

import com.zsyl.ythy.domain.Doctor;
import com.zsyl.ythy.service.DoctorService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class YthyAsController {

    private Logger logger = LoggerFactory.getLogger(YthyAsController.class);

    @Autowired
    private DoctorService doctorService;

    @RequestMapping(value="/ythy/getDoctorInfo", method = RequestMethod.GET)
    public Doctor findById(@RequestParam(value = "doctorId", required = true) String doctorId) {
        return doctorService.findDoctorById(doctorId);
    }
}
