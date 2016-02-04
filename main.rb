require 'sinatra'
require 'json'
require 'net/http'

post '/' do
  # Recupero los datos de la llamada al bot
  json = JSON.parse request.body.read
  mensaje = json['message']
  usuario = mensaje['chat']

  array_frases = ['No se que le veis a esa',
                  'Yo estoy mucho mas buena',
                  "A las 9 es muy pronto, ¿Quedamos a las 9:30?",
                  "¡Si no tiene culo!",
                  "¡Esta plana!",
                  "Vamos mejor al montaditos, ¿No?",
                  "¿Alguien juega al padel?",
                  "¡Que pesados con Melosa! Yo estoy mas buena",
                  'Cdddddddd',
                  "¿Vamos mañana a la playa de perros?",
                  'Nosotros ya hemos quedado',
                  "¿Vais a coger mesa para hogueras con nosotros?",
                  'Ya tenemos mesa, a ver si os dejan poner la vuestra al lado',
                  "Edu mañana tiene despedida",
                  "¿Vamos al Montaditos?",
                  'Q pesaos',
                  'Ese a mi casa no entra',
                  'Pero porque le llamais?',
                  'Tengo noticias que daros',
                  'Estamos mirando sitios para la boda',
                  'Pb, vente que me tomo un parrillero',
                  "💿",
                  'Jorge, deja el chocolate',
                  'No subais esa foto que Edu se enfada',
                  'Edu esta rayado con la foto',
                  'Mi boda la celebro en el shushi',
                  "Él no esta dado de alta en el sindicato de Dj's"]

  # Codifico en URL-encode un string aleatorio del array
  frase_elegida = URI.encode array_frases.sample

  # Hago una llamada al API de Bots de telegram para contestar al usuario que activa el bot
	# Sustituir {{api_key}} por la key asociada a tu bot
  uri = URI('https://api.telegram.org/{{api_key}}/sendMessage?chat_id=' + usuario['id'].to_s + '&text=' + frase_elegida.to_s)

  Net::HTTP.get(uri)
end
