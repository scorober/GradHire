-- SQL Script for GradHire DB
-- Phase II
-- Eviatar Goldschmidt, Scott Robertson, Sam Stone

-- SCHOOLS Table Definition and state 
CREATE TABLE SCHOOLS 
(
  ID 		INTEGER 	NOT NULL AUTO_INCREMENT,	-- Auto_increment if not specified
  SchName 	VARCHAR(32) NOT NULL,
  RANKING 	INTEGER 	NOT NULL,					-- State Rank
  PRIMARY KEY (ID) 
);
/*							ID	NAME								RNK	*/
INSERT INTO SCHOOLS VALUES(110,	'University of Washington T',		1	);
INSERT INTO SCHOOLS VALUES(111,	'University of Washington S',		2	);
INSERT INTO SCHOOLS VALUES(115,	'Western Washington University',	3	);			-- AUTO_INCREMENT
INSERT INTO SCHOOLS VALUES(134,	'Seattle University',				5	);
INSERT INTO SCHOOLS VALUES(123,	'University of Puget Sound',		6	);
INSERT INTO SCHOOLS VALUES(125,	'Saint Martin\'s University',		9	);


-- STUDENTS Table Definition and State
CREATE TABLE STUDENTS (
  ID 		INTEGER 	NOT NULL AUTO_INCREMENT,	-- Auto_increment if not specified
  SchoolID 	INTEGER 	NOT NULL,
  StuName 	VARCHAR(32) NOT NULL,
  GradDate	DATE		NOT NULL,					-- Formatt YYYY-MM-DD
  PastExp 	INTEGER 	NOT NULL DEFAULT 0,			-- # of years
  PRIMARY KEY(ID),
  FOREIGN KEY (SchoolID) REFERENCES SCHOOLS (ID)
);
/*							ID		SID		NAME				GradDate	exp	*/
INSERT INTO STUDENTS VALUES(1135,	110,	'John Smith', 		2019-06-12,		);
INSERT INTO STUDENTS VALUES(1452,	110,	'Mary McDonald', 	2020-03-27,	1	);
INSERT INTO STUDENTS VALUES(		115,	'David Brock', 		2019-07-10		);
INSERT INTO STUDENTS VALUES(1004,	111,	'Anna Johnson', 	2019-12-19		);
INSERT INTO STUDENTS VALUES(1034,	111,	'Lizz Kim', 		2020-06-12,	1	);
INSERT INTO STUDENTS VALUES(1113,	134,	'Daniel Martin', 	2018-12-18,	2	);
INSERT INTO STUDENTS VALUES(		110,	'Matthew Chang', 	2019-06-15,	1	);
INSERT INTO STUDENTS VALUES(1322,	123,	'Megan Harper', 	2021-06-10		);
INSERT INTO STUDENTS VALUES(1232,	125,	'Clair Jacobson', 	2020-07-5,	1	);
INSERT INTO STUDENTS VALUES(1531,	125,	'Donald Bailey', 	2019-07-9		);


-- COMPANY Table Definition and State
CREATE TABLE COMPANY (
  ID 	INTEGER 	NOT NULL AUTO_INCREMENT,		-- Auto_increment if not specified
  CName VARCHAR(32) NOT NULL,
  PRIMARY KEY(ID) 
);
/*							ID	NAME		*/
INSERT INTO COMPANY VALUES(102,	'AMAZON'	);
INSERT INTO COMPANY VALUES(103,	'INFOBLOX'	);
INSERT INTO COMPANY VALUES(210,	'MICROSOFT'	);
INSERT INTO COMPANY VALUES(043,	'APPLE'		);
INSERT INTO COMPANY VALUES(019,	'IBM'		);
INSERT INTO COMPANY VALUES(134,	'T-MOBILE'	);


-- JOBS Table Definition and State
CREATE TABLE JOBS (
  ID 			INTEGER 	NOT NULL AUTO_INCREMENT,-- Auto_increment if not specified
  CID 			INTEGER 	NOT NULL,
  JName 		VARCHAR(32) NOT NULL,		
  AppDueDate 	DATE	NOT NULL,					-- Format YYYY-MM-DD
  StartDate		DATE	NOT NULL,					-- Format YYYY-MM-DD
  PastExp 		INTEGER 	NOT NULL,
  Pay	 		REAL 	NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (CID) REFERENCES COMPANY (ID) 
);
/*						ID		CID		Job Name					AppDueDate	StartDate	exp	pay		*/
INSERT INTO JOBS VALUES(145,	102,	'AWS Data Analyst',	2018-12-22,	2019-07-20,	2,	110000	);
INSERT INTO JOBS VALUES(156,	102,	'Software Developer',		2019-05-01,	2019-08-04,	1,	 80000	);
INSERT INTO JOBS VALUES(176,	103,	'Product Tester', 			2019-03-20,	2019-07-15,	0,	 70000	);
INSERT INTO JOBS VALUES(382,	043,	'ISA Engineer', 			2019-06-12,	2019-08-15,	1,	100000	);
INSERT INTO JOBS VALUES(324,	043,	'Software Delevolper', 		2019-06-12,	2019-07-27,	0,	 90000	);
INSERT INTO JOBS VALUES(427,	019,	'Watson AI Engineer', 		2019-04-10,	2019-07-16,	2,	130000	);
INSERT INTO JOBS VALUES(521,	134,	'Software Engineer', 		2018-12-19,	2019-04-22,	0,	 90000	);
INSERT INTO JOBS VALUES(510,	134,	'Network Engineer', 		2019-04-19,	2019-06-28,	1,	105000	);


-- INTERNSHIPS Table Definition and State
CREATE TABLE INTERNSHIPS(
  ID			INTEGER		NOT NULL AUTO_INCREMENT,-- Auto_increment if not specified
  CID			INTEGER 	NOT NULL,
  JobTitle		VARCHAR(32) NOT NULL,
  AppDueDate	DATE		NOT NULL,
  IntLength		INTEGER 	NOT NULL,				-- Number of Months
  StartDate		DATE 		NOT NULL,
  PastExp 		INTEGER 	NOT NULL,
  Pay 			REAL 		NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (CID) REFERENCES COMPANY (ID) 
);
/*								ID	CID		JobTitle					AppDueDate	L	StartDate	exp	pay	*/
INSERT INTO INTERNSHIPS VALUES(112,	103,	'Software Developer',		2018-12-22,	3,	2019-07-20,	0,	15000);
INSERT INTO INTERNSHIPS VALUES(134,	103,	'System Tester',			2018-12-22,	3,	2019-07-27,	1,	18000);
INSERT INTO INTERNSHIPS VALUES(		019,	'Software Developer',		2019-01-15,	4,	2019-07-15,	1,	17000);
INSERT INTO INTERNSHIPS VALUES(011,	134,	'User Experiance Designer',	2019-01-22,	3,	2019-07-11,	0,	14000);
INSERT INTO INTERNSHIPS VALUES(034,	210,	'Software Developer',		2019-01-12,	3,	2019-07-20,	0,	15000);
-- INSERT INTO INTERNSHIPS VALUES();
-- INSERT INTO INTERNSHIPS VALUES();
