class PagesController < ApplicationController
  def page
    @home_class = "page-item"
    @blog = SiteHelper::Options.get_options
    @posts = SiteHelper::Navigation.get_pages
    @page_content = Post.find_last_by_post_type "page"
    @page_content.categories.map! { |c| "category-" + c.category_name.downcase! }
    @request_url = request.fullpath
  end
end
