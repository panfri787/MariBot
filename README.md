# Maribot

Maribot es un ejemplo sencillo de implementación de un bot de Telegram.

El bot simplemente devuelve una frase aleatoria al usuario que lo invoca.
___

## Instalación

Para probarlo debes obtener un api_key de tu propio bot creandolo utilizando el _Botfather_ cuyas instrucciones de uso se encuentran en [este enlace](https://core.telegram.org/bots#botfather) y sustituirla en la linea correspondiente del fichero `main.rb`.

El bot esta implementado utilizando _Sinatra.rb_ para ejecutarlo en tu maquina local tienes que tener instalado el interprete de Ruby y debes introducir los siguientes comandos:

    gem install bundle
    bundle install

Para instalar las dependencias necesarias. Y:

    ruby main.rb

Para ejecutarlo.

Nota: Necesitaras que el API de telegram tenga acceso a la dirección de tu servidor para que le lleguen las peticiones al bot.
