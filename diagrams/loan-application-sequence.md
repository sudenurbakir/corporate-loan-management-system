
# Kredi Başvurusu Sıralama Diyagramı

## Amaç

Bu diyagram, kredi başvurusu oluşturulurken kullanıcı, sistem, API ve veritabanı arasındaki etkileşimi göstermektedir.

## İşlem Akışı

```mermaid
sequenceDiagram
    actor Kullanıcı as Banka Yetkilisi
    participant Sistem
    participant API
    participant DB as Veritabanı

    Kullanıcı->>Sistem: Başvuru bilgilerini girer
    Sistem->>API: POST /loan-applications
    API->>API: Başvuru bilgilerini doğrular

    alt Bilgiler geçerli
        API->>DB: Başvuruyu kaydeder
        DB-->>API: Kayıt başarılı
        API-->>Sistem: 201 Created
        Sistem-->>Kullanıcı: Başvuru oluşturuldu
    else Bilgiler geçersiz
        API-->>Sistem: 400 Bad Request
        Sistem-->>Kullanıcı: Hata mesajı gösterilir
    end
```

## Açıklama

Banka yetkilisi başvuru bilgilerini sisteme girer. Sistem, bilgileri API aracılığıyla gönderir.

API, gelen bilgileri kontrol eder. Bilgiler geçerliyse başvuru veritabanına kaydedilir ve başarılı yanıt döndürülür.

Bilgiler geçersizse kayıt oluşturulmaz ve kullanıcıya hata yanıtı iletilir.
```
