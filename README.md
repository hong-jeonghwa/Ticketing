# Ticketing

* `servlet-context`: view에 관련된 설정.
* `root-context`: DB연결 및 어노테이션 설정. dataSource를 sqlSessionFactory에서 참조하고 sqlSessionFactory를 sqlSession으로 불러올 수 있도록 함. 
* `repository`: @Repository 어노테이션선언. Sqlsession을 Autowired해서 DB접근.
* `service`: @Service 어노테이션 선언. Repository를 통해 데이터를 가져와서 가공.
* `web.xml`: root-context.xml, servlet-context.xml의 위치 설정 
