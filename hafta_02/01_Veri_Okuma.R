#################################################
# HAFTA 02 - VERİ OKUMA
# Amaç: R'daki yerleşik veri setlerini ve
#       harici dosyaları okumayı öğrenmek
#################################################

### 1) Yerleşik Veri Setleri

# data() R'ın içinde gömülü gelen tüm veri setlerini listeler.
data()

# Belirli bir veri setini Environment'a yükler.
data("airquality")

# Veri setini konsola yazdırır.
print(airquality)

# airquality nesnesini yeni bir değişkene atama
yeni_air_quality <- airquality

# $Wind sütununun ortalamasını hesapla
print(mean(yeni_air_quality$Wind))


### 2) Excel Dosyası Okuma

# Kaynak: kaggle.com - Airline Customer Satisfaction veri seti

# readxl paketi Excel (.xlsx) dosyalarını okumak için kullanılır.
library(readxl)

# read_excel() fonksiyonu ile .xlsx dosyası okunur.
# Not: Dosya yolu kendi çalışma ortamınıza göre güncellenmelidir.
excelden_gelen_veriler <- read_excel("Workspace/R/hafta_02/data/test_table.xlsx")

# Flight Distance sütununun ortalaması
print(mean(excelden_gelen_veriler$`Flight Distance`))
