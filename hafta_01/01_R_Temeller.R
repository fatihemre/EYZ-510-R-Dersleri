#################################################
# HAFTA 01 - R TEMELLERİ
# Amaç: R ortamına giriş, temel işlemler ve veri tipleri
#################################################

### 1) R bir hesap makinesi gibi çalışabilir

3 * 4              # Çarpma işlemi
124 * 23 / 42      # Birden fazla işlem yapılabilir


### 2) Değişken Tanımlama

# R'da değişken atamak için önerilen operatör: <-
# = kullanılabilir ancak akademik ve profesyonel kullanımda <- tercih edilir.
# Temelde = ile <- sembolü arasında scope farkı bulunur ancak bu farklı bir dersin konusudur.

sayi_1 <- 5
sayi_2 <- 4

# İki değişkenin toplamını yeni bir değişkende saklayalım
toplam <- sayi_1 + sayi_2

# print() fonksiyonu çıktıyı konsola yazdırır
print(toplam)


### 3) Karakter (Metin) Veri Tipi

mesaj <- "Merhaba R Dünyası"
print(mesaj)

# class() fonksiyonu bir değişkenin veri tipini gösterir
class(mesaj)


### 4) Mantıksal (Logical) Veri Tipi

mantiksal_deger <- TRUE
class(mantiksal_deger)

# R'da mantıksal değerler TRUE ve FALSE şeklindedir.

