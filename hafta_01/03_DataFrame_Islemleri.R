#################################################
# HAFTA 01 - DATA FRAME
# Amaç: Çok değişkenli veri yapısı oluşturmak
#################################################

### 1) Data Frame Oluşturma

# Data frame satır (gözlem) ve sütunlardan (değişken) oluşur.

ogrenci_veri <- data.frame(
  sira_no = 1:10,
  cinsiyet = c("erkek", "kadin", "erkek", "kadin",
               "kadin", "erkek", "erkek", "erkek",
               "erkek", "kadin"),
  tutum_puani = c(1, 2, 3, 6, 3, 4, 5, 2, 3, 4)
)

# Veri yapısını inceleme
str(ogrenci_veri)

# Sütun isimleri
colnames(ogrenci_veri)


### 2) Veri Seçme (Indexing)

# Tek sütun seçme
ogrenci_veri$cinsiyet

# 3. sütun
ogrenci_veri[3]

# 4. satır, 2. sütun
ogrenci_veri[4, 2]

# İlk 3 satır
ogrenci_veri[1:3, ]

# Belirli sütunları seçme
ogrenci_veri[, c(1, 3)]

# Belirli satır ve sütun kombinasyonu
ogrenci_veri[c(1, 3, 5), c(1, 3)]


### 3) Yeni Bir Veri Seti Oluşturma

sinav_veri <- data.frame(
  ogrenci_id = 1:10,
  sinav1 = c(80, 75, 90, 85, 70, 95, 88, 76, 82, 91),
  sinav2 = c(82, 78, 87, 88, 72, 97, 85, 79, 84, 93)
)

str(sinav_veri)
summary(sinav_veri)
