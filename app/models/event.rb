class Event < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  
 end
