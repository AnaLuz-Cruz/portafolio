# Usa una imagen base de Python
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app


# Instala las dependencias
RUN pip install flask

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que corre la app
EXPOSE 5000

ENV FLASK_APP=hola.py

# Comando para ejecutar la aplicación
CMD ["flask", "run", "--host=0.0.0.0"]
