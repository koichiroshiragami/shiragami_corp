class Info < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
