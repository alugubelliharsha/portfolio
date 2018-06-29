class HarshaBlogsController < ApplicationController
  before_action :set_harsha_blog, only: [:show, :edit, :update, :destroy]

  # GET /harsha_blogs
  # GET /harsha_blogs.json
  def index
    @harsha_blogs = HarshaBlog.all
  end

  # GET /harsha_blogs/1
  # GET /harsha_blogs/1.json
  def show
  end

  # GET /harsha_blogs/new
  def new
    @harsha_blog = HarshaBlog.new
  end

  # GET /harsha_blogs/1/edit
  def edit
  end

  # POST /harsha_blogs
  # POST /harsha_blogs.json
  def create
    @harsha_blog = HarshaBlog.new(harsha_blog_params)

    respond_to do |format|
      if @harsha_blog.save
        format.html { redirect_to @harsha_blog, notice: 'Harsha blog was successfully created.' }
        format.json { render :show, status: :created, location: @harsha_blog }
      else
        format.html { render :new }
        format.json { render json: @harsha_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harsha_blogs/1
  # PATCH/PUT /harsha_blogs/1.json
  def update
    respond_to do |format|
      if @harsha_blog.update(harsha_blog_params)
        format.html { redirect_to @harsha_blog, notice: 'Harsha blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @harsha_blog }
      else
        format.html { render :edit }
        format.json { render json: @harsha_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harsha_blogs/1
  # DELETE /harsha_blogs/1.json
  def destroy
    @harsha_blog.destroy
    respond_to do |format|
      format.html { redirect_to harsha_blogs_url, notice: 'Harsha blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harsha_blog
      @harsha_blog = HarshaBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harsha_blog_params
      params.require(:harsha_blog).permit(:title, :body)
    end
end
