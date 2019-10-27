class RunningBlogsController < ApplicationController
  before_action :set_running_blog, only: [:show, :edit, :update, :destroy]

  # GET /running_blogs
  # GET /running_blogs.json
  def index
    @running_blogs = RunningBlog.all
  end

  # GET /running_blogs/1
  # GET /running_blogs/1.json
  def show
  end

  # GET /running_blogs/new
  def new
    @running_blog = RunningBlog.new
  end

  # GET /running_blogs/1/edit
  def edit
  end

  # POST /running_blogs
  # POST /running_blogs.json
  def create
    @running_blog = RunningBlog.new(running_blog_params)

    respond_to do |format|
      if @running_blog.save
        format.html { redirect_to @running_blog, notice: 'Running blog was successfully created.' }
        format.json { render :show, status: :created, location: @running_blog }
      else
        format.html { render :new }
        format.json { render json: @running_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /running_blogs/1
  # PATCH/PUT /running_blogs/1.json
  def update
    respond_to do |format|
      if @running_blog.update(running_blog_params)
        format.html { redirect_to @running_blog, notice: 'Running blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @running_blog }
      else
        format.html { render :edit }
        format.json { render json: @running_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /running_blogs/1
  # DELETE /running_blogs/1.json
  def destroy
    @running_blog.destroy
    respond_to do |format|
      format.html { redirect_to running_blogs_url, notice: 'Running blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running_blog
      @running_blog = RunningBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def running_blog_params
      params.require(:running_blog).permit(:title, :author, :date, :content, :picture)
    end
end
