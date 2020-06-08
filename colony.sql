
create table colonist (
ID_colonist int(7) not null,
live_state ENUM('Alive','dead','cryogenized','gone') not null,
FK_ID_colony int(5) not null,
name varchar(20) not null,
nickname varchar(20) not null,
lastname varchar(20) not null,
primary key(ID_colonist, FK_ID_colony) 
);

create table colony(
ID_colony int(5) not null,
colony_name varchar(20) not null,
primary key (ID_colony)
);
create table colonistjobs (
FK_ID_colonist int(7) not null,
FK_ID_job int(2) not null,
primary key(FK_ID_colonist, FK_id_job)
);

create table jobs(
ID_job int(2) not null,
job varchar(15) not null,
primary key (ID_job)
);

create table C_identity (
FK_ID_childhood int(3) not null,
FK_ID_adulthood int(3),
crono_age int(4) not null,
bio_age int(4) not null,
sex ENUM('M','F') not null,
FK_ID_colonist int(7) not null,
primary key (FK_ID_childhood, FK_ID_adulthood, FK_ID_colonist)
);
create table childhood(
ID_childhood int(3) not null,
childhood varchar(15) not null,
description text not null,
primary key (ID_childhood)
);
create table adulthood(
ID_adulthood int(3),
adulthood varchar(15) not null,
description text not null,
primary key (ID_adulthood)
);
create table cObject(
FK_ID_colonist int(7) not null,
FK_ID_tool int(3) not null,
primary key (FK_ID_colonist, FK_ID_tool)
);
create table tool(
ID_tool int(3) not null,
tool varchar(20)not null,
primary key (ID_tool)
);
create table skills(
FK_ID_colonist int(7),
shooting int(2),
meele int(2),
construction int(2),
mining int(2),
cooking int(2),
plants int(2),
animals int(2),
crafting int(2),
artistic int(2),
medical int(2),
social int(2),
intellectual int(2),
primary key (FK_ID_colonist)
);

create table traits(
FK_ID_colonist int(7) not null,
FK_ID_characteristics int(4) not null,
primary key(FK_ID_colonist, FK_ID_characteristics)
);

create table type_traits(
ID_characteristics int(4) not null,
trait varchar(20) not null,
description text not null,
primary key (ID_characteristics)
);

create table gear (
FK_ID_colonist int(7),
FK_ID_pants int(2),
FK_ID_headgear int(2),
FK_ID_middle_layer int(2),
FK_ID_MNOL int(2),
FK_ID_waist_layer int(2),
PRIMARY KEY (FK_ID_colonist)
);

create table pants(
ID_pants int(2) not null,
pant varchar(20) not null,
primary key (ID_pants)
);
create table headgear(
ID_headgear int(2) not null,
headgear varchar(20) not null,
primary key (ID_headgear)
);
create table middle_layer(
ID_middle_layer int(2) not null,
middle_layer varchar(20) not null,
primary key (ID_middle_layer)
);
create table MNOL(
ID_MNOL int(2) not null,
MNOL varchar(20) not null,
primary key (ID_MNOL)
);
create table waist_layer(
ID_waist_layer int(2) not null,
waist_layer varchar(20) not null,
primary key (ID_waist_layer)
);

ALTER TABLE colonist add foreign key (FK_ID_colony) references colony (ID_colony);

ALTER TABLE c_identity ADD foreign key (FK_ID_childhood) references childhood (ID_childhood);
ALTER TABLE c_identity ADD foreign key (FK_ID_adulthood) references adulthood(ID_adulthood);
ALTER TABLE c_identity ADD foreign key (FK_ID_colonist) references colonist (ID_colonist);

ALTER TABLE skills ADD FOREIGN KEY (FK_ID_colonist) references colonist (ID_colonist);

ALTER TABLE cobject ADD FOREIGN KEY (FK_ID_tool) references tool (ID_tool);
ALTER TABLE cobject ADD FOREIGN KEY (FK_ID_colonist) references colonist(ID_colonist);

ALTER TABLE traits add FOREIGN KEY (FK_ID_colonist) references colonist(ID_colonist);

ALTER TABLE colonistjobs add foreign key (FK_ID_colonist) References colonist(ID_colonist);

ALTER TABLE gear add foreign key (FK_ID_colonist) references colonist(ID_colonist);
ALTER TABLE gear add foreign key (FK_ID_pants) references pants(ID_pants);
ALTER TABLE gear add foreign key (FK_ID_headgear) references headgear(ID_headgear);
ALTER TABLE gear add foreign key (FK_ID_MNOL) references MNOL(ID_MNOL);
ALTER TABLE gear ADD FOREIGN KEY (FK_ID_waist_layer) references waist_layer(ID_waist_layer);
ALTER TABLE gear ADD FOREIGN KEY (FK_ID_middle_layer) references middle_layer(ID_middle_layer);


ALTER TABLE  traits add foreign key (FK_ID_characteristics) references type_traits(ID_characteristics);
ALTER TABLE colonistjobs ADD FOREIGN KEY (FK_ID_job) references jobs(ID_job);
