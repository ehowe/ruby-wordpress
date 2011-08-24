class SiteController < ApplicationController
  def index
    @home_class = "current_page_item"
    @blog = SiteHelper::Options.get_options
    @posts = SiteHelper::Navigation.get_pages
    @request_url = request.fullpath
  end
end
