class DettolController < ApplicationController
    def index
    end
    
    def email_send
        receiver = params[:receiver]
        cc = params[:cc]
        title = params[:title]
        content = params[:content]
        file_url = params[:file_url]
        file_att = params[:file_att]
        
        Anycall.welcome_email(receiver, cc, title, content, file_url, file_att).deliver_now

        redirect_to '/'
        
    end
    
end
