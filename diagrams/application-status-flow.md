
# Kredi Başvuru Durumları Diyagramı

## Amaç

Bu diyagram, kredi başvurusunun sistem içerisindeki durumlarını ve değerlendirme sürecindeki geçişlerini göstermektedir.

## Durum Akışı

```mermaid
flowchart TD
    A([Başvuru oluşturulur]) --> B[SUBMITTED]
    B --> C[Yetkili kullanıcı değerlendirmeyi başlatır]
    C --> D[UNDER_REVIEW]

    D --> E{Değerlendirme sonucu}
    E -->|Onay| F[APPROVED]
    E -->|Ret| G[REJECTED]

    F --> H([Süreç tamamlanır])
    G --> H

    I[CANCELLED] --> J([Süreç tamamlanır])
```

## Açıklama

- **SUBMITTED:** Başvuru sisteme kaydedildiğinde atanır.
- **UNDER_REVIEW:** Yetkili kullanıcı değerlendirmeyi başlattığında atanır.
- **APPROVED:** Kredi başvurusu onaylandığında atanır.
- **REJECTED:** Kredi başvurusu reddedildiğinde atanır.
- **CANCELLED:** Başvuru iptal edildiğinde atanır.

**Not:** APPROVED ve REJECTED durumları tamamlanmış başvuruları ifade eder. Bu durumlardan tekrar değerlendirme aşamasına geçiş yapılamaz. CANCELLED durumu da iptal edilmiş başvurular için kullanılan son durumdur.
```
