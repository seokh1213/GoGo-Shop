create table auth
(
    id        bigint auto_increment
        primary key,
    create_dt datetime(6) not null,
    email     varchar(255) not null,
    provider  varchar(255) not null,
    uid       varchar(255) not null,
    update_dt datetime(6) not null,
    constraint UK_cqw9pwi9ha15dml8t11va7x8q
        unique (uid),
    constraint UK_frir1w2v8n1df8jgri5mox179
        unique (email)
);

create table user
(
    id        bigint auto_increment
        primary key,
    create_dt datetime(6) not null,
    email     varchar(255) not null,
    nickname  varchar(255) not null,
    type      varchar(255) not null,
    uid       varchar(255) not null,
    update_dt datetime(6) not null,
    constraint UK_a7hlm8sj8kmijx6ucp7wfyt31
        unique (uid),
    constraint UK_nicknameUnique19djck90011
        unique (nickname),
    constraint UK_ob8kqyqqgmefl0aco34akdtpe
        unique (email)
);

create table banner
(
    id               bigint auto_increment
        primary key,
    activated        bit          not null,
    banner_image_url varchar(255) not null,
    create_dt        datetime(6) not null,
    event_id         varchar(255) not null,
    update_dt        datetime(6) not null,
    seller_id        bigint       not null,
    constraint FKv3toloqygfhkv8xnqqtew5nk
        foreign key (seller_id) references user (id)
);

create table image_file
(
    id            bigint auto_increment
        primary key,
    create_dt     datetime(6) not null,
    extension     varchar(255)  not null,
    name          varchar(255)  not null,
    original_name varchar(255)  not null,
    path          varchar(255)  not null,
    update_dt     datetime(6) not null,
    url           varchar(1000) not null
);

create table image_url
(
    id        bigint auto_increment
        primary key,
    create_dt datetime(6) not null,
    update_dt datetime(6) not null,
    url       varchar(1000) not null
);

create table layout
(
    id                bigint auto_increment
        primary key,
    create_dt         datetime(6) not null,
    description       varchar(255) null,
    layout_type       varchar(255) not null,
    is_ranking_layout bit          not null default 0,
    title             varchar(255) not null,
    update_dt         datetime(6) not null
);

create table product
(
    id                  bigint auto_increment
        primary key,
    create_dt           datetime(6) not null,
    description         varchar(2000) null,
    discount_rate       smallint     not null,
    name                varchar(255) not null,
    price               bigint       not null,
    update_dt           datetime(6) not null,
    detail_image_url_id bigint       not null,
    seller_id           bigint       not null,
    constraint UK_bvtji5ef9lnvrjm83mmdimxyp
        unique (detail_image_url_id),
    constraint FKmsvavr0t3lra70gf2ymxdi5te
        foreign key (seller_id) references user (id),
    constraint FKnkq37doh1hheb0buio76u6w9n
        foreign key (detail_image_url_id) references image_url (id)
);


create table layout_product_list
(
    layout_id       bigint not null,
    product_list_id bigint not null,
    constraint UK_12l1biklmhj6y75gwfwowkdn8
        unique (product_list_id),
    constraint FK12yqlnxbl5ri1cmepd2pqldnv
        foreign key (product_list_id) references product (id),
    constraint FKavet4s3rtonadg5mj189ier1k
        foreign key (layout_id) references layout (id)
);

create table order_history
(
    id        bigint auto_increment
        primary key,
    purchase_user_name         varchar(255) not null,
    purchase_user_phone_number varchar(255) not null,
    purchase_user_email        varchar(255) not null,
    receiver_name              varchar(255) not null,
    receiver_phone_number      varchar(255) not null,
    postal_code                varchar(255) not null,
    destination_address        varchar(255) not null,
    destination_detail_address varchar(255) not null,
    memo                       varchar(255) null,
    create_dt datetime(6) not null,
    update_dt datetime(6) not null,
    user_id   bigint not null,
    constraint FKp03guo9hm9uf9k0n4a1sam969
        foreign key (user_id) references user (id)
);

create table order_history_product_list
(
    order_history_id bigint not null,
    product_list_id  bigint not null,
    constraint UK_s70e7raa6gxu0csdxg061pmw2
        unique (product_list_id),
    constraint FK2qshrxxiwuuhbmsfhexcrwbkk
        foreign key (order_history_id) references order_history (id),
    constraint FKgsgveaskkleqdhphua1c4f4nv
        foreign key (product_list_id) references product (id)
);

create table product_image_url_list
(
    product_id        bigint not null,
    image_url_list_id bigint not null,
    constraint UK_7qyhu673ubb1o1a7stl5mgv8o
        unique (image_url_list_id),
    constraint FKf6vdhitmb5i31d800r0ccs8wv
        foreign key (product_id) references product (id),
    constraint FKpa4aygva0yr6uqciv84tyenum
        foreign key (image_url_list_id) references image_url (id)
);

create table product_option
(
    id           bigint auto_increment
        primary key,
    create_dt    datetime(6) not null,
    option_list  varchar(255) not null comment ',로 나눠져 있는 option. ex: Black,White,Red',
    option_title varchar(255) not null,
    order_value  int          not null,
    update_dt    datetime(6) not null
);

create table product_product_option
(
    product_id        bigint not null,
    product_option_id bigint not null,
    constraint UK_pq3k7xx2nax3mel8u0capp9l8
        unique (product_option_id),
    constraint FKnvvre15qvsj840486pc2g3xrr
        foreign key (product_id) references product (id),
    constraint FKskh2cqmxty0do6lcwiln531n5
        foreign key (product_option_id) references product_option (id)
);

create table view
(
    id        bigint auto_increment
        primary key,
    create_dt datetime(6) not null,
    hidden    bit          not null,
    update_dt datetime(6) not null,
    view_type varchar(255) not null
);

create table view_banner_list
(
    view_id        bigint not null,
    banner_list_id bigint not null,
    constraint UK_r030r2xp7ngveqe2pqq090o9m
        unique (banner_list_id),
    constraint FK97dnqfoik4sp5t3vkodikrnyd
        foreign key (banner_list_id) references banner (id),
    constraint FK9lkcwj2modqmgj0n0vniaymf1
        foreign key (view_id) references view (id)
);

create table view_layout_list
(
    view_id        bigint not null,
    layout_list_id bigint not null,
    constraint UK_1gxful1ac6r2qx0gkkn5552su
        unique (layout_list_id),
    constraint FKb8dj1p9plforkpckl5w20ev5b
        foreign key (layout_list_id) references layout (id),
    constraint FKcllrsi38k4cwvqe62l1o148os
        foreign key (view_id) references view (id)
);