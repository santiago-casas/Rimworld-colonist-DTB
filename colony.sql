create table colonist (
ID_colinist int(7) not null,
live_state ENUM('Alive','dead','cryogenized','gone') not null,
FK_ID_colony int(5) not null,
name varchar(20) not null,
nickname varchar(20) not null,
lastname varchar(20) not null
primary key(ID_colinist, FK_ID_colony );

create table colony(
ID_colony int(12),
nombre varchar(20)
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
FK_ID_fatherhood int(3),
crono_age int(4) not null,
bio_age int(4) not null,
sex ENUM('M','F'),
FK_ID_colonist int(7),
primary key (FK_ID_childhood, FK_ID_fatherhood)
);
create table childhood(
ID_childhood int(3) not null,
childhood varchar(15) not null,
description text,
primary key (ID_childhood)
);
create table adulthood(
ID_adulthood int(3) not null,
adulthood varchar(15) not null,
description text,
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
ID_colonist int(7),
FK_ID_caracteristicas int(4),
primary key(ID_colonist, FK_ID_caracteristicas)
);
create table type_traits(
ID_characteristics int(4) not null,
trait varchar(20) not null,
primary key (ID_characteristics)
);
create table gear (
FK_ID_colonist int(7),
FK_ID_pants int(2),
FK_ID_headgear int(2),
FK_ID_middle_layer int(2),
FK_ID_MNOL int(2),
FK_ID_waist_layer int(2)
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