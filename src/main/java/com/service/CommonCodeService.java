package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.CommonCodeMapper;
import com.vo.CommonCode;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service
public class CommonCodeService extends EgovAbstractServiceImpl {

    @Resource
    CommonCodeMapper commonCodeMapper;

    public void insert(CommonCode vo) {
        commonCodeMapper.insert(vo);
    }

    public List<CommonCode> page() {
        return commonCodeMapper.page();
    }
}