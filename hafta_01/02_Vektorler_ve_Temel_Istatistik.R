#################################################
# HAFTA 01 - VEKTÖRLER
# Amaç: Tek boyutlu veri yapısını öğrenmek
#################################################

### 1) Sayısal Vektör Oluşturma

# c() fonksiyonu "combine" anlamına gelir.
# Birden fazla değeri bir araya getirerek vektör oluşturur.

v <- c(2, 8, 7, 5)
k <- c(4, 3.25, 3.5, 2)

# Vektör indeksleme 1'den başlar (Python gibi 0'dan başlamaz)
v[2]     # 2. eleman

# Eleman bazlı işlemler yapılır
v / k    # Her eleman karşılıklı bölünür

# Mod işlemi (kalan)
v %% k

# Tam sayı bölme
v %/% k


### 2) Karakter Vektörü

isimler <- c("Ahmet", "Mehmet", "Ayşe")

isimler[3]   # 3. elemanı getirir


### 3) Örnek Veri Vektörleri

cinsiyet <- c("erkek", "kadin", "erkek", "kadin",
              "kadin", "erkek", "erkek", "erkek",
              "erkek", "kadin")

tutum_puani <- c(1, 2, 3, 6, 3, 4, 5, 2, 3, 4)

sira_no <- 1:10   # 1'den 10'a kadar otomatik üretim

futbol_bilgisi <- c(TRUE, FALSE, TRUE, TRUE, FALSE,
                    FALSE, TRUE, FALSE, TRUE, FALSE)


### 4) Temel İstatistiksel Fonksiyonlar

# Ortalama
mean(tutum_puani)

# Medyan
median(tutum_puani)

# Frekans tablosu
table(tutum_puani)

# summary() temel özet istatistikleri verir
summary(tutum_puani)
