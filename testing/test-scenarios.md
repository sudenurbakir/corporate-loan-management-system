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

## 3. Detaylı Test Senaryoları

### TC-001 – Kredi Başvurusu Oluşturma

- **Ön koşul:** Sistemde aktif bir kurumsal müşteri bulunmalıdır.
- **Test adımları:**
  1. Kredi başvurusu oluşturma ekranı veya API'si açılır.
  2. Zorunlu alanlara geçerli bilgiler girilir.
  3. Başvuru gönderilir.
- **Beklenen sonuç:** Başvuru oluşturulur, benzersiz bir başvuru numarası üretilir ve durum `SUBMITTED` olur.

### TC-002 – Eksik Bilgiyle Başvuru Oluşturma

- **Ön koşul:** Başvuru oluşturma işlemi başlatılmış olmalıdır.
- **Test adımları:**
  1. Kredi başvurusu için gerekli bilgiler girilir.
  2. Zorunlu alanlardan biri boş bırakılır.
  3. Başvuru gönderilir.
- **Beklenen sonuç:** Başvuru oluşturulmaz ve eksik alanı belirten doğrulama mesajı gösterilir.

### TC-003 – Başvuru Detaylarını Görüntüleme

- **Ön koşul:** Sistemde `LOAN-001` numaralı bir başvuru bulunmalıdır.
- **Test adımları:**
  1. Başvuru detay sorgusu yapılır.
  2. `LOAN-001` başvuru numarası gönderilir.
- **Beklenen sonuç:** Başvurunun müşteri referansı, kredi türü, tutarı, vadesi ve güncel durumu döndürülür.

### TC-004 – Bulunmayan Başvuruyu Görüntüleme

- **Ön koşul:** Sorgulanacak başvuru sistemde bulunmamalıdır.
- **Test adımları:**
  1. Sistemde kayıtlı olmayan bir başvuru numarası gönderilir.
  2. Başvuru detayları istenir.
- **Beklenen sonuç:** Sistem `404` hata kodunu ve başvurunun bulunamadığını belirten mesajı döndürür.

### TC-005 – Başvuruya Belge Ekleme

- **Ön koşul:** Sistemde geçerli bir kredi başvurusu bulunmalıdır.
- **Test adımları:**
  1. Başvuruya ait belge ekleme işlemi başlatılır.
  2. Belge türü ve geçerli belge bilgisi gönderilir.
  3. İşlem tamamlanır.
- **Beklenen sonuç:** Belge ilgili başvuruyla ilişkilendirilir ve belge kaydı oluşturulur.

### TC-006 – Başvuru Durumunu Güncelleme

- **Ön koşul:** Başvuru `SUBMITTED` durumunda olmalıdır. İşlemi yapan kullanıcının yetkisi bulunmalıdır.
- **Test adımları:**
  1. Başvuru durumunu güncelleme işlemi başlatılır.
  2. Yeni durum `UNDER_REVIEW` olarak gönderilir.
  3. İşlem tamamlanır.
- **Beklenen sonuç:** Başvuru durumu `UNDER_REVIEW` olarak güncellenir.

### TC-007 – Yetkisiz Durum Güncelleme

- **Ön koşul:** Kullanıcının başvuru durumunu değiştirme yetkisi bulunmamalıdır.
- **Test adımları:**
  1. Kullanıcı başvuru durumunu değiştirmek ister.
  2. Güncelleme isteği gönderilir.
- **Beklenen sonuç:** İşlem engellenir ve sistem `403` hata kodunu döndürür. Başvurunun mevcut durumu değişmez.

### TC-008 – Geçersiz Durum Değişikliği

- **Ön koşul:** Başvuru `APPROVED` veya `REJECTED` gibi sonuçlandırılmış bir durumda olmalıdır.
- **Test adımları:**
  1. Sonuçlandırılmış başvuru seçilir.
  2. Başvuru durumu `UNDER_REVIEW` olarak güncellenmek istenir.
- **Beklenen sonuç:** İşlem engellenir ve sistem `409` hata kodunu döndürür.

### TC-009 – Değerlendirme Geçmişini Görüntüleme

- **Ön koşul:** Başvuruya ait en az bir değerlendirme kaydı bulunmalıdır.
- **Test adımları:**
  1. Başvuru numarası ile değerlendirme geçmişi istenir.
  2. Sistemden dönen kayıtlar incelenir.
- **Beklenen sonuç:** İlgili başvuruya ait değerlendirme kayıtları listelenir ve geçmiş kayıtlar korunur.

## 4. Test Yaklaşımı

- Her test senaryosu belirli bir iş gereksinimini doğrulamalıdır.
- Olumlu ve olumsuz senaryolar birlikte değerlendirilmelidir.
- Beklenen sonuç ile gerçekleşen sonuç karşılaştırılmalıdır.
- Hata durumlarında sistemin uygun yanıtı verdiği kontrol edilmelidir.

*Not: Bu senaryolar portföy projesi kapsamında hazırlanmıştır. Gerçek bir sistem üzerinde çalıştırılmış test sonuçlarını temsil etmez.*
