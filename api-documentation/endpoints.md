# API Endpoint Dokümantasyonu

Bu doküman, Kurumsal Kredi Yönetim Sistemi'nde kredi başvurularının oluşturulması, yönetilmesi ve değerlendirme sürecinin takip edilmesi için kullanılan temel API endpoint'lerini tanımlar.

Tüm endpoint'ler `/api/v1` temel adresini kullanır. İstek ve yanıtlar JSON formatındadır.

## 1. Kredi Başvurusu İşlemleri

| Method | Endpoint | Açıklama |
|---|---|---|
| POST | `/loan-applications` | Yeni kredi başvurusu oluşturur. |
| GET | `/loan-applications` | Kredi başvurularını listeler. |
| GET | `/loan-applications/{id}` | Belirli bir başvurunun detayını getirir. |
| PATCH | `/loan-applications/{id}` | Başvuru bilgilerini günceller. |
| PATCH | `/loan-applications/{id}/status` | Başvuru durumunu günceller. |

## 2. Belge İşlemleri

| Method | Endpoint | Açıklama |
|---|---|---|
| POST | `/loan-applications/{id}/documents` | Başvuruya belge kaydı ekler. |
| GET | `/loan-applications/{id}/documents` | Başvuruya ait belgeleri listeler. |

## 3. Değerlendirme İşlemleri

| Method | Endpoint | Açıklama |
|---|---|---|
| POST | `/loan-applications/{id}/evaluations` | Başvuru için değerlendirme kaydı oluşturur. |
| GET | `/loan-applications/{id}/evaluations` | Başvuru değerlendirme geçmişini getirir. |

## 4. Temel Veri Alanları

**Kredi başvurusu oluşturma:**

| Alan | Açıklama |
|---|---|
| customerId | Kurumsal müşteri referansı |
| loanType | Kredi türü |
| requestedAmount | Talep edilen kredi tutarı |
| currency | Para birimi |
| termMonths | Vade süresi (ay) |

**Başvuru durumları:**

- `SUBMITTED`: Başvuru oluşturuldu.
- `UNDER_REVIEW`: Değerlendirme aşamasında.
- `APPROVED`: Onaylandı.
- `REJECTED`: Reddedildi.
- `CANCELLED`: İptal edildi.

## 5. Genel Kurallar

- Başvuru oluşturma işlemi `POST` metodu ile gerçekleştirilir.
- Başvuru detayları `GET` metodu ile görüntülenir.
- Başvuru güncellemelerinde `PATCH` metodu kullanılır.
- Durum değişiklikleri yalnızca yetkili kullanıcılar tarafından yapılabilir.
- Başvuru değerlendirme kayıtları geçmiş takibi için saklanır.
- Olumsuz API yanıtları uygun HTTP durum kodlarıyla döndürülür.

## 6. Örnek Endpoint Kullanımı

**Yeni başvuru oluşturma**

`POST /api/v1/loan-applications`

**Başvuru detayını görüntüleme**

`GET /api/v1/loan-applications/LOAN-001`

**Başvuru belgelerini listeleme**

`GET /api/v1/loan-applications/LOAN-001/documents`

**Başvuru değerlendirme geçmişini görüntüleme**

`GET /api/v1/loan-applications/LOAN-001/evaluations`

*Not: Projedeki tüm veriler kurgusaldır. Endpoint'ler portföy çalışması kapsamında tasarlanmıştır.*
