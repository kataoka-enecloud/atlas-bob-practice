CREATE TABLE groups (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE group_users (
    group_id BIGINT NOT NULL REFERENCES groups (id),
    user_id BIGINT NOT NULL REFERENCES users (id)
);

CREATE TABLE tasks (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    user_id BIGINT NOT NULL REFERENCES users (id)
);
