#!/bin/bash
#no lonzar el .jar hasta que no esté accesible el servicio de MongoDB
# el host `mongo´, utilizado aquí y en el #archivo application.properties

while ! curl http://mongo:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"

java -jar usr/local/app/ordering-service-0.1.0.jar -spring.config.location=application.properties