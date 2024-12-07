create databases event;

use event;

create table table1
(
id integer aut_increment primary key,
uname varchar(100) not null,
email varchar (50) not null,
country varchar (50) not null,
password varchar(20) not null
);