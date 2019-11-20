package com.ticket.repository;

import com.ticket.data.Test;

import java.util.List;

public interface TestRepository {
    List<Test> selectTestList();
    void insertTest(Test test);
}
