#################################################
# HAFTA 03 - T-TESTİ
# Amaç: İki grup ortalaması arasındaki istatistiksel
#       farkı t-testi ile test etmek
# Not: Bu dosyayı çalıştırmadan önce
#      hafta_02/01_Veri_Okuma.R dosyasını çalıştırın.
#################################################

### 1) T-Test Nedir?

?t.test()

# Kadın ve Erkeklerin uçuş mesafeleri (Flight Distance) farklı mı?
# (İstatistiksel olarak anlamlı fark var mı?)
# Loyal Customer ile Disloyal Customer olan müşterilerin Flight Distance'ları arasında fark var mı?


### 2) Müşteri Tipine Göre T-Testi

# Bağımlı Değişken: Flight Distance
# Gruplandırma Değişkeni: Customer Type
# Soru: Uçuş mesafesi müşteri tipine göre değişiyor mu?
t.test(`Flight Distance` ~ `Customer Type`, data = excelden_gelen_veriler)
# Sonuç:
# t = -57.98 (t = iki ortalama farkı / standart sapma)
# t değeri sıfıra yakınsa ortalamalar benzerdir, büyükse ortalamalar farklıdır.

# df = 15763 (Serbestlik derecesi)
# p-value = 2.2e−16 = 0.00000000000000022

# H0: ortalamalar eşit
# H1: ortalamalar farklı

# Burada p < 0.05 ise H0 reddedilir.

# Sonuç olarak: Loyal ve disloyal müşterilerin uçuş mesafesi istatistiksel olarak farklıdır.

# Alternative Hypothesis: iki grubun ortalamaları eşit değildir.

# Confidence Interval: -610.0119 -570.1157 (disloyal - loyal) (aralık sıfır içermiyor)
# Sonuç olarak: Sadık müşteriler ortalama olarak 570–610 km daha uzun uçuş yapıyor.

# Grup Ortalamaları:
# mean in group disloyal Customer    712.7374
# mean in group Loyal Customer      1302.8012
# Sonuç olarak: Sadık Müşteriler ~590 km daha fazla uçuyor

# İstatistiksel Yorum:
# Sadık ve sadık olmayan müşterilerin uçuş mesafeleri anlamlı şekilde farklıdır
# p-value çok küçük olduğu için fark rastgele değildir
# Sadık müşteriler çok daha uzun mesafe uçmaktadır


### 3) Cinsiyete Göre T-Testi

# Soru: Uçuş mesafesi cinsiyete göre değişiyor mu?
t.test(`Flight Distance` ~ `Gender`, data = excelden_gelen_veriler)
