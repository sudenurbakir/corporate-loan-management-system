
# Kredi Başvuru Listesi Ekranı

## 1. Ekranın Amacı

Banka çalışanlarının sisteme kaydedilmiş kredi başvurularını listelemesini, başvuruların mevcut durumlarını görüntülemesini ve ilgili başvuruya ulaşmasını sağlamak.

## 2. Ekran İçeriği

| Alan | Açıklama |
|---|---|
| Başvuru No | Başvurunun benzersiz numarası |
| Müşteri No | Başvuruyu yapan şirketin sistem numarası |
| Kredi Türü | Talep edilen kredi türü |
| Talep Edilen Tutar | Başvuru tutarı |
| Vade | Talep edilen vade süresi |
| Başvuru Durumu | Başvurunun güncel durumu |
| İşlemler | Başvuru detayına erişim |

## 3. Filtreleme ve Arama

- Başvuru numarasına göre arama
- Müşteri numarasına göre arama
- Başvuru durumuna göre filtreleme

## 4. Ekran Taslağı

```text
--------------------------------------------------
             KREDİ BAŞVURU YÖNETİMİ
--------------------------------------------------

  Başvurular

  [ Başvuru No veya Müşteri No ile ara... ]

  Durum: [ Tüm Durumlar           v ]

--------------------------------------------------
 Başvuru No | Müşteri No | Tutar     | Durum
--------------------------------------------------
 APP-0001   | CUST-001   | 500.000 TL| UNDER_REVIEW
 APP-0002   | CUST-002   | 750.000 TL| SUBMITTED
 APP-0003   | CUST-003   | 300.000 TL| APPROVED
--------------------------------------------------

                         [Detayları Görüntüle]
--------------------------------------------------

## 5. Kullanıcı İşlemleri

- Başvuru listesini görüntüleme
- Başvurular arasında arama yapma
- Başvuruları durumlarına göre filtreleme
- Seçilen başvurunun detay sayfasına gitme

## 6. İlgili API

GET /api/v1/loan-applications

Bu ekranın başvuru listesi verileri ilgili API üzerinden alınır.
