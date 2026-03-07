#################################################
# HAFTA 02 - KEŞİFÇİ VERİ ANALİZİ
# Amaç: Veri setinin yapısını ve istatistiksel
#       özelliklerini incelemek
# Not: Bu dosyayı çalıştırmadan önce
#      01_Veri_Okuma.R dosyasını çalıştırın.
#################################################

### 1) Faktöre Dönüştürme (as.factor)

# Kategorik sütunları faktöre dönüştürmek; summary(), table() ve
# modelleme fonksiyonlarının doğru çalışmasını sağlar.
excelden_gelen_veriler$Gender <- as.factor(excelden_gelen_veriler$Gender)
excelden_gelen_veriler$Class  <- as.factor(excelden_gelen_veriler$Class)

# Veri yapısını ve sütun tiplerini göster
str(excelden_gelen_veriler)


### 2) Frekans Tablosu ve Görüntüleme

# table() her kategorinin kaç kez geçtiğini sayar.
table(excelden_gelen_veriler$Class)

# ?table yazarak yardım bölümünden detaylı bilgiye ulaşılabilir.
?table

# View() veri setini tablo olarak görüntüler.
View(excelden_gelen_veriler)


### 3) Özet İstatistikler (summary)

# Tüm veri seti özeti
summary(excelden_gelen_veriler)

# 2. ile 5. sütunlar arası özet (tüm satırlar)
summary(excelden_gelen_veriler[, c(2:5)])

# Belirli sütunların özeti (sıra önemli değil)
summary(excelden_gelen_veriler[, c(2, 7, 1)])

# Tek bir sütunun özeti
summary(excelden_gelen_veriler$`Customer Type`)


### 4) Merkezi Eğilim ve Yayılım Ölçüleri

# mean() yalnızca sayısal sütunlarda çalışır.
mean(excelden_gelen_veriler$Age)

# Faktör sütununda mean() hata üretir.
mean(excelden_gelen_veriler$Gender)

# cat() fonksiyonu çıktıyı metin ile birleştirerek yazdırır.
cat("Yaş ortalaması = ", mean(excelden_gelen_veriler$Age))

# \n ile çıktıyı bir alt satıra taşıyabilirsiniz.
cat("Yaş ortalaması:\n", mean(excelden_gelen_veriler$Age))

# Toplam ve satır sayısı üzerinden ortalama hesaplama
sum(excelden_gelen_veriler$Age)   # Yaşların toplamı
nrow(excelden_gelen_veriler)      # Veri setindeki satır sayısı

# sum / nrow → mean() ile aynı sonucu verir
print(sum(excelden_gelen_veriler$Age) / nrow(excelden_gelen_veriler))

# Medyan: veri setindeki ortanca değer
median(excelden_gelen_veriler$`Flight Distance`)

# Standart sapma
cat("Standart Sapma = ", sd(excelden_gelen_veriler$Age))
