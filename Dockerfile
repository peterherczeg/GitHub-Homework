# Az alap kép kiválasztása, az Nginx legújabb hivatalos képe
FROM nginx:latest

# Az alapértelmezett Nginx konfigurációs fájl cseréje egy saját konfigurációs fájlra
COPY nginx.conf /etc/nginx/nginx.conf

# Statikus weboldal fájljainak másolása a konténerbe
COPY *.html /usr/share/nginx/html

# A szerver indítása
CMD ["nginx", "-g", "daemon off;"]