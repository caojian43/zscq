DROP TABLE IF EXISTS brand_service;
DROP TABLE IF EXISTS case;
DROP TABLE IF EXISTS home;
DROP TABLE IF EXISTS news;
DROP TABLE IF EXISTS patent_service;
DROP TABLE IF EXISTS team_member;
DROP TABLE IF EXISTS law_service;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS authorities;

CREATE TABLE brand_service (
  Id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(200) DEFAULT NULL,
  type varchar(50) DEFAULT NULL,
  number varchar(100) DEFAULT NULL,
  istransfer varchar(1) DEFAULT NULL,
  transferresult varchar(50) DEFAULT NULL,
  isalter varchar(1) DEFAULT NULL,
  ispostregister varchar(1) DEFAULT NULL,
  postregisterresult varchar(50) DEFAULT NULL,
  alterresult varchar(50) DEFAULT NULL,
  is_permission varchar(1) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE case (
  Id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) DEFAULT NULL,
  pic blob,
  handle_date datetime DEFAULT NULL,
  content varchar(1000) DEFAULT NULL,
  status int(1) default 0,
  is_display int(1) default 0,
  client varchar(50) default null,
  PRIMARY KEY (Id)
);

CREATE TABLE home (
  Id int(11) NOT NULL AUTO_INCREMENT,
  content varchar(200) DEFAULT NULL,
  srcpic varchar(100) DEFAULT NULL,
  title varchar(50) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE news (
  Id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(100) DEFAULT NULL,
  author varchar(50) DEFAULT NULL,
  time datetime DEFAULT NULL,
  hits int(11) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE patent_service (
  Id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(200) DEFAULT NULL,
  type varchar(50) DEFAULT NULL,
  number varchar(100) DEFAULT NULL,
  firstinstance varchar(50) DEFAULT NULL,
  secondinstance varchar(50) DEFAULT NULL,
  result varchar(50) DEFAULT NULL,
  fee int(11) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE team_member (
  Id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(20) DEFAULT NULL,
  resume varchar(500) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  rank int(2) DEFAULT NULL,
  workage int(2) DEFAULT 0,
  photo blob,
  PRIMARY KEY (Id)
);

CREATE TABLE law_service (
  Id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(50) DEFAULT NULL,
  content varchar(500) DEFAULT NULL,
  updatetime datetime DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE users (
  Id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  enabled varchar(1) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE authorities (
  Id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) DEFAULT NULL,
  authority varchar(50) DEFAULT NULL,
  PRIMARY KEY (Id)
);

