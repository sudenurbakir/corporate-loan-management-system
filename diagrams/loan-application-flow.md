
# Kredi Başvuru Süreci Akış Diyagramı

## Amaç

Bu diyagram, kurumsal kredi başvurusunun bankaya iletilmesinden değerlendirme sonucunun oluşturulmasına kadar geçen iş sürecini göstermektedir.

## Süreç Akışı

```mermaid
flowchart TD
    A([Başlangıç]) --> B[Şirket kredi başvurusunu iletir]
    B --> C[Sistem başvuruyu kaydeder]
    C --> D[Başvuru bilgileri kontrol edilir]

    D --> E{Bilgiler eksiksiz ve geçerli mi?}

    E -- Hayır --> F[Eksik veya hatalı bilgiler için düzeltme istenir]
    F --> D

    E -- Evet --> G[Başvuru değerlendirmeye alınır]
    G --> H[Gerekli belgeler incelenir]
    H --> I[Kredi değerlendirmesi yapılır]

    I --> J{Kredi başvurusu onaylandı mı?}

    J -- Evet --> K[Başvuru durumu APPROVED olarak güncellenir]
    J -- Hayır --> L[Başvuru durumu REJECTED olarak güncellenir]

    K --> M[Başvuru sonucu kaydedilir]
    L --> M

    M --> N([Süreç tamamlanır])
```

## Açıklama

Başvuru süreci, şirketin kredi talebini bankaya iletmesiyle başlar. Sistem başvuruyu kaydettikten sonra bilgilerin eksiksiz ve geçerli olup olmadığı kontrol edilir.

Bilgiler uygun değilse düzeltme istenir. Kontrolü geçen başvurular değerlendirme aşamasına alınır. Gerekli belgeler incelenerek kredi değerlendirmesi yapılır.

Değerlendirme sonucunda başvuru onaylanır veya reddedilir. Son karar sistemde kaydedilerek süreç tamamlanır.

**Not:** Bu diyagram, proje kapsamında tasarlanan hedef süreci (To-Be) temsil etmektedir.
