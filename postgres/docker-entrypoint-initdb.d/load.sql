\connect currybase_development;

INSERT INTO categories (id, name, created_at, updated_at) VALUES (1, 'インドカレー', '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO categories (id, name, created_at, updated_at) VALUES (2, '欧風カレー', '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO categories (id, name, created_at, updated_at) VALUES (3, 'タイカレー', '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO categories (id, name, created_at, updated_at) VALUES (4, '日本のカレー', '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO categories (id, name, created_at, updated_at) VALUES (5, 'エスニックカレー', '2024-12-21 00:00:00', '2024-12-21 00:00:00');

INSERT INTO spicenesses (id, name, price, created_at, updated_at) VALUES (1, '甘口', 0, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO spicenesses (id, name, price, created_at, updated_at) VALUES (2, '普通', 25, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO spicenesses (id, name, price, created_at, updated_at) VALUES (3, '辛口', 50, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO spicenesses (id, name, price, created_at, updated_at) VALUES (4, '激辛', 100, '2024-12-21 00:00:00', '2024-12-21 00:00:00');

INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (1, 150, -90, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (2, 200, -60, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (3, 250, -30, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (4, 300, 0, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (5, 350, 65, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO ricesizes (id, name, price, created_at, updated_at) VALUES (6, 400, 130, '2024-12-21 00:00:00', '2024-12-21 00:00:00');

INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (1, 'バターチキンカレー', 646, 1, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (2, 'マサラカレー', 646, 1, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (3, 'ビーフカレー', 794, 2, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (4, 'ポークカレー', 896, 2, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (5, 'グリーンカレー', 934, 3, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (6, 'レッドカレー', 951, 3, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (7, 'カツカレー', 976, 4, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (8, 'メンチカツカレー', 982, 4, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (9, 'スリランカカレー', 972, 5, '2024-12-21 00:00:00', '2024-12-21 00:00:00');
INSERT INTO curries (id, name, price, category_id, created_at, updated_at) VALUES (10, 'ネパールカレー', 826, 5, '2024-12-21 00:00:00', '2024-12-21 00:00:00');