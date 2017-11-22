class Admin::ApplicationController < ApplicationController
  #어드민 일때만 허락을하고 아니면 redirect_to
  before_action :check_admin
  layout 'admin'
  
  private
  def check_admin
    unless user_signed_in? && current_user.admin?
      redirect_to (root_path alert: "관리자 계정으로 로그인하세요")
    # 지금 접속한 친구가 관리자인지 판별
    # 아닐 경우 루트페이지
    end
  end
end
