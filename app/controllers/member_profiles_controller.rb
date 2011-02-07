class MemberProfilesController < ApplicationController
  include AuthenticatedMembersSystem
  include SiteControllerMemberExtensions
  
  radiant_layout 'Profile'  
  
  no_login_required
  # skip_before_filter :verify_authenticity_token
  
  use_cookies_flash
  
  def index
  end
  
  def edit
  end  
  
  def update
    res = current_member.update_attributes(params[:member])
    flash[:error] = "Sucess" if res
    flash[:error] = "Error" if res    
    render :edit
  end
  
end
