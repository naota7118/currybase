\connect currybase_development;

INSERT INTO categories (category_id, category_name) VALUES (1, 'インドカレー');
INSERT INTO categories (category_id, category_name) VALUES (2, '欧風カレー');
INSERT INTO categories (category_id, category_name) VALUES (3, 'タイカレー');
INSERT INTO categories (category_id, category_name) VALUES (4, '日本のカレー');
INSERT INTO categories (category_id, category_name) VALUES (5, 'エスニックカレー');

INSERT INTO spicinesses (spiciness_id, spiciness_name, spiciness_price) VALUES (1,'甘口', 0);
INSERT INTO spicinesses (spiciness_id, spiciness_name, spiciness_price) VALUES (2,'普通', 25);
INSERT INTO spicinesses (spiciness_id, spiciness_name, spiciness_price) VALUES (3,'辛口', 50);
INSERT INTO spicinesses (spiciness_id, spiciness_name, spiciness_price) VALUES (4,'激辛', 100);

INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (1, 150, -90);
INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (2, 200, -60);
INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (3, 250, -30);
INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (4, 300, 0);
INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (5, 350, 65);
INSERT INTO ricesizes (ricesize_id, ricesize_name, ricesize_price) VALUES (6, 400, 130);

INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (1, 'バターチキンカレー', 646, 1);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (2, 'マサラカレー', 646, 1);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (3, 'ビーフカレー', 794, 2);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (4, 'ポークカレー', 896, 2);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (5, 'グリーンカレー', 934, 3);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (6, 'レッドカレー', 951, 3);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (7, 'カツカレー', 976, 4);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (8, 'メンチカツカレー', 982, 4);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (9, 'スリランカカレー', 972, 5);
INSERT INTO curries (curry_id, curry_name, price, category_id) VALUES (10, 'ネパールカレー', 826, 5);