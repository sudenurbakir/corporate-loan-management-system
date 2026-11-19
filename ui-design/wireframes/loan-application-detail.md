
# Kredi Başvuru Detay Ekranı

## 1. Ekranın Amacı

Banka çalışanlarının seçilen kredi başvurusuna ait temel bilgileri, belge kayıtlarını ve değerlendirme geçmişini görüntülemesini sağlamak.

## 2. Ekran İçeriği

### Başvuru Bilgileri

| Alan | Açıklama |
|---|---|
| Başvuru No | Başvurunun benzersiz numarası |
| Müşteri No | Başvuruyu yapan şirketin sistem numarası |
| Kredi Türü | Talep edilen kredi türü |
| Talep Edilen Tutar | Başvuru tutarı |
| Para Birimi | Başvurunun para birimi |
| Vade | Talep edilen vade süresi |
| Başvuru Durumu | Başvurunun güncel durumu |

### Belge Bilgileri

| Alan | Açıklama |
|---|---|
| Belge No | Belgenin benzersiz numarası |
| Belge Türü | Belgenin kategorisi |
| Belge Durumu | Belgenin güncel durumu |

### Değerlendirme Geçmişi

| Alan | Açıklama |
|---|---|
| Değerlendirme No | Değerlendirme kaydının numarası |
| Değerlendirme Sonucu | Değerlendirme sonucu |
| Değerlendirme Tarihi | İşlemin gerçekleştirildiği tarih |

## 3. Ekran Taslağı

```text
--------------------------------------------------
              KREDİ BAŞVURU DETAYI
--------------------------------------------------

Başvuru No: APP-0001
Durum: UNDER_REVIEW

--------------------------------------------------
BAŞVURU BİLGİLERİ
--------------------------------------------------
Müşteri No       : CUST-001
Kredi Türü       : Ticari Kredi
Talep Edilen Tutar: 500.000 TL
Vade             : 24 Ay

--------------------------------------------------
BELGE BİLGİLERİ
--------------------------------------------------
Belge Türü        | Belge Durumu
Finansal Tablo    | RECEIVED
Vergi Belgesi     | VERIFIED

--------------------------------------------------
DEĞERLENDİRME GEÇMİŞİ
--------------------------------------------------
Değerlendirme No | Sonuç       | Tarih
EVAL-001         | IN_PROGRESS | 10.11.2026

--------------------------------------------------
[Başvuru Bilgilerini Güncelle]
[Belge Kayıtlarını Görüntüle]
[Değerlendirme Geçmişini Görüntüle]
--------------------------------------------------
```

## 4. Kullanıcı İşlemleri

- Başvuru bilgilerini görüntüleme
- Yetkisi dahilinde başvuru bilgilerini güncelleme
- Başvuruya ait belge kayıtlarını görüntüleme
- Değerlendirme geçmişini görüntüleme

## 5. İlgili API'ler

- GET /api/v1/loan-applications/{id}
- PATCH /api/v1/loan-applications/{id}
- GET /api/v1/loan-applications/{id}/documents
- GET /api/v1/loan-applications/{id}/evaluations
