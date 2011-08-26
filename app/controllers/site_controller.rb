class SiteController < ApplicationController
  def index
    @home_class = "current_page_item"
    @blog = SiteHelper::Options.get_options
    @posts = SiteHelper::Navigation.get_pages
    @request_url = request.fullpath
    @page_content = Post.find_last_by_post_type "post"
    @page_content.categories.map! { |c| "category-" + c.category_name.downcase! }
  end
end
