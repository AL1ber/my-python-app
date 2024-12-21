# Используем официальный Python образ
FROM python:3.9-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем файлы приложения в контейнер
COPY . /app

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Открываем порт 5000 для Flask приложения
EXPOSE 5000

# Запускаем приложение
CMD ["python", "app.py"]