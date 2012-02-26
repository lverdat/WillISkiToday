class HomeController < ActionController::Base
  layout 'application'
  
  # GET /home
  # GET /home.json
  def index
    @hills = Hill.all
    @client = Client.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client }
    end
  end
  
   def login
    if request.post?
      if session[:client] = Client.where("login = ? AND pass = ?", params[:login], params[:pass]);
        flash[:message] = "Login successfull"
      else
        flash[:warning] = "Login unsuccessfull"
      end
    end
    
    redirect_to :action => 'index'
  end
  
  def logout
    session[:client] = nil
    flash[:message] = "Logged out"
    redirect_to :action => 'index'
  end
end