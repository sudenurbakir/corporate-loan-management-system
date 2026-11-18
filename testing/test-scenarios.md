# Test Senaryoları

## 1. Amaç

Bu doküman, Kurumsal Kredi Yönetim Sistemi'nin temel işlevlerini doğrulamak amacıyla hazırlanan test senaryolarını içerir.

Testler; kredi başvurusu oluşturma, başvuru görüntüleme, belge yönetimi ve başvuru değerlendirme süreçlerini kapsar.

## 2. Test Senaryoları

| Test ID | Test Senaryosu | Beklenen Sonuç |
|---|---|---|
| TC-001 | Geçerli bilgilerle kredi başvurusu oluşturulması | Başvuru başarıyla oluşturulur ve `SUBMITTED` durumunda kaydedilir. |
| TC-002 | Zorunlu alanlardan biri eksik bırakılarak başvuru oluşturulması | Sistem başvuruyu oluşturmaz ve doğrulama hatası döndürür. |
| TC-003 | Mevcut bir başvurunun detaylarının görüntülenmesi | Başvuru bilgileri doğru şekilde listelenir. |
| TC-004 | Sistemde bulunmayan bir başvurunun görüntülenmesi | Sistem `404` hata kodunu döndürür. |
| TC-005 | Başvuruya belge eklenmesi | Belge başvuru kaydıyla ilişkilendirilir. |
| TC-006 | Başvuru durumunun `UNDER_REVIEW` olarak güncellenmesi | Başvuru durumu başarıyla güncellenir. |
| TC-007 | Yetkisiz kullanıcının başvuru durumunu değiştirmesi | Sistem işlemi engeller ve `403` hata kodunu döndürür. |
| TC-008 | Sonuçlandırılmış başvurunun tekrar değerlendirmeye alınması | Geçersiz durum değişikliği engellenir ve `409` hata kodu döndürülür. |
| TC-009 | Başvuruya ait değerlendirme geçmişinin görüntülenmesi | İlgili değerlendirme kayıtları listelenir. |

## 3. Örnek Test Senaryosu

**TC-001 – Kredi Başvurusu Oluşturma**

- **Ön koşul:** Sistemde aktif bir kurumsal müşteri kaydı bulunmalıdır.
- **Test verisi:** `CUST-001`, `BUSINESS_TERM_LOAN`, `500000 TRY`, 24 ay.
- **İşlem:** Geçerli bilgilerle yeni kredi başvurusu gönderilir.
- **Beklenen sonuç:** Sistem başvuruyu oluşturur, benzersiz bir başvuru numarası üretir ve durumunu `SUBMITTED` olarak kaydeder.

## 4. Test Yaklaşımı

- Her test senaryosu belirli bir iş gereksinimini doğrulamalıdır.
- Olumlu ve olumsuz senaryolar birlikte değerlendirilmelidir.
- Beklenen sonuç ile gerçekleşen sonuç karşılaştırılmalıdır.
- Hata durumlarında sistemin uygun yanıtı verdiği kontrol edilmelidir.

*Not: Bu senaryolar portföy projesi kapsamında hazırlanmıştır. Gerçek bir sistem üzerinde çalıştırılmış test sonuçlarını temsil etmez.*
