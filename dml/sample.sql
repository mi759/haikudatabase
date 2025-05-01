INSERT INTO
    "user" (display_user_id, user_name, profile_text)
VALUES
    ('matsuo_basho', '松尾芭蕉', '伊賀生まれの俳諧師です。'),
    ('takarai_kikaku', '宝井其角', '蕉門十哲。洒落が得意です。');

INSERT INTO
    haiku (content, author)
VALUES
    (
        '行春や鳥啼魚の目は泪',
        (
            SELECT
                user_id
            FROM
                "user"
            WHERE
                user_id = 'matsuo_basho'
        )
    ),
    (
        'あらたうと青葉若葉の日の光',
        (
            SELECT
                user_id
            FROM
                "user"
            WHERE
                user_id = 'matsuo_basho'
        )
    ),
    (
        'なきがらを笠に隠すや枯尾花',
        (
            SELECT
                user_id
            FROM
                "user"
            WHERE
                user_id = 'takarai_kikaku'
        )
    ),
    (
        '夢に来る母をかへすか時鳥',
        (
            SELECT
                user_id
            FROM
                "user"
            WHERE
                user_id = 'takarai_kikaku'
        )
    );