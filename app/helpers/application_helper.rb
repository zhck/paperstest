module ApplicationHelper

  def deny_access
    redirect_to signin_path, :notice => "Please sign in to access this page."
  end

end
