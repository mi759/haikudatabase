CREATE TABLE "user" (
    user_id SERIAL NOT NULL,
    display_user_id VARCHAR(20) NOT NULL UNIQUE,
    user_name TEXT NOT NULL,
    profile_text TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
);
