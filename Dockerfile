# Python 3.7 sürümünü kullan
FROM python:3.7-slim

# Çalışma dizini olarak '/app' dizinini kullan.
WORKDIR /app

# Bağımlılıkları içeren requirements.txt dosyasını '/app' dizinine kopyala.
COPY requirements.txt .

# Bağımlılıkları yükle.
RUN pip install -r requirements.txt

# Kaynak kodunu '/app' dizinine kopyala.
COPY app.py .

# Uygulamanın dinleyeceği port numarası.
EXPOSE 5000

# Uygulamayı başlatma komutu.
CMD [ "python", "app.py" ]
