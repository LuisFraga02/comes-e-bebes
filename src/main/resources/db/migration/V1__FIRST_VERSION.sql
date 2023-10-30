create table IF NOT EXISTS USERS (
    ID                      bigint generated by default as identity,
    USERNAME                varchar(128),
    PASSWORD                varchar(128),
    USER_TYPE_ID            number,
    ADDRESS                 varchar(128),
    REGISTRATION_DOCUMENT   varchar(64),
    UPDATED_AT              date,
    INSERTED_AT             date,
    RESTAURANT_ID           bigint,
    STATUS                  boolean
);

create table IF NOT EXISTS USER_TYPE (
    ID                          bigint generated by default as identity,
    DESCRIPTION                 varchar(32)
);

insert into USERS(ID, USERNAME, PASSWORD, USER_TYPE_ID, ADDRESS, REGISTRATION_DOCUMENT, UPDATED_AT,INSERTED_AT,RESTAURANT_ID,STATUS) values (1,'admin','c504380676f88186',2,'xxx','xx',null,null,null,true);

insert into USER_TYPE(ID, DESCRIPTION ) values (1,'Client');
insert into USER_TYPE(ID, DESCRIPTION) values (2,'Owner');
