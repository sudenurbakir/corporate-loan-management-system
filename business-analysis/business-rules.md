# İş Kuralları (Business Rules)

## 1. Amaç

Bu dokümanın amacı, Kurumsal Kredi Yönetim Sistemi içerisinde uygulanması gereken temel iş kurallarını tanımlamaktır.

İş kuralları; kredi başvurularının oluşturulması, değerlendirilmesi, onaylanması ve takip edilmesi sırasında sistemin uyması gereken koşulları belirler.

## 2. Kredi Başvuru Kuralları

| Kural ID | İş Kuralı |
|---|---|
| BR-001 | Kredi başvurusu oluşturulabilmesi için sistemde ilgili kurumsal müşterinin kayıtlı olması gerekir. |
| BR-002 | Bir kredi başvurusu için kredi tutarı, kredi türü ve vade bilgileri girilmelidir. |
| BR-003 | Her kredi başvurusu sistem tarafından benzersiz bir başvuru numarası ile kaydedilmelidir. |
| BR-004 | Başvurusu kaydedilen müşterinin temel bilgileri ilgili başvuru ile ilişkilendirilmelidir. |
| BR-005 | Başvuru oluşturulduktan sonra yetkili kullanıcılar tarafından görüntülenebilmelidir. |

## 3. Finansal Belge Kuralları

| Kural ID | İş Kuralı |
|---|---|
| BR-006 | Kredi değerlendirmesine geçilmeden önce ilgili başvuru için zorunlu belgeler tamamlanmalıdır. |
| BR-007 | Eksik belge bulunması durumunda başvuru değerlendirme aşamasına geçirilememelidir. |
| BR-008 | Yüklenen belgelerin durumu sistem üzerinden takip edilebilmelidir. |
| BR-009 | Eksik veya hatalı belge tespit edildiğinde ilgili kullanıcıdan belge güncellemesi istenebilmelidir. |

## 4. Kredi Değerlendirme Kuralları

| Kural ID | İş Kuralı |
|---|---|
| BR-010 | Kredi değerlendirmesi yalnızca yetkili kullanıcılar tarafından gerçekleştirilebilmelidir. |
| BR-011 | Değerlendirme sürecinde müşterinin finansal bilgileri ve kredi talebi dikkate alınmalıdır. |
| BR-012 | Gerekli görülen başvurular için risk değerlendirmesi yapılmalıdır. |
| BR-013 | Değerlendirme tamamlanmadan kredi başvurusu onay veya ret aşamasına geçirilememelidir. |
| BR-014 | Değerlendirme sonucunda oluşturulan açıklamalar sistemde kayıt altına alınmalıdır. |

## 5. Kredi Onay ve Ret Kuralları

| Kural ID | İş Kuralı |
|---|---|
| BR-015 | Kredi onay ve ret kararları yalnızca yetkili kullanıcılar tarafından verilebilmelidir. |
| BR-016 | Her kredi başvurusu için yalnızca bir güncel karar bulunmalıdır. |
| BR-017 | Kredi başvurusu reddedildiğinde ret gerekçesi kaydedilmelidir. |
| BR-018 | Onaylanan kredi başvurusu için onaylanan kredi tutarı kayıt altına alınmalıdır. |
| BR-019 | Onaylanan kredi tutarı, talep edilen kredi tutarından farklı olabilir. |

## 6. Kullanıcı Yetkilendirme Kuralları

| Kural ID | İş Kuralı |
|---|---|
| BR-020 | Kullanıcılar yalnızca kendilerine tanımlanan yetkiler doğrultusunda işlem yapabilmelidir. |
| BR-021 | Kredi değerlendirme ve onay işlemleri farklı yetki seviyelerine göre sınırlandırılmalıdır. |
| BR-022 | Sistem yöneticisi kullanıcı rollerini ve erişim yetkilerini yönetebilmelidir. |
| BR-023 | Kullanıcıların gerçekleştirdiği kritik işlemler kayıt altına alınmalıdır. |

## 7. Başvuru Durum Kuralları

Bir kredi başvurusu aşağıdaki durumlardan birinde bulunabilir:

| Durum | Açıklama |
|---|---|
| Taslak | Başvuru henüz tamamlanmamıştır. |
| Belge Bekleniyor | Başvuru için gerekli belgeler tamamlanmamıştır. |
| Değerlendirmede | Başvuru ilgili birimler tarafından incelenmektedir. |
| Onaylandı | Kredi başvurusu yetkili kullanıcı tarafından onaylanmıştır. |
| Reddedildi | Kredi başvurusu yetkili kullanıcı tarafından reddedilmiştir. |
| İptal Edildi | Başvuru yetkili kullanıcı tarafından iptal edilmiştir. |

## 8. Genel Varsayımlar

- Kurallar kurgusal bir bankacılık senaryosu kapsamında hazırlanmıştır.
- Kredi tutarı, vade ve gerekli belge türleri banka politikalarına göre değişebilir.
- Kullanıcı yetkileri görev ve sorumluluklara göre tanımlanacaktır.
- Kredi değerlendirme ve onay süreçlerinde banka içi prosedürlerin esas alındığı varsayılmaktadır.

## 9. Açık Konular

- Kredi başvurusu onaylandıktan sonra hangi işlemler yapılmalıdır?
- Onaylanan kredi tutarının talep edilen tutardan düşük olması durumunda müşteri onayı gerekli midir?
- Reddedilen bir başvuru yeniden değerlendirilebilir mi?
- Başvuru iptal etme yetkisi hangi rollere verilmelidir?
- Kredi başvurularında hangi finansal belgeler zorunlu olmalıdır?
