# Kullanıcı Hikâyeleri (User Stories)
## Kurumsal Kredi Yönetim Sistemi

## 1. Amaç

Bu doküman, Kurumsal Kredi Yönetim Sistemi kullanıcılarının ihtiyaçlarını ve sistemden beklentilerini kullanıcı hikâyeleri (User Stories) formatında tanımlar.

Her kullanıcı hikâyesi, ilgili kabul kriterleri (Acceptance Criteria) ile desteklenerek geliştirilecek işlevin hangi koşullarda tamamlanmış sayılacağını açıklar.

## 2. Kullanıcı Hikâyeleri

### US-001 – Sisteme Giriş Yapma

**İlgili Gereksinim:** FR-001

**Kullanıcı Hikâyesi:**

Bir banka çalışanı olarak, kullanıcı bilgilerimle sisteme giriş yapmak istiyorum; böylece yetkim dahilindeki işlemleri gerçekleştirebilirim.

**Kabul Kriterleri:**

- **AC-001:** Kullanıcı geçerli hesap bilgilerini girdiğinde sisteme giriş yapabilmelidir.
- **AC-002:** Kullanıcı hatalı hesap bilgileri girdiğinde sistem hata mesajı göstermelidir.
- **AC-003:** Kullanıcı giriş yapmadan sistemin yetki gerektiren ekranlarına erişememelidir.

### US-002 – Kullanıcı Rollerini Yönetme

**İlgili Gereksinim:** FR-002, FR-003

**Kullanıcı Hikâyesi:**

Bir sistem yöneticisi olarak, kullanıcıların rollerini tanımlamak ve yetkilerini yönetmek istiyorum; böylece çalışanlar yalnızca sorumlulukları dahilindeki işlemleri gerçekleştirebilir.

**Kabul Kriterleri:**

- **AC-004:** Sistem yöneticisi kullanıcıya tanımlı rollerden birini atayabilmelidir.
- **AC-005:** Kullanıcı, rolü kapsamında yetkilendirilmediği bir işlemi gerçekleştirememelidir.
- **AC-006:** Yetki değişiklikleri sistem tarafından uygulanmalıdır.

### US-003 – Kurumsal Müşteri Kaydı Oluşturma

**İlgili Gereksinim:** FR-004

**Kullanıcı Hikâyesi:**

Bir müşteri temsilcisi olarak, yeni kurumsal müşteri kaydı oluşturmak istiyorum; böylece müşterinin kredi başvuru sürecini sistem üzerinden başlatabilirim.

**Kabul Kriterleri:**

- **AC-007:** Kullanıcı gerekli müşteri bilgilerini girebilmelidir.
- **AC-008:** Zorunlu alanlar doldurulmadan kayıt tamamlanmamalıdır.
- **AC-009:** Başarılı kayıt sonrasında müşteriye benzersiz bir müşteri numarası atanmalıdır.

### US-004 – Kurumsal Müşteri Bilgilerini Görüntüleme ve Güncelleme

**İlgili Gereksinim:** FR-005, FR-006

**Kullanıcı Hikâyesi:**

Bir müşteri temsilcisi olarak, kayıtlı kurumsal müşterilerin bilgilerini görüntülemek ve yetkim dahilinde güncellemek istiyorum; böylece müşteri bilgilerinin güncel tutulmasını sağlayabilirim.

**Kabul Kriterleri:**

- **AC-010:** Kullanıcı yetkisi dahilindeki müşteri bilgilerini görüntüleyebilmelidir.
- **AC-011:** Yetkili kullanıcı müşteri bilgilerini güncelleyebilmelidir.
- **AC-012:** Güncellenen bilgiler sistemde saklanmalıdır.

### US-005 – Kurumsal Müşteri Arama

**İlgili Gereksinim:** FR-007

**Kullanıcı Hikâyesi:**

Bir banka çalışanı olarak, müşteri adı veya müşteri numarası üzerinden arama yapmak istiyorum; böylece ilgili müşteri kaydına hızlıca ulaşabilirim.

**Kabul Kriterleri:**

- **AC-013:** Kullanıcı müşteri adıyla arama yapabilmelidir.
- **AC-014:** Kullanıcı müşteri numarasıyla arama yapabilmelidir.
- **AC-015:** Arama kriterlerine uygun kayıt bulunamadığında sistem bilgilendirme mesajı göstermelidir.

### US-006 – Kredi Başvurusu Oluşturma

**İlgili Gereksinim:** FR-008, FR-009

**Kullanıcı Hikâyesi:**

Bir müşteri temsilcisi olarak, kayıtlı bir kurumsal müşteri adına kredi başvurusu oluşturmak istiyorum; böylece müşterinin kredi talebini değerlendirme sürecine iletebilirim.

**Kabul Kriterleri:**

- **AC-016:** Kullanıcı kayıtlı bir kurumsal müşteri seçebilmelidir.
- **AC-017:** Kullanıcı kredi türü, talep edilen tutar ve vade bilgilerini girebilmelidir.
- **AC-018:** Zorunlu bilgiler eksik olduğunda başvuru oluşturulamamalıdır.
- **AC-019:** Başvuru başarıyla oluşturulduğunda sistem benzersiz bir başvuru numarası üretmelidir.

### US-007 – Kredi Başvurularını Listeleme ve Görüntüleme

**İlgili Gereksinim:** FR-011, FR-012, FR-013

**Kullanıcı Hikâyesi:**

Bir banka çalışanı olarak, yetkim dahilindeki kredi başvurularını listelemek ve başvuru detaylarını görüntülemek istiyorum; böylece başvuruların mevcut durumunu takip edebilirim.

**Kabul Kriterleri:**

- **AC-020:** Kullanıcı yetkisi dahilindeki başvuruları listeleyebilmelidir.
- **AC-021:** Kullanıcı seçtiği başvurunun müşteri, kredi ve belge bilgilerini görüntüleyebilmelidir.
- **AC-022:** Başvurunun güncel durumu görüntülenebilmelidir.

### US-008 – Kredi Başvurusu Bilgilerini Güncelleme

**İlgili Gereksinim:** FR-010

**Kullanıcı Hikâyesi:**

Bir müşteri temsilcisi olarak, uygun durumdaki kredi başvurusunun bilgilerini güncellemek istiyorum; böylece değerlendirme öncesinde hatalı veya eksik bilgileri düzeltebilirim.

**Kabul Kriterleri:**

- **AC-023:** Kullanıcı yalnızca güncellemeye açık durumdaki başvuruları değiştirebilmelidir.
- **AC-024:** Güncellenen bilgiler sistemde saklanmalıdır.
- **AC-025:** Güncelleme işlemi tamamlandığında kullanıcı bilgilendirilmelidir.

### US-009 – Finansal Belge Yükleme

**İlgili Gereksinim:** FR-014

**Kullanıcı Hikâyesi:**

Bir müşteri temsilcisi olarak, kredi başvurusuna ait finansal belgeleri sisteme yüklemek istiyorum; böylece kredi değerlendirme uzmanı gerekli belgelere erişebilir.

**Kabul Kriterleri:**

- **AC-026:** Kullanıcı ilgili kredi başvurusunu seçebilmelidir.
- **AC-027:** Kullanıcı başvuruya belge ekleyebilmelidir.
- **AC-028:** Yüklenen belge ilgili kredi başvurusu ile ilişkilendirilmelidir.
- **AC-029:** Başarılı belge yükleme sonrasında kullanıcı bilgilendirilmelidir.

### US-010 – Finansal Belgeleri İnceleme

**İlgili Gereksinim:** FR-015, FR-016, FR-017, FR-018

**Kullanıcı Hikâyesi:**

Bir kredi tahsis uzmanı olarak, başvuruya eklenen finansal belgeleri görüntülemek ve belge durumlarını güncellemek istiyorum; böylece değerlendirme için gerekli belgelerin eksiksiz olmasını sağlayabilirim.

**Kabul Kriterleri:**

- **AC-030:** Kullanıcı başvuruya eklenen belgeleri görüntüleyebilmelidir.
- **AC-031:** Yetkili kullanıcı belge durumunu inceleniyor, onaylandı veya reddedildi olarak güncelleyebilmelidir.
- **AC-032:** Zorunlu belgeler eksikse sistem eksik belge bilgisini göstermelidir.
- **AC-033:** Yetkili kullanıcı hatalı veya güncel olmayan belgenin yerine yeni belge yükleyebilmelidir.

### US-011 – Kredi Değerlendirmesi Başlatma

**İlgili Gereksinim:** FR-019, FR-020

**Kullanıcı Hikâyesi:**

Bir kredi tahsis uzmanı olarak, gerekli belgeleri tamamlanmış bir kredi başvurusunun değerlendirmesini başlatmak ve değerlendirme sonucunu kaydetmek istiyorum; böylece kredi talebinin uygunluğunu inceleyebilirim.

**Kabul Kriterleri:**

- **AC-034:** Uzman yalnızca değerlendirme için gerekli koşulları sağlayan başvuruların değerlendirmesini başlatabilmelidir.
- **AC-035:** Uzman değerlendirme notlarını sisteme kaydedebilmelidir.
- **AC-036:** Değerlendirme kaydı ilgili başvuru ile ilişkilendirilmelidir.

### US-012 – Risk Yönetimi Birimine Başvuru Yönlendirme

**İlgili Gereksinim:** FR-021

**Kullanıcı Hikâyesi:**

Bir kredi tahsis uzmanı olarak, gerekli gördüğüm kredi başvurusunu risk yönetimi birimine yönlendirmek istiyorum; böylece başvuru ek risk incelemesinden geçirilebilir.

**Kabul Kriterleri:**

- **AC-037:** Yetkili uzman başvuruyu risk yönetimi birimine yönlendirebilmelidir.
- **AC-038:** Yönlendirme işlemi sonrasında başvurunun durumu güncellenmelidir.
- **AC-039:** Yönlendirme işlemi sistemde kayıt altına alınmalıdır.

### US-013 – Değerlendirme Geçmişini Görüntüleme

**İlgili Gereksinim:** FR-022

**Kullanıcı Hikâyesi:**

Bir kredi yetkilisi olarak, kredi başvurusuna ait önceki değerlendirme kayıtlarını görüntülemek istiyorum; böylece karar vermeden önce yapılan incelemeleri değerlendirebilirim.

**Kabul Kriterleri:**

- **AC-040:** Yetkili kullanıcı başvuruya ait değerlendirme geçmişini görüntüleyebilmelidir.
- **AC-041:** Değerlendirme kayıtlarında tarih ve ilgili kullanıcı bilgileri yer almalıdır.

### US-014 – Kredi Başvurusunu Onaylama veya Reddetme

**İlgili Gereksinim:** FR-023, FR-024, FR-025, FR-026

**Kullanıcı Hikâyesi:**

Bir kredi yetkilisi olarak, değerlendirmesi tamamlanan kredi başvurusunu onaylamak veya reddetmek istiyorum; böylece kredi talebine ilişkin resmi karar sist
