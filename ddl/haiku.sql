CREATE TABLE haiku (
    haiku_id SERIAL NOT NULL,
    content TEXT NOT NULL,
    created_by INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (haiku_id),
    FOREIGN KEY (created_by) REFERENCES "user" (user_id)
);