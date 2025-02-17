# Python 3.12.3 imajını kullanıyoruz
FROM python:3.12.3-slim

# Çalışma dizinini belirliyoruz
WORKDIR /app

# Bağımlılık dosyalarını kopyalıyoruz
COPY requirements.txt /app/

# Bağımlılıkları yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyalıyoruz
COPY . /app/

# Django'nun çalışacağı portu belirtiyoruz
EXPOSE 8000

# Django uygulamasını çalıştırıyoruz
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

RUN pip3 install mergin-client

RUN pip install fiona

RUN pip install folium

RUN pip install geopandas