
# Kredi Yönetim Sistemi Kullanım Senaryoları

## Amaç

Bu diyagram, kredi yönetim sistemindeki kullanıcı rollerini ve bu rollerin gerçekleştirebildiği temel işlemleri göstermektedir.

## Kullanım Senaryosu Diyagramı

```mermaid
flowchart LR
    KO[Kredi Operasyon Yetkilisi]
    KD[Kredi Değerlendirme Yetkilisi]
    SY[Sistem Yöneticisi]

    subgraph Sistem[Kredi Yönetim Sistemi]
        U1([Başvuru oluşturma])
        U2([Başvuruları listeleme])
        U3([Başvuru detaylarını görüntüleme])
        U4([Başvuru bilgilerini güncelleme])
        U5([Belge kayıtlarını yönetme])
        U6([Kredi değerlendirmesi oluşturma])
        U7([Başvuru durumunu güncelleme])
        U8([Değerlendirme geçmişini görüntüleme])
    end

    KO --> U1
    KO --> U2
    KO --> U3
    KO --> U4
    KO --> U5

    KD --> U2
    KD --> U3
    KD --> U5
    KD --> U6
    KD --> U7
    KD --> U8

    SY --> U2
    SY --> U3
```

## Açıklama

Sistem üç temel kullanıcı rolü üzerinden ele alınmıştır:

- **Kredi Operasyon Yetkilisi:** Başvuruları oluşturur, listeler, başvuru bilgilerini ve belge kayıtlarını yönetir.
- **Kredi Değerlendirme Yetkilisi:** Başvuruları inceler, değerlendirme kayıtlarını oluşturur ve başvuru durumunu günceller.
- **Sistem Yöneticisi:** Sistem kapsamında başvuruları görüntüleyebilir ve yönetim süreçlerini takip edebilir.

**Not:** Kullanıcıların işlem yetkileri proje kapsamında belirlenen rol ve yetkilendirme kurallarına göre sınırlandırılır.
```
