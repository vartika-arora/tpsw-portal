class UserController < ApplicationController

 def update_form
   @blank_fields = []
   if user_signed_in?
     fields = current_user.fields.keys
     fields -= %w{_id encrypted_password sign_in_count roles_mask reset_password_token
            reset_password_sent_at remember_created_at sign_in_count u_id
            current_sign_in_at last_sign_in_at current_sign_in_ip last_sign_in_ip}
     fields.each do |field|
      # if any field is empty take it into account and pass to view
      @blank_fields << field if current_user[field].blank?
     end
   else
     redirect_to new_user_session_path
   end
   if @blank_fields.blank?
     redirect_to root_path
   end
 end

end
