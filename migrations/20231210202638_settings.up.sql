create table if not exists settings
(
    id                       text default 'DEFAULT_SETTINGS' not null primary key,
    encrypted_global_api_key text                            not null
);

insert into settings (encrypted_global_api_key)
values ('83a4df5bf338c72413cfc036554d26ee862fab9fb70105f035535c9f68eb567c');
