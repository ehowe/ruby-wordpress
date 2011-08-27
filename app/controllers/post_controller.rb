class PostController < ApplicationController
  def index
    @home_class = "page-item"
    @blog = SiteHelper::Options.get_options
    @posts = SiteHelper::Navigation.get_pages
    @page_content = Post.find(:first, :conditions => ['id = ?', params[:id]])
    @page_content.categories.map! { |c| "category-" + c.category_name.downcase! }
    @request_url = request.fullpath
  end
end
