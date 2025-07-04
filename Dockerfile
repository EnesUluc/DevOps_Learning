# *Dockerfile: Creating for our own image files.
#İmage olarak node.js kullandım
# FROM: Çalıştırmak istediğimiz imajı gösterir.
FROM node:22.17.0

# LABEL: Bilgilendirmek
#LABEL maintainer="enesuluc@hotmail.com"

# ENV: Ortam değişkenleri
#ENV APP_NAME="Node Js, Dockerfile"
#ENV PORT="8081"
#RUN echo "App Name: $APP_NAME"

# VOLUME: Kalıcılık(Persist) ->“Container içindeki /tmp klasörü, host makinede (senin bilgisayarında) ya da Docker’ın volume sistemi tarafından yönetilen kalıcı bir alana bağlansın.”
#VOLUME /tmp

# HEALTHCHECK: Bu container çalışıyor mu, çalışmııyor mu
#HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \CMD curl -f http://localhost:8081 || exit 1

# WORKDIR: Çalışma dizini
WORKDIR /usr/src/app

# COPY: Image koyyalamak için
# package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# RUN: İmaj için gerekli yüklemeleri alırız
# Bağımlılıkları yükle
RUN npm install 

#Proje klasöründeki tüm dosyaları container'a kopyalar. 
COPY . . 
 
# EXPOSE: Port numarası
EXPOSE 8081 

# CMD: Gerekli yüklemelerden sonra çalışmasını isteyeceğimiz komutlar
# Uygulamayı başlat
CMD ["npm","start"]

# ENTRYPOINT: Çalıştırılacak komut yolu
# USER: Kullanıcı gösterir, USER poweruser
# ADD: Eklemeler
# ARG: Argümanlar

# docker container run --name node_app -d -p 8081:8081 app_project