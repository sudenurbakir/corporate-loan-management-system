# API Hata Kodları

## 1. Genel Bakış

Kurumsal Kredi Yönetim Sistemi'nde gerçekleştirilen API işlemleri sırasında oluşabilecek hatalar bu dokümanda tanımlanmıştır.

Sistem, bir işlem başarıyla tamamlanamadığında uygun HTTP durum kodunu ve açıklayıcı bir hata mesajını döndürür. Böylece kullanıcı ve teknik ekip, işlemin neden gerçekleştirilemediğini anlayabilir.

## 2. Hata Kodları

| HTTP Durum Kodu | Hata Kodu | Açıklama |
|---|---|---|
| 400 | `INVALID_REQUEST` | İstek içerisinde eksik veya hatalı bilgi bulunması. |
| 401 | `UNAUTHORIZED` | Kullanıcının sisteme giriş yapmamış olması. |
| 403 | `FORBIDDEN` | Kullanıcının ilgili işlem için yetkisinin bulunmaması. |
| 404 | `APPLICATION_NOT_FOUND` | İstenen kredi başvurusunun sistemde bulunamaması. |
| 409 | `INVALID_STATUS_TRANSITION` | Başvurunun mevcut durumundan istenen duruma geçirilememesi. |
| 500 | `INTERNAL_SERVER_ERROR` | Sistem içerisinde beklenmeyen bir hata oluşması. |
| 404 | `CUSTOMER_NOT_FOUND` | Başvuruda belirtilen kurumsal müşterinin sistemde bulunamaması. |
| 409 | `DUPLICATE_APPLICATION` | Aynı müşteri için aynı bilgilerle zaten açık bir başvuru bulunması. |
| 422 | `CREDIT_LIMIT_EXCEEDED` | Talep edilen kredi tutarının müşterinin tanımlı limitini aşması. |
| 422 | `INVALID_LOAN_TERM` | Talep edilen vadenin ürün için izin verilen aralığın dışında olması. |
| 422 | `MISSING_REQUIRED_DOCUMENT` | Başvuru için zorunlu belgelerin eksik olması. |

## 3. Hata Senaryoları

**Geçersiz başvuru bilgisi**

Kredi başvurusu oluşturulurken kredi tutarı veya vade gibi zorunlu alanlar eksik ya da geçersiz gönderilirse sistem `400` durum kodunu döndürür. Başvuru kaydı oluşturulmaz.

**Yetkisiz işlem**

Bir kullanıcı yetkisi olmayan bir başvurunun durumunu değiştirmeye çalışırsa sistem `403` durum kodunu döndürür. Mevcut başvuru durumu korunur.

**Başvuru bulunamaması**

Sistemde bulunmayan bir başvuru numarasıyla detay görüntülenmek istenirse `404` hatası döndürülür.

**Geçersiz durum değişikliği**

Başvurunun mevcut durumundan izin verilmeyen bir duruma geçiş yapılmak istenirse `409` hatası döndürülür. Örneğin, sonuçlandırılmış bir başvurunun yeniden değerlendirmeye alınması engellenir.

## 4. Örnek Hata Yanıtı

Bir başvuru bulunamadığında API aşağıdaki gibi bir yanıt döndürür:

```json
{
  "errorCode": "APPLICATION_NOT_FOUND",
  "message": "Kredi başvurusu bulunamadı."
}
```
Kredi başvurusu oluşturulurken geçersiz bilgi gönderildiğinde API, hatalı alanları da belirten bir yanıt döndürür:

```json
{
  "errorCode": "INVALID_REQUEST",
  "message": "İstek bilgileri geçersiz.",
  "details": [
    {
      "field": "loanAmount",
      "issue": "Kredi tutarı sıfırdan büyük olmalıdır."
    },
    {
      "field": "termMonths",
      "issue": "Vade alanı zorunludur."
    }
  ]
}
```
Sonuçlandırılmış bir başvurunun durumu değiştirilmeye çalışıldığında:

```json
{
  "errorCode": "INVALID_STATUS_TRANSITION",
  "message": "Başvuru mevcut durumundan istenen duruma geçirilemez.",
  "details": {
    "currentStatus": "REJECTED",
    "requestedStatus": "UNDER_REVIEW"
  }
}
```
Bu yapı sayesinde API hataları standart bir formatta sunulur ve teknik ekip sorunları daha kolay analiz edebilir.

> **Not:** `400` isteğin biçim olarak hatalı veya eksik olduğunu, `422` ise isteğin biçim olarak doğru olduğunu ancak iş kurallarına uymadığını ifade eder.

*Not: Hata kodları ve örnek yanıtlar portföy projesi kapsamında tasarlanmıştır. Tüm veriler kurgusaldır.*
