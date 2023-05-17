create table user(
user_id	int	primary key,
name varchar(15) not null,
email varchar(15) not null,
password varchar(15) not null
);

create table project(
project_id	int	primary key,
name varchar(15) not null,
description	varchar(15) not null,
status varchar(15)	not null
);
create table Tasks(
task_id	int	primary key,
Project_id int,
constraint fk_pid foreign key(Project_id) references project(project_id),
name varchar(14) not null,
description	varchar(60) ,
status varchar(15) not null,
assigned int	
);

create table comments(
comment_id	int	primary key,
Task_id	int,
constraint fk_tid foreign key(Task_id) references Tasks(task_id),
User_id	int,
constraint fk_uid foreign key(Userid) references User(user_id),
comment	varchar(15) not null,
created_dt	date not null
);


