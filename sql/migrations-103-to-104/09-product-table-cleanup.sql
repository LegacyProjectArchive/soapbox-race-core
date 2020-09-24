ALTER TABLE PRODUCT
    DROP FOREIGN KEY FK8obn8l9i769slt8pjub191l52;
ALTER TABLE PRODUCT
    DROP COLUMN id;
ALTER TABLE PRODUCT
    DROP COLUMN minLevel;
ALTER TABLE PRODUCT
    MODIFY COLUMN productId VARCHAR(255) PRIMARY KEY NOT NULL;
ALTER TABLE PRODUCT
    MODIFY COLUMN parentProductId VARCHAR(255) NULL;
ALTER TABLE PRODUCT
    ADD CONSTRAINT FK8obn8l9i769slt8pjub191l52 FOREIGN KEY (parentProductId) REFERENCES PRODUCT (productId);
ALTER TABLE PRODUCT
    ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP AFTER productId;