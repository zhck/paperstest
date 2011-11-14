module ApplicationHelper

  def deny_access
    redirect_to session_path(resource)
  end

  def current_user?(user)
    user == current_user
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
