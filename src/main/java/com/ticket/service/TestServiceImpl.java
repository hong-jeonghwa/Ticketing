package com.ticket.service;

import com.ticket.data.Test;
import com.ticket.repository.TestRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements TestService {

    private final static Logger LOGGER = LoggerFactory.getLogger(TestServiceImpl.class);
    @Autowired
    TestRepository testRepository;

    @Override
    public List<Test> getTestData() {
        List<Test> list = testRepository.selectTestList();
        return list;
    }

    @Override
    public void setTest(Test test) {
        testRepository.insertTest(test);
    }
}
