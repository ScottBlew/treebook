
class ProfilesController < ApplicationController
  def show
    
    @user = User.find_by_profile_name(params[:id])
    if @user
      @statuses = @user.statuses.to_a
      render action: :show
    else
    render file: 'public/404', status: 404, format: [:html]
    end
  end  
end

