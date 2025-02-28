FROM python:3.11-slim

# Создаём рабочую директорию
WORKDIR /app

# Скопируем файлы зависимостей
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Скопируем всё остальное
COPY . .

# Запускаем бота
CMD ["python", "main.py"]
