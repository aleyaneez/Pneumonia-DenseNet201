# Clasificación de imágenes médicas de tórax para predicción de Neumonía: Aplicación de DenseNet-201

Este proyecto implementa un modelo de Deep Learning para clasificar radiografías de tórax en dos categorías: **Normal** y **Neumonía**. Si bien son dos categorías y se trata de un problema binario, se utiliza la arquitectura DenseNet-201 preentrenada para extraer características y un conjunto de capas personalizadas para una clasificación categórica, para obtener dos salidas en vez de una sola. El modelo está optimizado para funcionar con imágenes médicas e intentar mejorar la detección temprana de neumonía.

Para una ejecución más fácil de este proyecto, se utiliza Docker para buildear el Jupyter Notebook junto a sus librerías necesarias.

## Requisitos previos

Antes de empezar, asegúrate de que tienes lo siguiente instalado en tu máquina Linux o WSL:

- [Docker](https://www.docker.com/): Asegúrate de que Docker está instalado y ejecutándose correctamente.
- [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#prerequisites): Para utilizar correctamente TensorFlow con GPU.

Puedes verificar que Docker funciona correctamente ejecutando:

```bash
docker --version
```

Verifica que `nvidia-smi` funciona:

```bash
nvidia-smi
```

---

## Pasos para construir y ejecutar el contenedor

### 1. Clonar el repositorio

Clona este repositorio en tu máquina local:

```bash
git clone https://github.com/aleyaneez/Pneumonia-DenseNet201.git
cd Pneumonia-DenseNet201
```

### 2. Construir la imagen Docker

Usa el siguiente comando para construir la imagen con el nombre que desees desde el `Dockerfile`:

```bash
docker build -t nombre_imagen .
```

Debes escoger un nombre en minúsculas, por ejemplo:

```bash
docker build -t proyecto-dl .
```

Esto creará una imagen llamada `proyecto-dl`.

---

### 3. Ejecutar el contenedor

Ejecutas el contenedor con el uso de GPU con el siguiente comando:

```bash
docker run --gpus all -p 8888:8888 nombre_imagen
```

Esto asignará todas las GPUs disponibles al contenedor.

---

### 4. Acceder a Jupyter Notebook

Una vez que el contenedor esté en ejecución, deberías ver un enlace en la terminal similar a este:

```
http://127.0.0.1:8888/tree?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

Copia y pega el enlace en tu navegador para acceder a Jupyter Notebook.

---

## Comandos útiles

### Listar imágenes disponibles

```bash
docker images
```

### Listar contenedores (incluyendo los detenidos)

```bash
docker ps -a
```

### Eliminar una imagen

```bash
docker rmi <image_id>
```

**Consejo:** Para eliminar una imagen, solo basta con escribir los primeros 4 carácteres de la imagen.

### Eliminar todos los contenedores detenidos

```bash
docker container prune
```

---

## Notas

- **NVIDIA Drivers**: Debes tener los drivers de NVIDIA instalados.

Si tienes dudas o problemas, por favor abre un issue en este repositorio.

¡Gracias por usar este proyecto! 🚀
