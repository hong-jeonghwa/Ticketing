package com.ticket.repository;

import com.ticket.data.Test;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class TestRepositoryImpl implements TestRepository {

    @Autowired
    SqlSession sqlSession;

    @Override
    public List<Test> selectTestList() {
        List<Test> list = new ArrayList<>();
        return sqlSession.selectList("mapper.selectTestData");
    }

    @Override
    public void insertTest(Test test) {
        sqlSession.selectOne("mapper.insertTest", test);
    }
}
