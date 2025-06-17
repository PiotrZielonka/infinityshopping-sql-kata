-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE USERS  ------------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    login VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(60) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(254) UNIQUE,
    image_url VARCHAR(256),
    activated BOOLEAN NOT NULL DEFAULT FALSE,
    lang_key VARCHAR(10),
    activation_key VARCHAR(20),
    reset_key VARCHAR(20),
    reset_date TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP
);

INSERT INTO users (login, password_hash, first_name, last_name, email, image_url, activated, lang_key, activation_key, reset_key, reset_date, last_modified_by, last_modified_date) 
VALUES
    ('user1', 'hashedpassword1', 'John', 'Doe', 'john.doe@example.com', 'http://example.com/john.jpg', TRUE, 'en', NULL, NULL, NULL, 'admin', NOW()),
    ('user2', 'hashedpassword2', 'Jane', 'Smith', 'jane.smith@example.com', 'http://example.com/jane.jpg', TRUE, 'fr', NULL, NULL, NULL, 'admin', NOW()),
    ('user3', 'hashedpassword3', 'Alice', 'Johnson', 'alice.johnson@example.com', NULL, FALSE, 'es', NULL, NULL, NULL, 'admin', NOW()),
    ('user4', 'hashedpassword4', 'Bob', 'Brown', 'bob.brown@example.com', NULL, TRUE, 'de', NULL, NULL, NULL, 'admin', NOW()),
    ('user5', 'hashedpassword5', 'Charlie', 'Davis', 'charlie.davis@example.com', 'http://example.com/charlie.jpg', FALSE, 'it', NULL, NULL, NULL, 'admin', NOW()),
    ('user6', 'hashedpassword6', 'Emily', 'White', 'emily.white@example.com', 'http://example.com/emily.jpg', TRUE, 'nl', NULL, NULL, NULL, 'admin', NOW()),
    ('user7', 'hashedpassword7', 'Daniel', 'Harris', 'daniel.harris@example.com', NULL, FALSE, 'sv', NULL, NULL, NULL, 'admin', NOW()),
    ('user8', 'hashedpassword8', 'Olivia', 'Moore', 'olivia.moore@example.com', NULL, TRUE, 'no', NULL, NULL, NULL, 'admin', NOW()),
    ('user9', 'hashedpassword9', 'Michael', 'Wilson', 'michael.wilson@example.com', 'http://example.com/michael.jpg', FALSE, 'pt', NULL, NULL, NULL, 'admin', NOW()),
    ('user10', 'hashedpassword10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', NULL, TRUE, 'pl', NULL, NULL, NULL, 'admin', NOW());
    ('user11', 'hashedpassword11', 'Emily', 'Nowak', 'emily.nowak@example.com', NULL, TRUE, 'pl', NULL, NULL, NULL, 'user', NOW());   

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE PRODUCT  ----------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE product (
    id BIGINT PRIMARY KEY,
    product_category_enum VARCHAR(255) NOT NULL,
    name VARCHAR(5000) NOT NULL,
    quantity DECIMAL(21,2) NOT NULL,
    price_net DECIMAL(21,2) NOT NULL,
    vat DECIMAL(21,2) NOT NULL,
    price_gross DECIMAL(21,2),
    stock DECIMAL(21,2) NOT NULL,
    description TEXT NOT NULL,
    create_time TIMESTAMP,
    update_time TIMESTAMP,
    image BYTEA NOT NULL,
    image_content_type VARCHAR(255) NOT NULL
);

INSERT INTO product (id, product_category_enum, name, quantity, price_net, vat, price_gross, stock, description, create_time, update_time, image, image_content_type) 
VALUES
    (1, 'Probiotics', 'Probiotic Supplement A', 100, 20.00, 5.00, 25.00, 500, 'A high-quality probiotic supplement.', NOW(), NOW(), '\x', 'image/png'),
    (2, 'Collagen', 'Collagen Booster B', 150, 30.00, 6.00, 36.00, 400, 'Premium collagen booster for skin health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (3, 'Vitamins', 'Vitamin C 1000mg', 200, 10.00, 2.00, 12.00, 300, 'Boosts immunity with high-dose Vitamin C.', NOW(), NOW(), '\x', 'image/png'),
    (4, 'Minerals', 'Magnesium Complex', 120, 15.00, 3.00, 18.00, 350, 'Essential magnesium for muscle relaxation.', NOW(), NOW(), '\x', 'image/jpeg'),
    (5, 'Aloes', 'Aloe Vera Extract', 180, 25.00, 5.00, 30.00, 450, 'Pure Aloe Vera for digestive and skin health.', NOW(), NOW(), '\x', 'image/png'),
    (6, 'Probiotics', 'Daily Gut Health Probiotic', 90, 22.50, 4.50, 27.00, 480, 'Supports digestive and immune health with probiotics.', NOW(), NOW(), '\x', 'image/jpeg'),
    (7, 'Collagen', 'Marine Collagen Peptides', 130, 35.00, 7.00, 42.00, 420, 'High-quality marine collagen for joint and skin support.', NOW(), NOW(), '\x', 'image/png'),
    (8, 'Vitamins', 'Vitamin D3 5000 IU', 160, 12.00, 2.40, 14.40, 310, 'Essential vitamin D3 for bone and immune health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (9, 'Minerals', 'Zinc Immune Boost', 140, 18.00, 3.60, 21.60, 290, 'Zinc supplement for immune and skin health.', NOW(), NOW(), '\x', 'image/png'),
    (10, 'Aloes', 'Aloe Vera Juice', 200, 28.00, 5.60, 33.60, 500, 'Organic aloe vera juice for digestive wellness.', NOW(), NOW(), '\x', 'image/jpeg'),
    (11, 'Probiotics', 'Gut Restore Probiotic', 105, 23.50, 4.70, 28.20, 470, 'A potent probiotic blend for digestive balance.', NOW(), NOW(), '\x', 'image/png'),
    (12, 'Collagen', 'Collagen Ultra Blend', 140, 39.00, 7.80, 46.80, 410, 'A premium collagen formula for skin and joint health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (13, 'Vitamins', 'Super B-Complex', 175, 21.00, 4.20, 25.20, 360, 'Complete B-vitamin support for energy and metabolism.', NOW(), NOW(), '\x', 'image/png'),
    (14, 'Minerals', 'Iron & Vitamin C Formula', 145, 16.00, 3.20, 19.20, 5, 'Enhanced iron absorption with added vitamin C.', NOW(), NOW(), '\x', 'image/jpeg'),
    (15, 'Aloes', 'Aloe Vera Facial Mist', 200, 27.00, 5.40, 32.40, 490, 'Refreshing aloe mist for skin hydration.', NOW(), NOW(), '\x', 'image/png'),
    (16, 'Probiotics', 'Daily Wellness Probiotic', 115, 22.00, 4.40, 26.40, 460, 'A daily probiotic formula for gut and immune health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (17, 'Collagen', 'Collagen Youth Booster', 135, 41.00, 8.20, 49.20, 390, 'Supports youthful skin and strong hair.', NOW(), NOW(), '\x', 'image/png'),
    (18, 'Vitamins', 'High-Potency Vitamin C', 185, 15.00, 3.00, 18.00, 340, 'Antioxidant support for a strong immune system.', NOW(), NOW(), '\x', 'image/jpeg'),
    (19, 'Minerals', 'Zinc & Selenium Defense', 155, 19.50, 3.90, 23.40, 320, 'A powerful mineral blend for immune protection.', NOW(), NOW(), '\x', 'image/png'),
    (20, 'Aloes', 'Aloe & Coconut Hair Mask', 210, 29.50, 5.90, 35.40, 480, 'Deep conditioning with aloe and coconut oil.', NOW(), NOW(), '\x', 'image/jpeg'),    
    (21, 'Probiotics', 'Gut Balance Probiotic', 110, 23.00, 4.60, 27.60, 470, 'Supports healthy gut flora and digestion.', NOW(), NOW(), '\x', 'image/png'),
    (22, 'Collagen', 'Hydrolyzed Collagen Powder', 140, 38.00, 7.60, 45.60, 400, 'Enhances skin elasticity and joint strength.', NOW(), NOW(), '\x', 'image/jpeg'),
    (23, 'Vitamins', 'Omega-3 Fish Oil', 190, 25.00, 5.00, 30.00, 350, 'Supports heart and brain health.', NOW(), NOW(), '\x', 'image/png'),
    (24, 'Minerals', 'Potassium Plus', 160, 18.50, 3.70, 22.20, 320, 'Essential for muscle function and hydration.', NOW(), NOW(), '\x', 'image/jpeg'),
    (25, 'Aloes', 'Aloe Hydration Serum', 200, 30.00, 6.00, 36.00, 500, 'Soothes and hydrates skin.', NOW(), NOW(), '\x', 'image/png'),
    (26, 'Probiotics', 'Complete Probiotic Formula', 150, 29.00, 5.80, 34.80, 440, 'A powerful blend of probiotics for gut health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (27, 'Collagen', 'Collagen Beauty Blend', 130, 42.00, 8.40, 50.40, 380, 'Supports youthful skin and hair growth.', NOW(), NOW(), '\x', 'image/png'),
    (28, 'Vitamins', 'Vitamin B12 Energy Drops', 180, 14.00, 2.80, 16.80, 310, 'Boosts energy levels and cognitive function.', NOW(), NOW(), '\x', 'image/jpeg'),
    (29, 'Minerals', 'Selenium Antioxidant Support', 170, 20.00, 4.00, 24.00, 330, 'Essential for immune and thyroid health.', NOW(), NOW(), '\x', 'image/png'),
    (30, 'Aloes', 'Aloe Vera Healing Cream', 210, 24.00, 4.80, 28.80, 480, 'Deeply nourishes and heals damaged skin.', NOW(), NOW(), '\x', 'image/jpeg'),
    (31, 'Probiotics', 'Advanced Gut Flora Probiotic', 95, 24.50, 4.90, 29.40, 460, 'A premium blend of probiotics for optimal gut health.', NOW(), NOW(), '\x', 'image/png'),
    (32, 'Collagen', 'Collagen Revitalizing Serum', 120, 45.00, 9.00, 54.00, 390, 'A potent collagen serum for skin regeneration.', NOW(), NOW(), '\x', 'image/jpeg'),
    (33, 'Vitamins', 'Multivitamin Complex', 180, 20.00, 4.00, 24.00, 350, 'A comprehensive multivitamin for overall wellness.', NOW(), NOW(), '\x', 'image/png'),
    (34, 'Minerals', 'Iron Plus Supplement', 130, 15.50, 3.10, 18.60, 330, 'Iron supplement for healthy red blood cells.', NOW(), NOW(), '\x', 'image/jpeg'),
    (35, 'Aloes', 'Aloe Vera Soothing Gel', 220, 22.00, 4.40, 26.40, 500, 'Cooling and soothing aloe vera gel for skin care.', NOW(), NOW(), '\x', 'image/png'),
    (36, 'Probiotics', 'Immune Boost Probiotic', 100, 26.00, 5.20, 31.20, 450, 'Probiotic formula designed to strengthen immunity.', NOW(), NOW(), '\x', 'image/jpeg'),
    (37, 'Collagen', 'Collagen Peptide Drink', 140, 40.00, 8.00, 48.00, 420, 'A refreshing collagen-infused beverage.', NOW(), NOW(), '\x', 'image/png'),
    (38, 'Vitamins', 'Vitamin E Antioxidant Capsules', 160, 18.00, 3.60, 21.60, 320, 'Essential antioxidant support for skin and heart.', NOW(), NOW(), '\x', 'image/jpeg'),
    (39, 'Minerals', 'Calcium & Magnesium Balance', 175, 22.50, 4.50, 27.00, 340, 'Supports bone and muscle health.', NOW(), NOW(), '\x', 'image/png'),
    (40, 'Aloes', 'Aloe Detox Juice', 190, 28.00, 5.60, 33.60, 490, 'Detoxifying and nourishing aloe vera juice.', NOW(), NOW(), '\x', 'image/jpeg'),
    (41, 'Probiotics', 'Daily Digest Probiotic', 110, 21.00, 4.20, 25.20, 470, 'A daily probiotic blend for gut balance.', NOW(), NOW(), '\x', 'image/png'),
    (42, 'Collagen', 'Collagen Infused Skincare', 125, 38.50, 7.70, 46.20, 400, 'A luxurious collagen skincare formulation.', NOW(), NOW(), '\x', 'image/jpeg'),
    (43, 'Vitamins', 'B-Complex Energy Booster', 170, 19.50, 3.90, 23.40, 360, 'B vitamins for energy and stress support.', NOW(), NOW(), '\x', 'image/png'),
    (44, 'Minerals', 'Electrolyte Hydration Mix', 150, 16.50, 3.30, 19.80, 310, 'Hydration support with essential electrolytes.', NOW(), NOW(), '\x', 'image/jpeg'),
    (45, 'Aloes', 'Aloe Radiance Moisturizer', 200, 26.50, 5.30, 31.80, 480, 'A nourishing moisturizer infused with aloe vera.', NOW(), NOW(), '\x', 'image/png'),
    (46, 'Probiotics', 'Kids Probiotic Chewables', 90, 18.00, 3.60, 21.60, 450, 'A tasty probiotic supplement for children.', NOW(), NOW(), '\x', 'image/jpeg'),
    (47, 'Collagen', 'Collagen + Hyaluronic Acid', 135, 44.00, 8.80, 52.80, 390, 'Collagen supplement with added hydration benefits.', NOW(), NOW(), '\x', 'image/png'),
    (48, 'Vitamins', 'Vitamin K2 + D3', 160, 24.00, 4.80, 28.80, 340, 'Essential for calcium absorption and bone health.', NOW(), NOW(), '\x', 'image/jpeg'),
    (49, 'Minerals', 'Chromium Sugar Balance', 145, 17.50, 3.50, 21.00, 320, 'Supports healthy blood sugar levels.', NOW(), NOW(), '\x', 'image/png'),
    (50, 'Aloes', 'Aloe Vera Hair Serum', 210, 29.00, 5.80, 34.80, 470, 'Aloe-infused serum for healthy, shiny hair.', NOW(), NOW(), '\x', 'image/jpeg'),
    (51, 'Minerals', 'Iron Formula', 100, 16.00, 3.20, 19.20, 330, 'A powerful iron absorption', NOW(), NOW(), '\x', 'image/jpeg');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE CART  -------------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 CREATE TABLE cart (
    id BIGINT PRIMARY KEY,
    amount_of_cart_net DECIMAL(21,2) NOT NULL,
    amount_of_cart_gross DECIMAL(21,2) NOT NULL,
    amount_of_shipment_net DECIMAL(21,2) NOT NULL,
    amount_of_shipment_gross DECIMAL(21,2) NOT NULL,
    amount_of_order_net DECIMAL(21,2) NOT NULL,
    amount_of_order_gross DECIMAL(21,2) NOT NULL,
    user_id BIGINT UNIQUE
);

-- Added one-to-one relationship one user can have only one cart
ALTER TABLE cart
ADD CONSTRAINT fk_cart__user_id
FOREIGN KEY (user_id)
REFERENCES users(id);

ALTER TABLE cart
ADD CONSTRAINT unique_user_id UNIQUE (user_id);

INSERT INTO cart (id, amount_of_cart_net, amount_of_cart_gross, amount_of_shipment_net, amount_of_shipment_gross, amount_of_order_net, amount_of_order_gross, user_id) 
VALUES
    (1, 100.00, 123.00, 10.00, 12.30, 110.00, 135.30, 1),
    (2, 150.50, 185.10, 15.00, 18.50, 165.50, 203.60, 2),
    (3, 200.00, 246.00, 20.00, 24.60, 220.00, 270.60, 3),
    (4, 75.75, 93.01, 8.00, 9.80, 83.75, 102.81, 4),
    (5, 125.25, 153.31, 12.50, 15.33, 137.75, 168.64, 5),
    (6, 90.90, 111.00, 9.00, 11.10, 99.90, 122.10, 6),
    (7, 180.00, 221.40, 18.00, 22.14, 198.00, 243.54, 7),
    (8, 130.30, 160.66, 13.00, 16.06, 143.30, 176.72, 8),
    (9, 210.10, 258.12, 21.00, 25.81, 231.10, 283.93, 9),
    (10, 95.95, 118.12, 9.50, 11.81, 105.45, 129.93, 10);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE PRODUCT_IN_CART  --------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE product_in_cart (
    id BIGINT PRIMARY KEY,
    category VARCHAR(255),
    name VARCHAR(255),
    quantity DECIMAL(21,2),
    price_net DECIMAL(21,2),
    vat DECIMAL(21,2),
    price_gross DECIMAL(21,2),
    total_price_net DECIMAL(21,2),
    total_price_gross DECIMAL(21,2),
    stock DECIMAL(21,2),
    description TEXT,
    image BYTEA,
    image_content_type VARCHAR(255),
    product_id BIGINT,
    cart_id BIGINT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (cart_id) REFERENCES cart(id)
);

DO $$ 
DECLARE 
    i INT;
    cart_id  INT;
	rand_cart INT;
	rand_quaintity INT;
    product_id INT;
BEGIN
    FOR i IN 1..100 LOOP
        -- Cycle through product IDs 1 to 50
        product_id := (i - 1) % 50 + 1; -- This will cycle through 1, 2, ..., 50
		rand_quaintity := (floor(random() * 15) + 1)::INT; -- Generates random number between 1 and 15        
        rand_cart := (floor(random() * 9) + 1)::INT; -- Generates random number between 1 and 9

		IF i <= 9 THEN
            cart_id := i;  -- Every cart has one product_in_cart at least except of cart 10
        ELSE
			-- If is certain that each cart from 1 to 9 has one product_in_cart at least, we can generate a random number between 1 and 9 for i > 9
            cart_id := rand_cart;
        END IF;
        
        INSERT INTO product_in_cart (
            id,
			category, 
            name, 
            quantity, 
            price_net, 
            vat, 
            price_gross, 
            total_price_net, 
            total_price_gross, 
            stock, 
            description, 
            image, 
            image_content_type, 
            product_id, 
            cart_id
        )
        SELECT
            (i),
			p.product_category_enum,
            p.name, 
            rand_quaintity AS quantity, 
            p.price_net, 
            p.vat, 
            p.price_net * (1 + p.vat / 100) AS price_gross, -- Correct formula for price_gross
            rand_quaintity * p.price_net AS total_price_net, -- Correct formula for total_price_net
            rand_quaintity * p.price_net * (1 + p.vat / 100) AS total_price_gross, -- Correct formula for total_price_gross
            p.stock, 
            p.description, 
            p.image, 
            p.image_content_type, 
            p.id AS product_id, 
            cart_id
        FROM product p
        WHERE p.id = product_id;
        
        IF NOT FOUND THEN
            RAISE NOTICE 'No product found for id %', product_id;
        END IF;
    END LOOP;
END $$;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE SHIPMENT_CART  ----------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE shipment_cart (
    id BIGINT PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    street VARCHAR(500) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(500) NOT NULL,
    country VARCHAR(500) NOT NULL,
    phone_to_the_receiver VARCHAR(30) NOT NULL,
    firm VARCHAR(10000), 
    tax_number VARCHAR(50), 
    cart_id BIGINT UNIQUE 
);

-- Added one-to-one relationship one cart can have only one shipment_cart
ALTER TABLE shipment_cart
ADD CONSTRAINT fk_shipment_cart__cart_id
FOREIGN KEY (cart_id) REFERENCES cart(id);

INSERT INTO shipment_cart (id, first_name, last_name, street, postal_code, city, country, phone_to_the_receiver, firm, tax_number, cart_id)
VALUES
    (1, 'John', 'Doe', '123 Main St', '10001', 'New York', 'USA', '123-456-7890', 'Doe Corp', 'US123456789', 1),
    (2, 'Jane', 'Smith', '456 Elm St', '75000', 'Paris', 'France', '33-1-23-45-67-89', NULL, NULL, 2),
    (3, 'Alice', 'Johnson', '789 Oak St', '28001', 'Madrid', 'Spain', '34-91-123-4567', 'Johnson Enterprises', 'ES987654321', 3),
    (4, 'Bob', 'Brown', '101 Pine St', '10115', 'Berlin', 'Germany', '49-30-987-6543', NULL, NULL, 4),
    (5, 'Charlie', 'Davis', '', '', '', '', '', '', '', 5),
    (6, 'Emily', 'White', '303 Cedar St', '1012 AB', 'Amsterdam', 'Netherlands', '31-20-123-4567', NULL, NULL, 6),
    (7, 'Daniel', 'Harris', '', '', '', '', '', '', '', 7),
    (8, 'Olivia', 'Moore', '505 Walnut St', '0350', 'Oslo', 'Norway', '47-22-123-456', NULL, NULL, 8),
    (9, 'Michael', 'Wilson', '606 Aspen St', '1200', 'Lisbon', 'Portugal', '351-21-987-654', 'Wilson Group', 'PT123098456', 9),
    (10, 'Sophia', 'Taylor', '707 Redwood St', '00-950', 'Warsaw', 'Poland', '48-22-876-543', NULL, NULL, 10);   

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------   PAYMENT   --------------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------    

CREATE TABLE payment (
    id BIGINT PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,
    price_net DECIMAL(21,2) NOT NULL,
    vat DECIMAL(21,2) NOT NULL,
    price_gross DECIMAL(21,2),
    payment_status VARCHAR(255) NOT NULL,
    create_time TIMESTAMP NULL,
    update_time TIMESTAMP NULL
);

INSERT INTO payment (id, name, price_net, vat, price_gross, payment_status, create_time, update_time) 
VALUES
    (1, 'Bank Transfer', 5.00, 23.00, 6.15, 'WaitingForBankTransfer', NOW(), NOW()),
    (2, 'Card', 5.00, 23.00, 6.15, 'WaitingForCardTransfer', NOW(), NOW()),
    (3, 'PayPal', 5.00, 23.00, 6.15, 'WaitingForPayPal', NOW(), NOW()),
    (4, 'Cash on Delivery', 6.00, 23.00, 7.38, 'PreparationForShipping', NOW(), NOW());

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE PAYMENT_CART  -----------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE payment_cart (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price_net DECIMAL(21,2) NOT NULL,
    vat DECIMAL(21,2) NOT NULL,
    price_gross DECIMAL(21,2) NOT NULL,
    payment_status VARCHAR(255) NOT NULL,
    cart_id BIGINT UNIQUE  -- Nullable but must be unique
);

-- Added one-to-one relationship one cart can have only one payment_cart
ALTER TABLE payment_cart
ADD CONSTRAINT fk_payment_cart__cart_id
FOREIGN KEY (cart_id)
REFERENCES cart(id);

INSERT INTO payment_cart (id, name, price_net, vat, price_gross, payment_status, cart_id)
VALUES
(1, 'Bank Transfer', 5.00, 23.00, 6.15, 'WaitingForBankTransfer', 1), 
(2, 'Card', 5.00, 23.00, 6.15, 'WaitingForCardTransfer', 2), 
(3, 'PayPal', 5.00, 23.00, 6.15, 'WaitingForPayPal', 3), 
(4, 'Cash on Delivery', 6.00, 23.00, 7.38, 'PreparationForShipping', 4),
(6, 'Card', 5.00, 23.00, 6.15, 'WaitingForCardTransfer', 6), 
(7, 'PayPal', 5.00, 23.00, 6.15, 'WaitingForPayPal', 7), 
(8, 'Cash on Delivery', 6.00, 23.00, 7.38, 'PreparationForShipping', 8); 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE ORDER_MAIN  -------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE order_main (
    id BIGINT PRIMARY KEY,
    buyer_login VARCHAR(255),
    buyer_first_name VARCHAR(255),
    buyer_last_name VARCHAR(255),
    buyer_email VARCHAR(255),
    buyer_phone VARCHAR(255),
    amount_of_cart_net DECIMAL(21,2),
    amount_of_cart_gross DECIMAL(21,2),
    amount_of_shipment_net DECIMAL(21,2),
    amount_of_shipment_gross DECIMAL(21,2),
    amount_of_order_net DECIMAL(21,2),
    amount_of_order_gross DECIMAL(21,2),
    order_main_status VARCHAR(255),
    create_time TIMESTAMP NULL,
    update_time TIMESTAMP NULL
);

INSERT INTO order_main (id, buyer_login, buyer_first_name, buyer_last_name, buyer_email, buyer_phone, 
                        amount_of_cart_net, amount_of_cart_gross, 
                        amount_of_shipment_net, amount_of_shipment_gross, 
                        amount_of_order_net, amount_of_order_gross, 
                        order_main_status, create_time, update_time)
VALUES
    (1, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     100.00, 123.00, 10.00, 12.30, 110.00, 135.30, 'WaitingForBankTransfer', NOW() - INTERVAL '50 days', NOW()),

    (2, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     250.00, 307.50, 15.00, 18.45, 265.00, 325.95, 'PreparationForShipping', NOW() - INTERVAL '49 days', NOW()),

    (3, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     75.00, 92.25, 5.00, 6.15, 80.00, 98.40, 'Sent', NOW() - INTERVAL '48 days', NOW()),

    (4, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     300.00, 369.00, 20.00, 24.60, 320.00, 393.60, 'Delivered', NOW() - INTERVAL '47 days', NOW()),

    (5, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     120.00, 147.60, 10.00, 12.30, 130.00, 159.90, 'Canceled', NOW() - INTERVAL '46 days', NOW()),

    (6, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+123456789', 
     180.00, 221.40, 12.00, 14.76, 192.00, 236.16, 'WaitingForBankTransfer', NOW() - INTERVAL '45 days', NOW()),

    (7, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     110.00, 135.30, 10.00, 12.30, 120.00, 147.60, 'PreparationForShipping', NOW() - INTERVAL '44 days', NOW()),

    (8, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     275.00, 338.25, 18.00, 22.14, 293.00, 360.39, 'Sent', NOW() - INTERVAL '43 days', NOW()),

    (9, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     60.00, 73.80, 8.00, 9.84, 68.00, 83.64, 'Delivered', NOW() - INTERVAL '42 days', NOW()),

    (10, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     340.00, 418.20, 25.00, 30.75, 365.00, 448.95, 'Canceled', NOW() - INTERVAL '41 days', NOW()),

    (11, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     195.00, 239.85, 15.00, 18.45, 210.00, 258.30, 'WaitingForBankTransfer', NOW() - INTERVAL '40 days', NOW()),

    (12, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     125.00, 153.75, 10.00, 12.30, 135.00, 166.05, 'PreparationForShipping', NOW() - INTERVAL '39 days', NOW()),

    (13, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     280.00, 344.40, 22.00, 27.06, 302.00, 371.46, 'Sent', NOW() - INTERVAL '38 days', NOW()),

    (14, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     85.00, 104.55, 6.00, 7.38, 91.00, 111.93, 'Delivered', NOW() - INTERVAL '37 days', NOW()),

    (15, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     300.00, 369.00, 18.00, 22.14, 318.00, 391.14, 'Canceled', NOW() - INTERVAL '36 days', NOW()),

    (16, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     145.00, 178.35, 12.00, 14.76, 157.00, 193.11, 'WaitingForBankTransfer', NOW() - INTERVAL '35 days', NOW()),

    (17, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     260.00, 319.80, 20.00, 24.60, 280.00, 344.40, 'PreparationForShipping', NOW() - INTERVAL '34 days', NOW()),

    (18, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     95.00, 116.85, 9.00, 11.07, 104.00, 127.92, 'Sent', NOW() - INTERVAL '33 days', NOW()),

    (19, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     215.00, 264.45, 17.00, 20.91, 232.00, 285.36, 'Delivered', NOW() - INTERVAL '32 days', NOW()),

    (20, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     185.00, 227.55, 13.00, 15.99, 198.00, 243.54, 'Canceled', NOW() - INTERVAL '31 days', NOW()),

    (21, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     110.00, 135.30, 8.00, 9.84, 118.00, 145.14, 'WaitingForBankTransfer', NOW() - INTERVAL '30 days', NOW()),

    (22, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     140.00, 172.20, 11.00, 13.53, 151.00, 185.73, 'PreparationForShipping', NOW() - INTERVAL '29 days', NOW()),

    (23, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     165.00, 202.95, 13.00, 15.99, 178.00, 218.94, 'Sent', NOW() - INTERVAL '28 days', NOW()),

    (24, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     120.00, 147.60, 9.00, 11.07, 129.00, 158.67, 'Delivered', NOW() - INTERVAL '27 days', NOW()),

    (25, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     210.00, 258.30, 15.00, 18.45, 225.00, 276.75, 'Canceled', NOW() - INTERVAL '26 days', NOW()),

    (26, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     135.00, 166.95, 10.00, 12.30, 145.00, 179.25, 'WaitingForBankTransfer', NOW() - INTERVAL '25 days', NOW()),

    (27, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     250.00, 307.50, 18.00, 22.14, 268.00, 329.64, 'PreparationForShipping', NOW() - INTERVAL '24 days', NOW()),

    (28, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     100.00, 123.00, 7.00, 8.61, 107.00, 131.61, 'Sent', NOW() - INTERVAL '23 days', NOW()),

    (29, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     230.00, 282.90, 16.00, 19.68, 246.00, 302.58, 'Delivered', NOW() - INTERVAL '22 days', NOW()),

    (30, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 12.00, 14.76, 187.00, 230.01, 'Canceled', NOW() - INTERVAL '21 days', NOW()),

    (31, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     160.00, 196.80, 12.00, 14.76, 172.00, 211.56, 'WaitingForBankTransfer', NOW() - INTERVAL '20 days', NOW()),

    (32, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     145.00, 178.35, 11.00, 13.53, 156.00, 191.88, 'PreparationForShipping', NOW() - INTERVAL '19 days', NOW()),

    (33, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     130.00, 159.90, 10.00, 12.30, 140.00, 172.20, 'Sent', NOW() - INTERVAL '18 days', NOW()),

    (34, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     190.00, 233.70, 14.00, 17.22, 204.00, 250.92, 'Delivered', NOW() - INTERVAL '17 days', NOW()),

    (35, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     250.00, 307.50, 18.00, 22.14, 268.00, 329.64, 'Canceled', NOW() - INTERVAL '16 days', NOW()),

    (36, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     170.00, 209.10, 13.00, 15.99, 183.00, 225.09, 'WaitingForBankTransfer', NOW() - INTERVAL '15 days', NOW()),

    (37, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     140.00, 172.20, 11.00, 13.53, 151.00, 185.73, 'PreparationForShipping', NOW() - INTERVAL '14 days', NOW()),

    (38, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     110.00, 135.30, 9.00, 11.07, 119.00, 146.37, 'Sent', NOW() - INTERVAL '13 days', NOW()),

    (39, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     210.00, 258.30, 16.00, 19.68, 226.00, 277.98, 'Delivered', NOW() - INTERVAL '12 days', NOW()),

    (40, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     100.00, 123.00, 7.00, 8.61, 107.00, 131.61, 'Canceled', NOW() - INTERVAL '11 days', NOW()),

    (41, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     120.00, 147.60, 9.50, 11.69, 129.50, 159.29, 'Sent', NOW() - INTERVAL '45 days', NOW()),

    (42, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'WaitingForBankTransfer', NOW() - INTERVAL '44 days', NOW()),

    (43, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'Delivered', NOW() - INTERVAL '43 days', NOW()),

    (44, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     250.00, 307.50, 18.50, 22.80, 268.50, 330.30, 'Canceled', NOW() - INTERVAL '42 days', NOW()),

    (45, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     160.00, 196.80, 12.50, 15.38, 172.50, 212.18, 'Sent', NOW() - INTERVAL '41 days', NOW()),

    (46, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     140.00, 172.20, 11.50, 14.18, 151.50, 186.38, 'PreparationForShipping', NOW() - INTERVAL '40 days', NOW()),

    (47, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     190.00, 233.70, 14.50, 17.79, 204.50, 251.49, 'Delivered', NOW() - INTERVAL '39 days', NOW()),

    (48, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     100.00, 123.00, 7.50, 9.23, 107.50, 132.23, 'Canceled', NOW() - INTERVAL '38 days', NOW()),

    (49, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     180.00, 221.40, 14.00, 17.22, 194.00, 238.62, 'Sent', NOW() - INTERVAL '37 days', NOW()),

    (50, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     130.00, 159.90, 10.50, 12.92, 140.50, 172.82, 'WaitingForBankTransfer', NOW() - INTERVAL '36 days', NOW()),

    (51, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     195.00, 239.85, 14.50, 17.79, 209.50, 257.64, 'Sent', NOW() - INTERVAL '45 days', NOW()),

    (52, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     145.00, 178.35, 12.00, 14.70, 157.00, 193.05, 'Delivered', NOW() - INTERVAL '44 days', NOW()),

    (53, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     110.00, 135.30, 9.50, 11.69, 119.50, 146.99, 'Canceled', NOW() - INTERVAL '43 days', NOW()),

    (54, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     210.00, 258.30, 16.50, 20.18, 226.50, 278.48, 'PreparationForShipping', NOW() - INTERVAL '42 days', NOW()),

    (55, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     125.00, 153.75, 10.00, 12.30, 135.00, 166.05, 'Sent', NOW() - INTERVAL '41 days', NOW()),

    (56, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Delivered', NOW() - INTERVAL '40 days', NOW()),

    (57, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     185.00, 227.55, 14.00, 17.22, 199.00, 244.77, 'WaitingForBankTransfer', NOW() - INTERVAL '39 days', NOW()),

    (58, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'Canceled', NOW() - INTERVAL '38 days', NOW()),

    (59, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Sent', NOW() - INTERVAL '37 days', NOW()),

    (60, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     145.00, 178.35, 12.00, 14.70, 157.00, 193.05, 'Sent', NOW() - INTERVAL '36 days', NOW()),

    (61, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     120.00, 147.60, 9.50, 11.69, 129.50, 159.29, 'Delivered', NOW() - INTERVAL '35 days', NOW()),

    (62, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     110.00, 135.30, 9.00, 11.07, 119.00, 146.37, 'Canceled', NOW() - INTERVAL '34 days', NOW()),

    (63, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     210.00, 258.30, 16.50, 20.18, 226.50, 278.48, 'PreparationForShipping', NOW() - INTERVAL '33 days', NOW()),

    (64, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     125.00, 153.75, 10.00, 12.30, 135.00, 166.05, 'WaitingForBankTransfer', NOW() - INTERVAL '32 days', NOW()),

    (65, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Sent', NOW() - INTERVAL '31 days', NOW()),

    (66, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     185.00, 227.55, 14.00, 17.22, 199.00, 244.77, 'Delivered', NOW() - INTERVAL '30 days', NOW()),

    (67, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'Canceled', NOW() - INTERVAL '29 days', NOW()),

    (68, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Sent', NOW() - INTERVAL '28 days', NOW()),

    (69, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     140.00, 172.20, 11.50, 14.18, 151.50, 186.38, 'WaitingForBankTransfer', NOW() - INTERVAL '27 days', NOW()),

    (70, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     195.00, 239.85, 14.50, 17.79, 209.50, 257.64, 'Delivered', NOW() - INTERVAL '26 days', NOW()),

    (71, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     130.00, 159.90, 10.50, 12.92, 140.50, 172.82, 'Canceled', NOW() - INTERVAL '25 days', NOW()),

    (72, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'PreparationForShipping', NOW() - INTERVAL '24 days', NOW()),

    (73, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     170.00, 209.10, 13.00, 16.00, 183.00, 225.10, 'Sent', NOW() - INTERVAL '23 days', NOW()),

    (74, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     160.00, 196.80, 12.50, 15.38, 172.50, 212.18, 'WaitingForBankTransfer', NOW() - INTERVAL '22 days', NOW()),

    (75, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Delivered', NOW() - INTERVAL '21 days', NOW()),

    (76, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     185.00, 227.55, 14.00, 17.22, 199.00, 244.77, 'Canceled', NOW() - INTERVAL '20 days', NOW()),

    (77, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'Sent', NOW() - INTERVAL '19 days', NOW()),

    (78, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     145.00, 178.35, 12.00, 14.70, 157.00, 193.05, 'PreparationForShipping', NOW() - INTERVAL '18 days', NOW()),

    (79, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     120.00, 147.60, 9.50, 11.69, 129.50, 159.29, 'WaitingForBankTransfer', NOW() - INTERVAL '17 days', NOW()),

    (80, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     110.00, 135.30, 9.00, 11.07, 119.00, 146.37, 'Sent', NOW() - INTERVAL '16 days', NOW()),

    (81, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     210.00, 258.30, 16.50, 20.18, 226.50, 278.48, 'Delivered', NOW() - INTERVAL '15 days', NOW()),

    (82, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     125.00, 153.75, 10.00, 12.30, 135.00, 166.05, 'Canceled', NOW() - INTERVAL '14 days', NOW()),

    (83, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'PreparationForShipping', NOW() - INTERVAL '13 days', NOW()),

    (84, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     185.00, 227.55, 14.00, 17.22, 199.00, 244.77, 'WaitingForBankTransfer', NOW() - INTERVAL '12 days', NOW()),

    (85, 'user3', 'Alice', 'Johnson', 'alice.johnson@example.com', '+3311223344', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'Sent', NOW() - INTERVAL '11 days', NOW()),

    (86, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'PreparationForShipping', NOW() - INTERVAL '10 days', NOW()),

    (87, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     140.00, 172.20, 11.50, 14.18, 151.50, 186.38, 'Delivered', NOW() - INTERVAL '9 days', NOW()),

    (88, 'user1', 'John', 'Doe', 'john.doe@example.com', '+123456789', 
     195.00, 239.85, 14.50, 17.79, 209.50, 257.64, 'Canceled', NOW() - INTERVAL '8 days', NOW()),

    (89, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     130.00, 159.90, 10.50, 12.92, 140.50, 172.82, 'Sent', NOW() - INTERVAL '7 days', NOW()),

    (90, 'user10', 'Sophia', 'Taylor', 'sophia.taylor@example.com', '+1122446688', 
     200.00, 246.00, 15.00, 18.45, 215.00, 264.45, 'PreparationForShipping', NOW() - INTERVAL '6 days', NOW()),

    (91, 'user4', 'Bob', 'Brown', 'bob.brown@example.com', '+1122334455', 
     170.00, 209.10, 13.00, 16.00, 183.00, 225.10, 'WaitingForBankTransfer', NOW() - INTERVAL '5 days', NOW()),

    (92, 'user7', 'Daniel', 'Harris', 'daniel.harris@example.com', '+7788990011', 
     160.00, 196.80, 12.50, 15.38, 172.50, 212.18, 'Sent', NOW() - INTERVAL '4 days', NOW()),

    (93, 'user2', 'Jane', 'Smith', 'jane.smith@example.com', '+987654321', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Canceled', NOW() - INTERVAL '3 days', NOW()),

    (94, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     185.00, 227.55, 14.00, 17.22, 199.00, 244.77, 'Delivered', NOW() - INTERVAL '2 days', NOW()),

    (95, 'user9', 'Michael', 'Wilson', 'michael.wilson@example.com', '+6677889900', 
     180.00, 221.40, 14.00, 17.22, 194.00, 238.62, 'WaitingForBankTransfer', NOW() - INTERVAL '2 days', NOW()),
    
    (96, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', '+3344556677', 
     175.00, 215.25, 13.50, 16.61, 188.50, 231.86, 'Delivered', NOW() - INTERVAL '1 day', NOW()),
    
    (97, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     155.00, 190.65, 12.00, 14.76, 167.00, 205.41, 'Sent', NOW() - INTERVAL '1 day', NOW()), 

    (98, 'user5', 'Charlie', 'Davis', 'charlie.davis@example.com', '+4455667788', 
     155.00, 190.65, 12.00, 14.76, 167.00, 205.41, 'Sent', NOW() - INTERVAL '1 day', NOW()), 

    (99, 'user6', 'Emily', 'White', 'emily.white@example.com', '+5566778899', 
     175.00, 215.25, 14.00, 17.22, 189.00, 232.47, 'PreparationForShipping', NOW() - INTERVAL '2 days', NOW()), 

    (100, 'user8', 'Olivia', 'Moore', 'olivia.moore@example.com', null, 
     95.00, 116.85, 10.00, 12.30, 105.00, 129.15, 'Delivered', NOW() - INTERVAL '1 day', NOW());

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE PRODUCT_IN_ORDER_MAIN  -------------------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE product_in_order_main (
    id BIGINT PRIMARY KEY NOT NULL,
    category VARCHAR(255),
    name VARCHAR(255),
    quantity DECIMAL(21,2),
    price_net DECIMAL(21,2),
    vat DECIMAL(21,2),
    price_gross DECIMAL(21,2),
    total_price_net DECIMAL(21,2),
    total_price_gross DECIMAL(21,2),
    stock DECIMAL(21,2),
    description TEXT,
    image BYTEA,
    image_content_type VARCHAR(255),
    product_id BIGINT,
    order_main_id BIGINT,
    FOREIGN KEY (order_main_id) REFERENCES order_main(id)
);

-- Insert 500 testing data
DO $$ 
DECLARE 
    i INT;
    order_main_id  INT;
	rand_order_main INT;
	rand_quaintity INT;
    product_id INT;
BEGIN
    FOR i IN 1..500 LOOP
        -- Cycle through product IDs 1 to 50
        product_id := (i - 1) % 50 + 1; -- This will cycle through 1, 2, ..., 50
		rand_quaintity := (floor(random() * 15) + 1)::INT;        
        rand_order_main := (floor(random() * 100) + 1)::INT; -- Generates random number between 1 and 100

		IF i <= 100 THEN
            order_main_id := i;  -- Every order_main has to have one product_in_order_main at least
        ELSE
			-- If is certain that each order_main has one product_in_order_main at least, we can generate a random number between 1 and 100 for i > 100
            order_main_id := rand_order_main;
        END IF;
        
        INSERT INTO product_in_order_main (
            id,
			category, 
            name, 
            quantity, 
            price_net, 
            vat, 
            price_gross, 
            total_price_net, 
            total_price_gross, 
            stock, 
            description, 
            image, 
            image_content_type, 
            product_id, 
            order_main_id
        )
        SELECT
            (i),
			p.product_category_enum,
            p.name, 
            rand_quaintity AS quantity, 
            p.price_net, 
            p.vat, 
            p.price_net * (1 + p.vat / 100) AS price_gross, -- Correct formula for price_gross
            rand_quaintity * p.price_net AS total_price_net, -- Correct formula for total_price_net
            rand_quaintity * p.price_net * (1 + p.vat / 100) AS total_price_gross, -- Correct formula for total_price_gross
            p.stock, 
            p.description, 
            p.image, 
            p.image_content_type, 
            p.id AS product_id, 
            order_main_id
        FROM product p
        WHERE p.id = product_id;
        
        IF NOT FOUND THEN
            RAISE NOTICE 'No product found for id %', product_id;
        END IF;
    END LOOP;
END $$;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE PAYMENT_ORDER_MAIN  -----------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE payment_order_main (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price_net DECIMAL(21,2) NOT NULL,
    vat DECIMAL(21,2) NOT NULL,
    price_gross DECIMAL(21,2) NOT NULL,
    payment_status VARCHAR(255) NOT NULL,
    order_main_id BIGINT UNIQUE  -- Nullable but must be unique
);

-- Added one-to-one relationship one cart can have only one payment_order_main
ALTER TABLE payment_order_main
ADD CONSTRAINT fk_payment_order_main__order_main
FOREIGN KEY (order_main_id)
REFERENCES order_main(id);

INSERT INTO payment_order_main (id, name, price_net, vat, price_gross, payment_status, order_main_id)
VALUES
(1, 'Bank Transfer', 5.00, 23.00, 6.15, 'WaitingForBankTransfer', 1), 
(2, 'Card', 5.00, 23.00, 6.15, 'WaitingForCardTransfer', 2), 
(3, 'PayPal', 5.00, 23.00, 6.15, 'WaitingForPayPal', 3), 
(4, 'Cash on Delivery', 6.00, 23.00, 7.38, 'PreparationForShipping', 4),
(6, 'Card', 5.00, 23.00, 6.15, 'WaitingForCardTransfer', 6), 
(7, 'PayPal', 5.00, 23.00, 6.15, 'WaitingForPayPal', 7), 
(8, 'Cash on Delivery', 6.00, 23.00, 7.38, 'PreparationForShipping', 8); 


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------  TABLE SHIPMENT_ORDER_MAIN  ----------------------------------------------------------------------  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE shipment_order_main (
    id BIGINT PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    street VARCHAR(500) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(500) NOT NULL,
    country VARCHAR(500) NOT NULL,
    phone_to_the_receiver VARCHAR(30) NOT NULL,
    firm VARCHAR(10000), 
    tax_number VARCHAR(50), 
    order_main_id BIGINT UNIQUE 
);

-- Added one-to-one relationship one cart can have only one shipment_order_main
ALTER TABLE shipment_order_main
ADD CONSTRAINT fk_shipment_order_main__order_main_id
FOREIGN KEY (order_main_id) REFERENCES order_main(id);

INSERT INTO shipment_order_main (id, first_name, last_name, street, postal_code, city, country, phone_to_the_receiver, firm, tax_number, order_main_id)
VALUES
    (1, 'John', 'Doe', '123 Main St', '10001', 'New York', 'USA', '123-456-7890', 'Doe Corp', 'US123456789', 1),
    (2, 'Jane', 'Smith', '456 Elm St', '75000', 'Paris', 'France', '33-1-23-45-67-89', NULL, NULL, 2),
    (3, 'Alice', 'Johnson', '789 Oak St', '28001', 'Madrid', 'Spain', '34-91-123-4567', 'Johnson Enterprises', 'ES987654321', 3),
    (4, 'Bob', 'Brown', '101 Pine St', '10115', 'Berlin', 'Germany', '49-30-987-6543', NULL, NULL, 4),
    (5, 'Charlie', 'Davis', '', '', '', '', '', '', '', 5),
    (6, 'Emily', 'White', '303 Cedar St', '1012 AB', 'Amsterdam', 'Netherlands', '31-20-123-4567', NULL, NULL, 6),
    (7, 'Daniel', 'Harris', '', '', '', '', '', '', '', 7),
    (8, 'Olivia', 'Moore', '505 Walnut St', '0350', 'Oslo', 'Norway', '47-22-123-456', NULL, NULL, 8),
    (9, 'Michael', 'Wilson', '606 Aspen St', '1200', 'Lisbon', 'Portugal', '351-21-987-654', 'Wilson Group', 'PT123098456', 9),
    (10, 'Sophia', 'Taylor', '707 Redwood St', '00-950', 'Warsaw', 'Poland', '48-22-876-543', NULL, NULL, 10);   
