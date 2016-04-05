class WelcomeController < ApplicationController
  def index
  end

  def combustibles
  end

  def lubricantes
  end

  def metalmecanica
  end

  def enviar_co
    if correo_entrante[:correo]
        correo = correo_entrante[:correo]
        nombre = correo_entrante[:nombre]
        mensaje = correo_entrante[:mensaje]
        Contacto.enviar_contacto(correo,nombre,mensaje).deliver_now

    end
    redirect_to root_url
  end

    private
    def correo_entrante
      params.require(:correo).permit(:correo, :nombre, :mensaje)
    end
end
