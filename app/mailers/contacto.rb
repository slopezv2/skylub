class Contacto < ApplicationMailer
  def enviar_contacto(correo,nombre,mensaje)
      @correo = correo
      @nombre = nombre
      @mensaje = mensaje
      mail( to: ENV["MAIL_FOR"], subject: 'Contacto por pagina' )
    end
end
