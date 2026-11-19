
# Kredi Başvurusu Belge Yönetimi Ekranı

## 1. Ekranın Amacı

Banka çalışanlarının kredi başvurusuna ait belge kayıtlarını görüntülemesini ve belgelerin kontrol durumlarını takip etmesini sağlamak.

## 2. Ekran İçeriği

| Alan | Açıklama |
|---|---|
| Belge No | Belgenin benzersiz numarası |
| Başvuru No | Belgenin bağlı olduğu başvuru |
| Belge Türü | Belgenin kategorisi |
| Belge Durumu | Belgenin güncel kontrol durumu |

## 3. Belge Durumları

| Durum | Açıklama |
|---|---|
| PENDING | Belge kontrol bekliyor |
| RECEIVED | Belge sisteme alınmış |
| VERIFIED | Belge kontrol edilmiş ve uygun bulunmuş |
| REJECTED | Belge uygun bulunmamış |

## 4. Ekran Taslağı

```text
--------------------------------------------------
              BELGE YÖNETİMİ
--------------------------------------------------

Başvuru No: APP-0001

--------------------------------------------------
Belge No | Belge Türü     | Durum
--------------------------------------------------
DOC-001  | Finansal Tablo | VERIFIED
DOC-002  | Vergi Belgesi  | RECEIVED
DOC-003  | Faaliyet Bel.  | PENDING
--------------------------------------------------

             [Belge Ekle]

--------------------------------------------------
Seçili Belge: DOC-002
Belge Türü: Vergi Belgesi
Mevcut Durum: RECEIVED

             [Durumu Güncelle]
--------------------------------------------------
```

## 5. Kullanıcı İşlemleri

- Başvuruya ait belge kayıtlarını listeleme
- Yeni belge kaydı oluşturma
- Belge türünü görüntüleme
- Belge durumunu yetkisi dahilinde güncelleme

## 6. İlgili API'ler

- GET /api/v1/loan-applications/{id}/documents
- POST /api/v1/loan-applications/{id}/documents
