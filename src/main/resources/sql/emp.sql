-- 부서 테이블 제거하기
use jspdb;

DROP TABLE `emp`;
-- 사원 테이블 제거하기
DROP TABLE `dept`;
-- 급여 테이블 제거하기
DROP TABLE `salgrade`;
-- 부서 테이블 제거하기
-- DROP TABLE EMPLOYEE;
-- 사원 테이블 제거하기
-- DROP TABLE DEPARTMENT;
-- 급여 테이블 제거하기
-- DROP TABLE SALGRADE;

-- 부서 테이블 생성하기
CREATE TABLE `dept` (
	 DEPTNO NUMERIC(2),
	 DNAME  VARCHAR(14) 	NOT NULL,
	 LOC    VARCHAR(13) 	DEFAULT '서울',
	 
	 CONSTRAINT DEPT_DEPTNO_PK PRIMARY KEY (DEPTNO) 
);

-- 사원 테이블 생성하기
CREATE TABLE `emp` ( 
  	 EMPNO 	NUMERIC(4) , 			
	 ENAME 	VARCHAR(10) NOT NULL,
	 GENDER	CHAR(1),
 	 JOB   	VARCHAR(9) ,
	 MGR  		NUMERIC(4),
	 HIREDATE 	DATE,
	 SAL 		NUMERIC(7,2),
	 COMM 		NUMERIC(7,2),
	 DEPTNO 	NUMERIC(2),
	 
	 CONSTRAINT EMP_EMPNO_PK 	PRIMARY KEY (EMPNO),
	 CONSTRAINT EMP_GENDER_CK 	CHECK (GENDER IN ('M', 'F')),
	 CONSTRAINT EMP_DEPTNO_FK 	FOREIGN KEY (DEPTNO) REFERENCES dept(DEPTNO)
);

 -- 급여 테이블 생성하기
CREATE TABLE `salgrade` (
	 GRADE		NUMERIC, 
	 LOSAL		NUMERIC,
	 HISAL		NUMERIC, 
	 
	 CONSTRAINT SALGRADE_GRADE_PK PRIMARY KEY (GRADE)
);

-- 부서 테이블에 샘플 데이터 추가하기
insert into dept values(10, '경리부', '서울');
insert into dept values(20, '인사부', '인천');
insert into dept values(30, '영업부', '용인'); 
insert into dept values(40, '전산부', '수원');

-- 사원 테이블에 샘플 데이터 추가하기
insert into emp values(1001, '김사랑', 'f', '사원', 1013, '2007-03-01', 300, null, 20);
insert into emp values(1002, '한예슬', 'f', '대리', 1005, '2007-04-02', 250, 80, 	30);
insert into emp values(1003, '오지호', 'm', '과장', 1005, '2005-02-10', 500, 100, 	30);
insert into emp values(1004, '이병헌', 'm', '부장', 1008, '2003-09-02', 600, null, 	20);
insert into emp values(1005, '신동협', 'm', '과장', 1005, '2005-04-07', 450, 200,	30);
insert into emp values(1006, '장동건', 'm', '부장', 1008, '2003-10-09', 480, null,	30);
insert into emp values(1007, '이문세', 'm', '부장', 1008, '2004-01-08', 520, null, 	10);
insert into emp values(1008, '감우성', 'm', '차장', 1003, '2004-03-08', 500, 0, 		30);
insert into emp values(1009, '안성기', 'm', '사장', null, '1996-10-04',1000, null, 20);
insert into emp values(1010, '이병헌', 'm', '과장', 1003, '2005-04-07', 500, null, 	10);
insert into emp values(1011, '조향기', 'f', '사원', 1007, '2007-03-01', 280, null, 	30);
insert into emp values(1012, '강혜정', 'f', '사원', 1006, '2007-08-09', 300, null, 	20);
insert into emp values(1013, '박중훈', 'm', '부장', 1003, '2002-10-09', 560, null, 	20);
insert into emp values(1014, '조인성', 'm', '사원', 1006, '2007-11-09', 250, null, 	10);

-- 급여 테이블에 샘플 데이터 추가하기
insert into salgrade values (1, 100, 199);
insert into salgrade values (2, 200, 399);
insert into salgrade values (3, 400, 599);
insert into salgrade values (4, 600, 799);
insert into salgrade values (5, 800,9999);
COMMIT;


