# Fonksiyonel Gereksinimler (Functional Requirements)

## 1. Amaç

Bu dokümanın amacı, Kurumsal Kredi Yönetim Sistemi'nin gerçekleştirmesi gereken temel işlevleri tanımlamaktır.

Fonksiyonel gereksinimler, sistemin kullanıcı ihtiyaçlarını karşılamak için hangi işlemleri gerçekleştirmesi gerektiğini açıklar.

## 2. Kullanıcı Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-001 | Kullanıcı girişi | Sistem, kullanıcıların tanımlı hesap bilgileriyle giriş yapabilmesini sağlamalıdır. |
| FR-002 | Rol yönetimi | Sistem yöneticisi kullanıcı rollerini tanımlayabilmelidir. |
| FR-003 | Yetki kontrolü | Sistem, kullanıcıların gerçekleştirebileceği işlemleri rollerine göre sınırlandırmalıdır. |

## 3. Kurumsal Müşteri Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-004 | Müşteri kaydı oluşturma | Yetkili kullanıcılar yeni kurumsal müşteri kaydı oluşturabilmelidir. |
| FR-005 | Müşteri bilgilerini görüntüleme | Kullanıcılar yetkileri dahilinde müşteri bilgilerini görüntüleyebilmelidir. |
| FR-006 | Müşteri bilgilerini güncelleme | Yetkili kullanıcılar müşteri bilgilerini güncelleyebilmelidir. |
| FR-007 | Müşteri arama | Kullanıcılar müşteri adı veya müşteri numarası üzerinden arama yapabilmelidir. |

## 4. Kredi Başvuru Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-008 | Başvuru oluşturma | Yetkili kullanıcılar kayıtlı bir kurumsal müşteri adına kredi başvurusu oluşturabilmelidir. |
| FR-009 | Başvuru numarası oluşturma | Sistem, oluşturulan her başvuruya benzersiz bir numara atamalıdır. |
| FR-010 | Başvuru bilgilerini güncelleme | Yetkili kullanıcılar uygun durumdaki başvuruların bilgilerini güncelleyebilmelidir. |
| FR-011 | Başvuru listeleme | Kullanıcılar yetkileri dahilindeki kredi başvurularını listeleyebilmelidir. |
| FR-012 | Başvuru detaylarını görüntüleme | Kullanıcılar başvuruya ait müşteri, kredi ve belge bilgilerini görüntüleyebilmelidir. |
| FR-013 | Başvuru durumu görüntüleme | Sistem, her başvurunun güncel durumunu göstermelidir. |

## 5. Finansal Belge Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-014 | Belge yükleme | Yetkili kullanıcılar kredi başvurusuna belge ekleyebilmelidir. |
| FR-015 | Belge listeleme | Kullanıcılar başvuruya eklenen belgeleri görüntüleyebilmelidir. |
| FR-016 | Belge durumu yönetimi | Yetkili kullanıcılar belgeleri inceleniyor, onaylandı veya reddedildi olarak işaretleyebilmelidir. |
| FR-017 | Eksik belge takibi | Sistem, zorunlu belgelerin eksik olması durumunda bunu kullanıcıya göstermelidir. |
| FR-018 | Belge güncelleme | Yetkili kullanıcılar hatalı veya güncel olmayan belgelerin yerine yeni belge yükleyebilmelidir. |

## 6. Kredi Değerlendirme Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-019 | Değerlendirme başlatma | Yetkili kredi tahsis uzmanı uygun durumdaki başvurunun değerlendirmesini başlatabilmelidir. |
| FR-020 | Değerlendirme kaydı oluşturma | Sistem, değerlendirme sonuçlarının kaydedilmesini sağlamalıdır. |
| FR-021 | Risk değerlendirmesi yönlendirme | Yetkili kullanıcı, gerekli gördüğü başvuruyu risk yönetimi birimine yönlendirebilmelidir. |
| FR-022 | Değerlendirme geçmişi görüntüleme | Kullanıcılar yetkileri dahilinde önceki değerlendirme kayıtlarını görüntüleyebilmelidir. |

## 7. Kredi Karar Yönetimi

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-023 | Kredi başvurusu onaylama | Yetkili yönetici uygun durumdaki kredi başvurusunu onaylayabilmelidir. |
| FR-024 | Kredi başvurusu reddetme | Yetkili yönetici kredi başvurusunu reddedebilmelidir. |
| FR-025 | Onaylanan kredi tutarını kaydetme | Sistem, onaylanan kredi tutarının kaydedilmesini sağlamalıdır. |
| FR-026 | Ret gerekçesi kaydetme | Sistem, reddedilen başvurular için ret gerekçesinin girilmesini zorunlu tutmalıdır. |
| FR-027 | Karar geçmişini görüntüleme | Yetkili kullanıcılar başvuruya ait karar kayıtlarını görüntüleyebilmelidir. |

## 8. Başvuru Takibi ve Bildirimler

| Gereksinim ID | Fonksiyonel Gereksinim | Açıklama |
|---|---|---|
| FR-028 | Başvuru durumu güncelleme | Sistem, süreçteki işlemlere göre başvuru durumunu güncellemelidir. |
| FR-029 | Durum değişikliği bildirimi | Sistem, başvuru durumundaki değişiklikleri ilgili kullanıcılara bildirebilmelidir. |
| FR-030 | İşlem geçmişi kaydı | Sistem, başvuru üzerinde gerçekleştirilen kritik işlemleri tarih ve kullanıcı bilgisiyle kaydetmelidir. |

## 9. Önceliklendirme

| Öncelik | Gereksinimler |
|---|---|
| Yüksek | FR-001 – FR-019, FR-023 – FR-030 |
| Orta | FR-020 – FR-022 |
| Orta | FR-025 – FR-027 |

## 10. Varsayımlar

- Sistem yalnızca yetkili banka çalışanları tarafından kullanılacaktır.
- Kullanıcıların erişebileceği ekranlar ve gerçekleştirebileceği işlemler rollerine göre belirlenecektir.
- Finansal değerlendirme ve kredi kararları sistem tarafından otomatik olarak verilmeyecek, yetkili banka çalışanları tarafından gerçekleştirilecektir.
- Bildirimler proje kapsamında sistem içi bildirim olarak ele alınacaktır.
- Gereksinimler kurgusal bankacılık senaryosuna göre hazırlanmıştır.
