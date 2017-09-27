-- 创建图书表
CREATE TABLE `book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `name` varchar(100) NOT NULL COMMENT '图书名称',
  `number` int(11) NOT NULL COMMENT '馆藏数量',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='图书表'

-- 初始化图书数据
INSERT INTO `book` (`book_id`, `name`, `number`)
VALUES
	(1000, 'Java程序设计', 10),
	(1001, '数据结构', 10),
	(1002, '设计模式', 10),
	(1003, '编译原理', 10)

-- 创建预约图书表
CREATE TABLE `appointment` (
  `book_id` bigint(20) NOT NULL COMMENT '图书ID',
  `student_id` bigint(20) NOT NULL COMMENT '学号',
  `appoint_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间' ,
  PRIMARY KEY (`book_id`, `student_id`),
  INDEX `idx_appoint_time` (`appoint_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约图书表'




--lv项目创建表开始

CREATE TABLE vendor(
vendor_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商家ID',
name varchar(255) COMMENT '商家名称',
address varchar(500) COMMENT '商家地址',
address_point_x FLOAT COMMENT '商家地图纬度',
address_point_y FLOAT COMMENT '商家地图经度',
logo varchar(255) COMMENT '商家logo',
sale_percapitaprice int COMMENT '商家人均消费',
sale_cookingstyle varchar(100) COMMENT '商家餐饮类型',
sell_userid int(20) COMMENT '销售userid',
addtime int COMMENT '录入时间',
business_hours VARCHAR(100) COMMENT '营业时间',
PRIMARY KEY (vendor_id)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='供应商表';

insert into vendor (name,address,address_point_x,address_point_y,logo,sale_percapitaprice,sale_cookingstyle,sell_userid,addtime,business_hours)
values('山外山','丰台大门对面100米',12.22,14.55,'a.jpg',50,'火锅,农家菜',0,1233,'周一至周五 11:00-02:00 周六,周日 10:00-02:00');
insert into vendor (name,address,address_point_x,address_point_y,logo,sale_percapitaprice,sale_cookingstyle,sell_userid,addtime,business_hours)
values('小农女','丰台大门对面150米',12.22,14.55,'a.jpg',50,'火锅,炒菜',0,1233,'周一至周五 11:00-02:00 周六,周日 10:00-02:00');
insert into vendor (name,address,address_point_x,address_point_y,logo,sale_percapitaprice,sale_cookingstyle,sell_userid,addtime,business_hours)
values('人民公社','丰台大门正对面',12.22,14.55,'a.jpg',50,'火锅,炒菜',0,1233,'周一至周五 11:00-02:00 周六,周日 10:00-02:00');

--alter table comment add column `business_hours` int comment '营业时间';
create table vendorrecommend
(
vendor_recommend_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商家推荐ID',
vendor_id bigint(20) COMMENT '商家ID',
title varchar(255) COMMENT '推荐标题',
content varchar(1000) COMMENT '推荐内容',
pic varchar(255) COMMENT '推荐照片',
addtime int,
PRIMARY KEY (vendor_recommend_id)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='商家推荐表';

create table comment
(
comment_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '点评id',
wx_openid varchar(100) COMMENT '微信用户openid',
wx_username varchar(100) COMMENT '微信用户名',
wx_headimage varchar(200) COMMENT '微信用户头像',
content varchar(2000) COMMENT '留言内容',
score int COMMENT '评分',
addtime int COMMENT '留言时间',
status int comment '状态',
vendor_id bigint(20)   COMMENT '商家ID',
PRIMARY KEY (comment_id)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='点评表';
--alter table comment add column `status` int comment '状态';
--alter table comment add column `vendor_id` int comment '商家ID';

insert into comment (wx_openid,wx_username,wx_headimage,content,score,addtime,status,vendor_id)
values('wqeqrqrqtqtqee','溪水','b.jpg','这家真的很好吃哦',5,1232,0,2);


create table adminuser
(
userid bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
login_name varchar(50) COMMENT '账号',
login_password varchar(50) COMMENT '密码',
status int comment '状态',
roleid int   COMMENT '角色id',
addtime int COMMENT '添加时间',
PRIMARY KEY (userid)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='管理员用户表';



insert into adminuser (login_name,login_password,status,roleid,addtime) values('liebian','liebian@yujian',0,1,123);


--lv项目创建表结束