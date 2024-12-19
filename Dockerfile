# Imagen oficial de TensorFlow con soporte para GPU y Jupyter
FROM tensorflow/tensorflow:latest-gpu-jupyter

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . /app

# Instalar las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Instalar Jupyter Notebook
RUN pip install notebook

# Exponer el puerto para Jupyter Notebook
EXPOSE 8888

# Comando para iniciar Jupyter Notebook dentro del entorno virtual
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]