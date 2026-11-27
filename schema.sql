CREATE TABLE users (
    user_id         SERIAL          PRIMARY KEY,
    name            VARCHAR(100)    NOT NULL,
    email           VARCHAR(150)    NOT NULL UNIQUE,
    password_hash   VARCHAR(255)    NOT NULL,
    created_at      TIMESTAMP       DEFAULT NOW()
);

CREATE TABLE categories (
    category_id     SERIAL          PRIMARY KEY,
    name            VARCHAR(100)    NOT NULL UNIQUE,
    created_at      TIMESTAMP       DEFAULT NOW()
);

CREATE TABLE products (
    product_id      SERIAL          PRIMARY KEY,
    category_id     INTEGER         NOT NULL REFERENCES categories(category_id),
    name            VARCHAR(150)    NOT NULL,
    price           NUMERIC(10,2)   NOT NULL CHECK (price >= 0),
    stock           INTEGER         NOT NULL DEFAULT 0 CHECK (stock >= 0),
    created_at      TIMESTAMP       DEFAULT NOW()
);

CREATE TABLE orders (
    order_id        SERIAL          PRIMARY KEY,
    user_id         INTEGER         NOT NULL REFERENCES users(user_id),
    order_date      TIMESTAMP       DEFAULT NOW(),
    status          VARCHAR(20)     NOT NULL DEFAULT 'pending'
                    CHECK (status IN ('pending', 'shipped', 'completed', 'cancelled'))
);

CREATE TABLE order_items (
    order_item_id   SERIAL          PRIMARY KEY,
    order_id        INTEGER         NOT NULL REFERENCES orders(order_id),
    product_id      INTEGER         NOT NULL REFERENCES products(product_id),
    quantity        INTEGER         NOT NULL CHECK (quantity > 0),
    unit_price      NUMERIC(10,2)   NOT NULL CHECK (unit_price >= 0)
);
