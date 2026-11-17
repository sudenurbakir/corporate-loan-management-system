# Fonksiyonel Olmayan Gereksinimler
## Kurumsal Kredi Yönetim Sistemi

## 1. Amaç

Bu dokümanın amacı, Kurumsal Kredi Yönetim Sistemi'nin performans, güvenlik, kullanılabilirlik, erişilebilirlik ve veri bütünlüğü gibi kalite beklentilerini tanımlamaktır.

Fonksiyonel olmayan gereksinimler, sistemin hangi işlevleri yerine getireceğinden ziyade bu işlevleri nasıl gerçekleştirmesi gerektiğini açıklar.

## 2. Güvenlik Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-001 | Sistem, kullanıcıların kimlik doğrulaması yapılmadan sisteme erişmesine izin vermemelidir. | Yüksek |
| NFR-002 | Kullanıcılar yalnızca rollerine tanımlanmış ekranlara ve işlemlere erişebilmelidir. | Yüksek |
| NFR-003 | Kullanıcı şifreleri sistemde güvenli yöntemlerle saklanmalıdır. | Yüksek |
| NFR-004 | Hassas müşteri ve finansal bilgiler yetkisiz erişime karşı korunmalıdır. | Yüksek |
| NFR-005 | Kullanıcıların kritik işlemleri kayıt altına alınmalıdır. | Yüksek |

## 3. Performans Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-006 | Sistem, normal kullanım koşullarında kullanıcı işlemlerine en fazla 3 saniye içerisinde yanıt vermelidir. | Yüksek |
| NFR-007 | Müşteri ve kredi başvurusu arama işlemleri makul yanıt süreleri içerisinde tamamlanmalıdır. | Orta |
| NFR-008 | Sistem, aynı anda birden fazla banka çalışanının işlem yapmasını desteklemelidir. | Yüksek |

## 4. Kullanılabilirlik Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-009 | Sistem arayüzü, banka çalışanlarının işlemlerini kolayca gerçekleştirebileceği şekilde tasarlanmalıdır. | Orta |
| NFR-010 | Hatalı veya eksik bilgi girildiğinde kullanıcıya anlaşılır hata mesajları gösterilmelidir. | Yüksek |
| NFR-011 | Sistem içerisindeki işlem adımları tutarlı ve anlaşılır bir yapıda olmalıdır. | Orta |

## 5. Veri Bütünlüğü ve Tutarlılık Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-012 | Sistem, müşteri ve kredi başvurusu kayıtlarında veri tutarlılığını sağlamalıdır. | Yüksek |
| NFR-013 | Zorunlu alanlar doldurulmadan ilgili kayıt işlemi tamamlanmamalıdır. | Yüksek |
| NFR-014 | Bir kredi başvurusuna ait belge ve değerlendirme kayıtları ilgili başvuru ile ilişkilendirilmelidir. | Yüksek |
| NFR-015 | Kritik işlemler sırasında oluşabilecek veri kayıplarını önlemek için işlem bütünlüğü korunmalıdır. | Yüksek |

## 6. Erişilebilirlik ve Süreklilik Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-016 | Sistem, planlı bakım çalışmaları dışında kullanıcıların erişimine açık olmalıdır. | Yüksek |
| NFR-017 | Sistem hataları durumunda kayıtlı verilerin korunması sağlanmalıdır. | Yüksek |
| NFR-018 | Sistem verilerinin düzenli olarak yedeklenmesini desteklemelidir. | Yüksek |

## 7. Bakım ve Genişletilebilirlik Gereksinimleri

| Gereksinim ID | Gereksinim | Öncelik |
|---|---|---|
| NFR-019 | Sistem, yeni işlevlerin eklenmesine uygun modüler bir yapıda tasarlanmalıdır. | Orta |
| NFR-020 | Sistem bileşenleri ve API'ler geliştirilebilir ve sürdürülebilir bir yapıda dokümante edilmelidir. | Orta |

## 8. Varsayımlar

- Performans değerleri proje kapsamında belirlenen hedef değerlerdir.
- Gerçek bir bankacılık sisteminin altyapı ve güvenlik standartları bu çalışmada uygulanmış kabul edilmemektedir.
- Güvenlik ve erişim kontrolleri kurgusal sistem gereksinimleri üzerinden ele alınacaktır.
- Yedekleme ve sistem sürekliliği gereksinimleri tasarım düzeyinde değerlendirilecektir.
