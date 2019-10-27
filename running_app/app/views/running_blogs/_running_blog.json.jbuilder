json.extract! running_blog, :id, :title, :author, :date, :content, :picture, :created_at, :updated_at
json.url running_blog_url(running_blog, format: :json)
