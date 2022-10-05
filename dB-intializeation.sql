-- creating datbase tables
use f22_441_deantan;
-- drop all tables in revese order of creation

drop table if exists todo_item;
drop table if exists todo;
drop table if exists status;

-- table with no foreign key first
create table status (
	id int not null auto_increment
    , description varchar (20) not null
    , PRIMARY KEY (id)
);
create table todo (
	id int not null auto_increment
    , username varchar(255) not null
    , password binary(32) not null
    ,primary key (id)
);

create table todo_item (
	id int not null auto_increment
    ,todoid int not null
    , dateCreated date default (CURRENT_DATE)
    , description varchar(255) not null
    , priority char(1)
    , dueDate date
    , statusid int
    , primary key(id)
    , foreign key (todoid) references todo(id)
    , foreign key (statusid) references status(id)
);
    
--  
-- SERT INTO status (description)
-- ues ('not-started'), ('in-progress'), ('done');

-- reformat like this
INSERT INTO status (description)
values			('not-started'),
					('in-progress'),
                    ('done'); 
                    
select * from status;
    
