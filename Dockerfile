# Usa una imagen base con Python
FROM python:3.10-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo de requerimientos
COPY requirements.txt .

# Instalar dependencias del archivo requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del proyecto (código y archivos de datos)
COPY . .

# Exponer el puerto de Jupyter (puerto predeterminado 8888)
EXPOSE 8888

# Instalar Jupyter y otras herramientas útiles
RUN pip install jupyterlab

# Comando para iniciar Jupyter Lab dentro del contenedor
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
