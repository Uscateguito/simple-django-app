# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY . /app

# Instala las dependencias
RUN pip install -r requirements.txt

# Expone el puerto 8000
EXPOSE 8000

# Ejecuta la aplicación Django
CMD ["python", "./cool_counters/manage.py", "runserver", "0.0.0.0:8000"]