create sequence <%= tableName %>_seq start with 1 increment by 50;

create table <%= tableName %> (
    <%_ if (databaseType != 'mariadb') { _%>
    id bigint DEFAULT nextval('<%= tableName %>_seq') not null,
    <%_ } _%>
    <%_ if (databaseType === 'mariadb') { _%>
    id bigint DEFAULT nextval(`<%= tableName %>_seq`) not null,
    <%_ } _%>
    text varchar(1024) not null,
    primary key (id)
);
