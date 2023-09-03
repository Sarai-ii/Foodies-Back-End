DROP DATABASE IF EXISTS foodies;
CREATE DATABASE foodies;
\c foodies;

DROP TABLE IF EXISTS restaurants;

-- edge cases: 
--- if the restaurant has delivery people, they can opt for self delivery 
--- if delivery is pass a certain distance then self-delivery is opt out automatically
CREATE TABLE restaurants (
    id serial PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    self_delivery BOOLEAN,
    street_num TEXT NOT NULL,
    street_name TEXT NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    zip NUMERIC NOT NULL,
    opens TEXT NOT NULL,
    closes TEXT NOT NULL,
    image VARCHAR
);

DROP TABLE IF EXISTS menus;

CREATE TABLE menus (
    item_id SERIAL PRIMARY KEY,
    item_name TEXT NOT NULL,
    item_category TEXT NOT NULL,
    item_cost NUMERIC(5,2) NOT NULL,
    item_description TEXT,
    combo BOOLEAN NOT NULL,
    image VARCHAR,
    restaurant_id INTEGER REFERENCES restaurants (id)
    -- rating PERCENTAGE,
);

DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    reviewer TEXT,
    content TEXT,
    stars_rating INTEGER,
    CHECK (stars_rating >= 0 AND stars_rating <= 5),
    restaurant_id INTEGER REFERENCES restaurants (id)
    ON DELETE CASCADE
);