# Шаг 1: Указываем базовый образ, от которого будет строиться наш контейнер
FROM python:3.9-slim

# Шаг 2: Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Шаг 3: Копируем все файлы из текущей директории на локальной машине в директорию /app внутри контейнера
COPY . /app

# Шаг 4: Устанавливаем все зависимости, указанные в requirements.txt
RUN pip install -r requirements.txt

# Шаг 5: Открываем порт 5000 для Flask приложения
EXPOSE 5000

# Шаг 6: Указываем команду для запуска приложения
CMD ["python", "app.py"]