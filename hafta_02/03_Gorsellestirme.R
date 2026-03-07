#################################################
# HAFTA 02 - GÖRSELLEŞTİRME
# Amaç: Temel grafik fonksiyonları ile
#       veriyi görselleştirmek
# Not: Bu dosyayı çalıştırmadan önce
#      02_Kesifci_Veri_Analizi.R dosyasını çalıştırın.
#################################################

### 1) Basit Bar Grafik

# Sayısal bir sütun için doğrudan bar grafik çizilir.
barplot(excelden_gelen_veriler$Age)

# Kategorik sütunlar için önce table() ile frekans tablosu oluşturulur.
barplot(table(excelden_gelen_veriler$Gender))


### 2) Grafik Özelleştirme

# main: başlık  |  xlab / ylab: eksen etiketleri  |  col: renk vektörü
barplot(table(excelden_gelen_veriler$Gender),
        main = "Cinsiyet Dağılımı",
        xlab = "Cinsiyet",
        ylab = "Kişi Sayısı",
        col  = c("pink", "lightblue"))
