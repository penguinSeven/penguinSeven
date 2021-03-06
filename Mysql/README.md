# Mysql 数据库

## 常见问题

### 1. 修改权限
```mysql
-- 赋予任何主机访问数据的权限
GRANT ALL RIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION              
```
### 2. 结束符定义

- 总所周知，mysql的命令行执行每一条命令是以分号结尾的，也就是说识别是否为一条命令，是根据分号决定的。
然而存储过程中设计多条语句，很可能出现多个分号，所以直接把存储过程复制到命令号一般都会失败


- 解决方法是需要加一个分隔符，让命令行知道整个存储过程的代码是完整的一块代码,代码如下

```mysql
DELIMITER //     
CREATE PROCEDURE p_name (IN b INTEGER(12))     
begin     
 declare a INTEGER(12);     
 set a=12;     
 INSERT INTO t VALUES (a);     
 SELECT s1* a FROM t;     
End     
//    

```
- 如代码中所示，在存储过程的开头加上“DELIMITER //”,结尾加上“//”就ok了


- 执行后续的sql ，需将结束符重新定义

```mysql
DELIMITER ;
```

### 3. ORDER BY 自定义规则

> 问题描述:  
大家都知道, MySQL 中按某字段升序排列的 SQL 为 (以 id 为例, 下同):

```mysql

SELECT * FROM `MyTable` 
WHERE `id` IN (1, 7, 3, 5) 
ORDER BY `id` ASC

```

降序排列的 SQL 为:

```mysql
SELECT * FROM `MyTable` 
WHERE `id` IN (1, 7, 3, 5) 
ORDER BY `id` DESC
```
有时以上排序并不能满足我们的需求. 例如, 我们想要按 id 以 5, 3, 7, 1 的顺序排列, 该如何实现. 这也是很多国内外同行经常遇到的问题之一.

下面我们给出按表中某字段, 以我们想要的列表方式排序的解决方案.
解决方案用"按字段排序" (ORDER BY FIELD).语法:

```mysql
  SELECT * FROM MyTable 
  ORDER BY FIELD(`id`, 5, 3, 7, 1)
```
要注意的是, FIELD 后面是没有空格的.
因此, 完整的 SQL 为:

```mysql
SELECT * FROM `MyTable` 
WHERE `id` IN (1, 7, 3, 5) 
ORDER BY FIELD(`id`, 5, 3, 7, 1)
```
常见应用:

```mysql
SELECT * FROM `MyTable` 
WHERE `name` IN ('张三', '李四', '王五', '孙六') 
ORDER BY FIELD(`name`, '李四', '孙六', '张三', '王五')
```

### 4.查询字段和注释

```mysql
  select COLUMN_NAME,column_comment 
  from INFORMATION_SCHEMA.Columns 
  where table_name='表名' and table_schema='数据库'
  
```

### 5.查询表结构

```mysql

SELECT a.table_name,b.TABLE_COMMENT,a.COLUMN_NAME,a.COLUMN_TYPE,a.COLUMN_COMMENT 
FROM information_schema.COLUMNS a 
JOIN information_schema.TABLES b ON a.table_schema = b.table_schema AND a.table_name = b.table_name
WHERE a.table_name = 'question';

```

### 6.时间转换

```mysql

UNIX_TIMESTAMP('2017-04-21 08:30:00') - FLOOR(RAND()*100*3600*24);

date_format();

```

### 7. 根据日期查数据

> 来源地址： https://www.cnblogs.com/inkyi/p/5382868.html

user_event ：用户事件表

create_time ：表中存储时间的字段


```mysql

#获取当月数据
SELECT * FROM user_event WHERE DATE_FORMAT(create_time,'%Y-%m') = DATE_FORMAT(NOW(),'%Y-%m');  
#获取3月份数据
SELECT * FROM user_event WHERE DATE_FORMAT(create_time,'%Y-%m') = DATE_FORMAT('2016-03-01','%Y-%m');  

#获取三月份数据
SELECT * FROM user_event WHERE YEAR(create_time)='2016' AND MONTH(create_time)='3';  

#获取本周数据
SELECT * FROM user_event WHERE YEARWEEK(DATE_FORMAT(create_time,'%Y-%m-%d')) = YEARWEEK(NOW());   

#查询上周的数据 
SELECT * FROM user_event WHERE YEARWEEK(DATE_FORMAT(create_time,'%Y-%m-%d')) = YEARWEEK(NOW())-1;   

#查询距离当前现在6个月的数据 
SELECT * FROM user_event WHERE create_time BETWEEN DATE_SUB(NOW(),interval 6 month) and NOW();  

#查询上个月的数据 
SELECT * FROM user_event WHERE DATE_FORMAT(create_time,'%Y-%m')=DATE_FORMAT(DATE_SUB(CURDATE(), INTERVAL 1 MONTH),'%Y-%m');  


#查询今天的信息记录：
SELECT * FROM user_event WHERE TO_DAYS(`create_time`) = TO_DAYS(NOW());  

#查询昨天的信息记录：
SELECT * FROM user_event WHERE TO_DAYS(now()) - TO_DAYS(create_time) <= 1;  

#查询近7天的信息记录：
SELECT * FROM user_event WHERE DATE_SUB(curdate(), INTERVAL 7 DAY) <= DATE(create_time);  

#查询近30天的信息记录：
SELECT * FROM user_event WHERE DATE_SUB(curdate(), INTERVAL 30 DAY) <= DATE(create_time);  

#查询上一月的信息记录：
SELECT * FROM user_event WHERE PERIOD_DIFF(DATE_FORMAT(NOW(), '%Y%m'), DATE_FORMAT(create_time, '%Y%m')) =1;   
```