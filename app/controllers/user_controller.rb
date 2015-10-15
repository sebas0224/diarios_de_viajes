class UserController < ApplicationController
	respond_to :html, :json
	def index
		render json: "welcome", status: 200
	end

	def show
  		@users=User.all
		render :user
	end

  def login
    #byebuyg
    if (params[:mail] && params[:password])
      @login=User.login(params[:mail],params[:password])
      if @login
        render :login
      else
        render json: "Informacion incorrecta", status: 403
      end
    else
      render json: "Envie parametros", status: 400
    end
  end
  def sign_up
    @new_user=User.new(user_params)
    if(@new_user.save)
      render :new_user, status: 201
    else
      render json: @new_user.errors, status: 409
    end
   end
	
	def user_params
    params.permit(:name, :mail, :password)
  	end
end
