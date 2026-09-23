FROM python:3.10-slim

WORKDIR /app

# Gerekli dosyaları kopyala
COPY Requirements.txt .

# Kütüphaneleri yükle (Flask dahil)
RUN pip install --no-cache-dir -r Requirements.txt

# Tüm proje dosyalarını kopyala
COPY . .

# Botu ve web sunucusunu başlat (Dosya adın Vdss.py olduğu için bu şekilde bırakıyoruz)
CMD ["python", "Vdss.py"]

