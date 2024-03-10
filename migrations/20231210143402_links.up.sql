create table if not exists links
(
    id         text not null primary key,
    target_url text not null
);
