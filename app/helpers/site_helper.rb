module SiteHelper
  #Load options from the rw_options table
  class Options
    def self.get_options
      @blog = Hash.new
      options = RwOptions.find(:all, :select => ['option_name','option_value'])
      options.each do |option|
        @blog[option.option_name.to_sym] = option.option_value
      end
      return @blog
    end
  end

  class Navigation
    def self.get_pages
      @posts = RwPosts.find(:all, :conditions => ['post_type = ? and post_status = ?', 'page', 'publish'])
    end
  end
end
