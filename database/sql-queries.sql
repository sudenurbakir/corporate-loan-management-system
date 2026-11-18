```sql
-- Kurumsal Kredi Yönetim Sistemi
-- Veritabanı: PostgreSQL
-- Tüm örnek kayıtlar kurgusaldır.

-- 1. Müşteri tablosu
CREATE TABLE customer (
    customer_id VARCHAR(20) PRIMARY KEY,
    status VARCHAR(20) NOT NULL
        CHECK (status IN ('ACTIVE', 'INACTIVE'))
);

-- 2. Kredi başvurusu tablosu
CREATE TABLE loan_application (
    application_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) NOT NULL,
    loan_type VARCHAR(50) NOT NULL,
    requested_amount DECIMAL(15, 2) NOT NULL
        CHECK (requested_amount > 0),
    currency VARCHAR(3) NOT NULL,
    term_months INTEGER NOT NULL
        CHECK (term_months > 0),
    status VARCHAR(20) NOT NULL
        CHECK (status IN (
            'SUBMITTED',
            'UNDER_REVIEW',
            'APPROVED',
            'REJECTED',
            'CANCELLED'
        )),
    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);

-- 3. Belge tablosu
CREATE TABLE document (
    document_id VARCHAR(20) PRIMARY KEY,
    application_id VARCHAR(20) NOT NULL,
    document_type VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL
        CHECK (status IN (
            'PENDING',
            'RECEIVED',
            'VERIFIED',
            'REJECTED'
        )),
    FOREIGN KEY (application_id)
        REFERENCES loan_application(application_id)
);

-- 4. Değerlendirme tablosu
CREATE TABLE evaluation (
    evaluation_id VARCHAR(20) PRIMARY KEY,
    application_id VARCHAR(20) NOT NULL,
    result VARCHAR(20) NOT NULL
        CHECK (result IN (
            'IN_PROGRESS',
            'APPROVED',
            'REJECTED'
        )),
    evaluated_at TIMESTAMP NOT NULL,
    FOREIGN KEY (application_id)
        REFERENCES loan_application(application_id)
);

-- Sık kullanılan başvuru sorguları için indeks
CREATE INDEX idx_loan_application_status
ON loan_application(status);

-- 5. Örnek sorgular

-- Kredi başvurularını listeleme
SELECT *
FROM loan_application;

-- Belirli bir başvurunun detaylarını görüntüleme
SELECT *
FROM loan_application
WHERE application_id = 'LOAN-001';

-- Değerlendirme aşamasındaki başvuruları listeleme
SELECT *
FROM loan_application
WHERE status = 'UNDER_REVIEW';

-- Başvuruya ait belgeleri görüntüleme
SELECT *
FROM document
WHERE application_id = 'LOAN-001';

-- Başvurunun değerlendirme geçmişini görüntüleme
SELECT *
FROM evaluation
WHERE application_id = 'LOAN-001'
ORDER BY evaluated_at DESC;

-- Müşteri ve kredi başvurularını birlikte listeleme
SELECT
    c.customer_id,
    l.application_id,
    l.loan_type,
    l.requested_amount,
    l.currency,
    l.status
FROM customer c
INNER JOIN loan_application l
    ON c.customer_id = l.customer_id;
```

/*
SQL KOMUTLARININ PROJEDEKİ KULLANIMI

CREATE TABLE:
Veritabanı tablolarını oluşturmak için kullanılır.

PRIMARY KEY:
Her kaydın benzersiz şekilde tanımlanmasını sağlar.

FOREIGN KEY:
Tablolar arasındaki ilişkileri kurar ve veri bütünlüğünü destekler.

CHECK:
Kredi tutarı ve başvuru durumu gibi alanlarda geçersiz değerleri engeller.

CREATE INDEX:
Başvuru durumuna göre yapılan sorgulamaları destekler.

SELECT:
Veritabanındaki kayıtları listelemek ve incelemek için kullanılır.

JOIN:
İlişkili tablolardaki verileri bir araya getirerek sorgulamayı sağlar.
*/
