# App-Store-Database-Design

Bu proje, bir App Store veritabanı tasarımını ve ilgili SQL sorgularını içermektedir. Veritabanı, uygulamalar, kullanıcılar, geliştiriciler, kategoriler, yorumlar ve güncelleme geçmişi gibi çeşitli bileşenleri yönetmek için tasarlanmıştır. 

## İçindekiler

- [Veritabanı Tasarımı](#veritabanı-tasarımı)
- [Tablolar](#tablolar)
- [İlişkiler](#ilişkiler)
- [Stored Procedures](#stored-procedures)
- [Triggers](#triggers)
- [Sorgular](#sorgular)

## Veritabanı Tasarımı

Bu veritabanı, App Store içindeki uygulamaların, kullanıcıların, yorumların ve diğer ilişkili bilgilerin depolanması ve yönetilmesi için tasarlanmıştır. Tablolar, ilişkiler ve sorgular, bu bilgilerin etkili bir şekilde yönetilmesini sağlar.

## Tablolar

- `appHistory`: Uygulama güncelleme geçmişini tutar.
- `application`: Uygulama bilgilerini tutar.
- `categories`: Uygulama kategorilerini tutar.
- `comments`: Kullanıcı yorumlarını tutar.
- `developers`: Geliştirici bilgilerini tutar.
- `priceHistory`: Uygulama fiyat geçmişini tutar.
- `statusHistory`: Uygulama durum geçmişini tutar.
- `users`: Kullanıcı bilgilerini tutar.

## İlişkiler

Tablolar arasında çeşitli yabancı anahtar ilişkileri bulunmaktadır. Bu ilişkiler, aşağıdaki gibidir:

- `appHistory.application_appID` -> `application.appID`
- `appHistory.developers_developerID` -> `developers.developerID`
- `application.categories_categoryID` -> `categories.categoryID`
- `application.developers_developerID` -> `developers.developerID`
- `application.users_userID` -> `users.userID`
- `comments.application_appID` -> `application.appID`
- `comments.users_userID` -> `users.userID`
- `priceHistory.application_appID` -> `application.appID`
- `statusHistory.application_appID` -> `application.appID`


<img src="http://url/to/PlayStoreDatabaseFiles/images/er_diagram.png" alt="alt text" width="320" height="180">

