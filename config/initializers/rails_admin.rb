RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model User do
    create do
      configure :sales do
        hide
      end 
      configure :last_sign_in_ip do
        hide
      end  
      configure :current_sign_in_ip do
        hide
      end  
      configure :last_sign_in_at do
        hide
      end 
      configure :current_sign_in_at do
        hide
      end 
      configure :remember_created_at do
        hide
      end 
      configure :reset_password_token do
        hide
      end
      configure :reset_password_token do
        hide
      end 
      configure :encrypted_password do
        hide
      end 
      configure :updated_at do
        hide
      end 
      configure :sign_in_count do
        hide
      end 
      configure :shcedules do
        hide
      end    
    end
    edit do
            configure :sales do
        hide
      end 
      configure :last_sign_in_ip do
        hide
      end  
      configure :current_sign_in_ip do
        hide
      end  
      configure :last_sign_in_at do
        hide
      end 
      configure :current_sign_in_at do
        hide
      end 
      configure :remember_created_at do
        hide
      end 
      configure :reset_password_token do
        hide
      end
      configure :reset_password_token do
        hide
      end 
      configure :encrypted_password do
        hide
      end 
      configure :updated_at do
        hide
      end 
      configure :sign_in_count do
        hide
      end 
      configure :shcedules do
        hide
      end  
    end
    list do
      configure :sales do
        hide
      end 
      configure :shcedules do
        hide
      end
    end
  end




  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
