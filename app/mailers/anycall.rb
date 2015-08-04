class Anycall < ApplicationMailer
    def welcome_email mail_receiver, mail_cc, mail_title, mail_content, mail_file_url, mail_file
        
        attachments[mail_file.original_filename] = mail_file.read     
        
        mail from: 'example@example.com',
               to: mail_receiver, 
               cc: mail_cc,
          subject: mail_title,
             body: mail_content
        
        
            # #  body: mail_content + "<br> attachment file : <a href=\"" + mail_file_url + "\">file_download</a><br>",
            #  attachment: File.new(File.join(mail_file, mail_file.path))
    end

    
    
end
