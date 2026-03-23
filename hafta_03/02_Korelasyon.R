#################################################
# HAFTA 03 - KORELASYON ANALİZİ
# Amaç: İki sayısal değişken arasındaki ilişkiyi
#       korelasyon katsayısı ile ölçmek
# Not: Bu dosyayı çalıştırmadan önce
#      hafta_02/01_Veri_Okuma.R dosyasını çalıştırın.
#################################################

### 1) psych Paketini Yükleme

install.packages("psych")
library(psych)


### 2) Korelasyon Hesaplama

# Soru: Yaş ile uçuş mesafesi arasında bir ilişki var mı?
corr.test(excelden_gelen_veriler$Age, excelden_gelen_veriler$`Flight Distance`)
# r = 0.1 (Korelasyon katsayısı: −1 <= r <= 1) çok zayıf pozitif ilişki
# Anlamı: Yaş arttıkça uçuş mesafesi çok hafif artma eğilimi gösteriyor, ama ilişki oldukça zayıf.

# Anlam tablosu:
# | r değeri  | yorum        |
# | --------- | ------------ |
# | 0         | ilişki yok   |
# | 0.1 – 0.3 | zayıf ilişki |
# | 0.3 – 0.5 | orta         |
# | 0.5+      | güçlü        |
