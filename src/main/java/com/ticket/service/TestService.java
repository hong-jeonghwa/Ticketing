package com.ticket.service;

import com.ticket.data.Test;

import java.util.List;

public interface TestService {
    List<Test> getTestData();
    void setTest(Test test);
}
