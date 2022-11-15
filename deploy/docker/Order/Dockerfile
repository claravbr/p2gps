FROM openjdk:8-jre

MAINTAINER clara.valrrama@alu.uclm.es

RUN mkdir -p /usr/local/app

#WORKDIR /usr/local/app

# copiar el .jar del servicio a la imagen.
# No se indica el nombre porque las versiones pueden cambiar.

COPY drop/*.jar usr/local/app/

#copiar script que se ejecutará al lanzar el contenedor
COPY drop/run.sh usr/local/app/run.sh

# Si ejecutáramos la imagen en local, este servicio tendría acceso
# local a la ip dle host de Mongo. Pero como lanzaremos una pila
# de servicos Docker (parecido a producción con una red privada),
# la ip de MongoDB no se puede descubrir al menos que se la pasemos
# en un archivo de propiedades.
COPY drop/application.properties application.properties

EXPOSE 8080

ENTRYPOINT sh usr/local/app/run.sh
