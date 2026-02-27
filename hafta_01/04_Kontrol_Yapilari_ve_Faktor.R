#################################################
# HAFTA 01 - KONTROL YAPILARI VE FAKTÖR
#################################################

### 1) If - Else Yapısı

a <- 5
b <- 4

# == eşitlik kontrolü
# != eşit değildir

if (a == b) {
  print("a ve b eşittir")
} else {
  print("a ve b eşit değildir")
}


### 2) Çoklu Koşul

ts <- 61

if (ts < 0) {
  print("Sayı negatiftir")
} else if (ts > 0) {
  print("Sayı pozitiftir")
} else {
  print("Sayı sıfırdır")
}


### 3) Veri Seti ile İşlemler

ilk_veri <- data.frame(
  x = c(1, 2, 3, 4),
  y = c(5, 6, 7, 8),
  cinsiyet = c("kadin", "erkek", "kadin", "erkek")
)

# Yapıyı inceleyelim
str(ilk_veri)

# Ortalama hesaplama
mean(ilk_veri$x)

# Özet istatistik
summary(ilk_veri)


### 4) Faktör Nedir?

# Faktör: Kategorik değişkenleri temsil eder.
# Regresyon, ANOVA ve sınıflandırma modellerinde gereklidir.

ilk_veri$cinsiyet <- as.factor(ilk_veri$cinsiyet)

str(ilk_veri)


### 5) Veri Üzerinde İşlem

# İlk 3 gözlem için x + y toplamı
toplam <- ilk_veri$x[1:3] + ilk_veri$y[1:3]

print(toplam)
