# Proyecto de Prueba Técnica - Data Science

### Nota: Este repositorio se ampliará con la puesta en produccion del modelo. Construiré una API y la desplegaré en la nube.

## Descripción
Este proyecto tiene como objetivo realizar un análisis exploratorio de datos (EDA) y la creación de un modelo de Machine Learning utilizando Docker para empaquetar el código y las dependencias. El código y las dependencias están empaquetados dentro de un contenedor Docker para facilitar su ejecución en cualquier entorno sin necesidad de configuraciones adicionales.

## Requisitos
- Docker instalado en tu máquina. Si no lo tienes, puedes instalarlo desde [aquí](https://www.docker.com/get-started).

## Instrucciones

### 1. Clona este repositorio

```bash
git clone https://github.com/Gerardo-Huerta-Esc/proyecto-ml.git
cd proyecto-ml
```
### 2. Construir la imagen Docker

Para construir la imagen Docker con el código y las dependencias, ejecuta el siguiente comando dentro del directorio donde se encuentra el Dockerfile:


```bash
docker build -t prueba_ds_gerardo_huerta .

```
Esto descargará y preparará todas las dependencias necesarias definidas en el archivo requirements.txt, así como instalará JupyterLab.

### 3. Correr el contenedor Docker
Una vez que la imagen esté construida, puedes correr un contenedor basado en esa imagen:

```bash
docker run -p 8888:8888 prueba_ds_gerardo_huerta

```
Esto expondrá el puerto 8888 de JupyterLab, lo que te permitirá acceder a Jupyter desde tu navegador.

### 4. Acceder a JupyterLab
Después de ejecutar el comando anterior, abre tu navegador y accede a la siguiente URL:

```bash
http://localhost:8888

```
Deberías ver la interfaz de JupyterLab donde podrás abrir el archivo eda.ipynb y ejecutar el código.

### Archivos incluidos en el proyecto:


- **Dockerfile:** Contiene la configuración para construir la imagen Docker con todas las dependencias necesarias.

- **eda.ipynb: El** cuaderno de Jupyter con el análisis exploratorio de datos y el modelo de Machine Learning.

- **requirements.txt:** El archivo de dependencias que incluye todas las librerías necesarias para ejecutar el proyecto.

- **Datasets:** Archivos de datos que se utilizan en el análisis.

### NOTA

Este proyecto utiliza Docker para empaquetar todo el entorno de ejecución, lo que asegura que el código se pueda ejecutar sin problemas en cualquier sistema, sin tener que preocuparse por dependencias o configuraciones adicionales.

_____________

¡Espero que disfrutes ejecutando este proyecto y que te haya resultado útil! Si tienes alguna pregunta o sugerencia, no dudes en contactarme.
