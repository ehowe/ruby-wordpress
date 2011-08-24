class PagesController < ApplicationController
  def page
    @home_class = "page-item"
    @blog = SiteHelper::Options.get_options
    @posts = SiteHelper::Navigation.get_pages
    @post = RwPosts.find(:first, :conditions => ['id = ? and post_type = ?', params[:id], 'page'])
    @request_url = request.fullpath
  end
end
