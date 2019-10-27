class RunningBlog < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
