# 별칭 Alias
# 컬럼이나 테이블명을 다른 이름으로 표현하고자 할때 사용

# 컬럼 혹은 테이블명이 길거나, 더 의미있는 이름을 부여하고 싶거나
# 다른 테이블간의 연결을 할때, 혹은 같은 테이블을 여러 번 참조할때

USE human_resource;

SELECT 업소명 AS 가게명 
FROM bbq AS 치킨사업테이블;

DROP TABLE employee;

CREATE TABLE department (
	department_name VARCHAR(100) NOT NULL UNIQUE,
    department_tel_number VARCHAR(15) NOT NULL UNIQUE,
    department_address TEXT NOT NULL,
    PRIMARY KEY (department_name)
);

CREATE TABLE employee (
	employee_number VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(10) NOT NULL,
    address TEXT NOT NULL,
    department_name VARCHAR(100),
    PRIMARY KEY (employee_number),
    FOREIGN KEY (department_name) REFERENCES department (department_name)
);





