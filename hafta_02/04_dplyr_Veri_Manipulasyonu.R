#################################################
# HAFTA 02 - DPLYR İLE VERİ MANİPÜLASYONU
# Amaç: dplyr paketi ile yeni sütun ekleme,
#       toplu tip dönüşümü, değer değiştirme
#       ve satır filtreleme
#################################################

### 1) dplyr Paketini Yükleme

# dplyr veri manipülasyonu için yaygın kullanılan bir pakettir.
install.packages("dplyr")
library("dplyr")


### 2) mutate() ile Yeni Sütun Ekleme

# Küçük bir örnek veri seti
yeni_veriler <- data.frame(
  ad  = c("Ali", "Ayşe", "Mehmet"),
  yas = c(20, 50, 60)
)

# mutate() mevcut sütunları kullanarak yeni bir sütun ekler.
# %>% (pipe) operatörü soldaki nesneyi sağdaki fonksiyona iletir.
yeni_veriler <- yeni_veriler %>% mutate(sonraki_yas = yas + 5)
print(yeni_veriler)


### 3) Toplu Veri Tipi Dönüşümü

# across() + where() kombinasyonu ile tüm karakter sütunları
# tek seferde faktöre dönüştürülür.
# Not: Bu dosyayı çalıştırmadan önce 01_Veri_Okuma.R dosyasını çalıştırın.
excelden_gelen_veriler <- excelden_gelen_veriler %>%
  mutate(across(where(is.character), as.factor))

str(excelden_gelen_veriler)


### 4) recode() ile Değer Değiştirme

# recode() bir faktör sütunundaki kategorileri yeniden adlandırır.
excelden_gelen_veriler$Gender <- recode(excelden_gelen_veriler$Gender,
                                        "Female" = "Kadın",
                                        "Male"   = "Erkek")

View(excelden_gelen_veriler)


### 5) Satır Filtreleme

# Köşeli parantez ile koşula uyan satırlar seçilir.
# [satır koşulu, ] → virgülden sonrası boş bırakılırsa tüm sütunlar gelir.
erkekler <- excelden_gelen_veriler[excelden_gelen_veriler$Gender == "Erkek", ]
View(erkekler)
