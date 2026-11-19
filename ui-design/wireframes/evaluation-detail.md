
# Kredi Değerlendirme Ekranı

## 1. Ekranın Amacı

Kredi değerlendirme yetkilisinin başvuru bilgilerini incelemesini, değerlendirme kaydı oluşturmasını ve değerlendirme sonucunu sisteme kaydetmesini sağlamak.

## 2. Ekran İçeriği

### Başvuru Bilgileri

| Alan | Açıklama |
|---|---|
| Başvuru No | Başvurunun benzersiz numarası |
| Müşteri No | Başvuruyu yapan şirketin sistem numarası |
| Kredi Türü | Talep edilen kredi türü |
| Talep Edilen Tutar | Başvuru tutarı |
| Vade | Talep edilen vade süresi |
| Başvuru Durumu | Başvurunun güncel durumu |

### Değerlendirme Bilgileri

| Alan | Açıklama |
|---|---|
| Değerlendirme No | Değerlendirme kaydının numarası |
| Değerlendirme Sonucu | Değerlendirmenin sonucu |
| Değerlendirme Tarihi | İşlemin gerçekleştirildiği tarih |

## 3. Değerlendirme Sonuçları

| Sonuç | Açıklama |
|---|---|
| IN_PROGRESS | Değerlendirme devam ediyor |
| APPROVED | Başvuru onaylandı |
| REJECTED | Başvuru reddedildi |

## 4. Ekran Taslağı

```text
--------------------------------------------------
              KREDİ DEĞERLENDİRME
--------------------------------------------------

Başvuru No: APP-0001
Mevcut Durum: UNDER_REVIEW

--------------------------------------------------
BAŞVURU BİLGİLERİ
--------------------------------------------------
Müşteri No        : CUST-001
Kredi Türü        : Ticari Kredi
Talep Edilen Tutar: 500.000 TL
Vade              : 24 Ay

--------------------------------------------------
DEĞERLENDİRME
--------------------------------------------------

Değerlendirme Sonucu:

( ) IN_PROGRESS
( ) APPROVED
( ) REJECTED

              [Değerlendirmeyi Kaydet]

--------------------------------------------------
DEĞERLENDİRME GEÇMİŞİ
--------------------------------------------------
Değerlendirme No | Sonuç       | Tarih
EVAL-001         | IN_PROGRESS | 10.11.2026

--------------------------------------------------
```

## 5. Kullanıcı İşlemleri

- Başvuru bilgilerini görüntüleme
- Değerlendirme sonucunu belirleme
- Değerlendirme kaydı oluşturma
- Önceki değerlendirme kayıtlarını görüntüleme

## 6. İlgili API'ler

- POST /api/v1/loan-applications/{id}/evaluations
- GET /api/v1/loan-applications/{id}/evaluations
- PATCH /api/v1/loan-applications/{id}/status
```
