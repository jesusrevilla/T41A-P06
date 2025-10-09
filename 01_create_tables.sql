-- 1) Crear la tabla con los tipos exactos que piden los tests
CREATE TABLE data_types_demo (
    id              SERIAL PRIMARY KEY,                 -- integer auto-increment
    name            VARCHAR(150) NOT NULL,              -- character varying NOT NULL
    description     TEXT,                               -- text
    price           NUMERIC(10,2),                      -- numeric
    discount        REAL,                               -- real (float4)
    available       BOOLEAN NOT NULL DEFAULT TRUE,      -- boolean DEFAULT TRUE
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),   -- timestamp without time zone
    launch_date     DATE,                               -- date
    uuid_col        UUID,                               -- uuid
    ip_address      INET,                               -- inet
    mac_address     MACADDR,                            -- macaddr
    tags            TEXT[],                             -- ARRAY (text[])
    metadata        JSONB,                              -- jsonb
    coordinates     POINT,                              -- point
    file_data       BYTEA                               -- bytea
);
