module RssParser

  def get_rss_items
    rss_url = ENV[env][rss][rss_url]
    rss_usr_agent = ENV[env][rss][rss_usr_agent]
    rss_items = SimpleRSS.parse open(rss_url, "User-Agent" => rss_usr_agent)
    rss_items
  end

  def twitter_authentication
    twitter_password = ENV[env][twitter][password]
    twitter_login = ENV[env][twitter][email]
    http_auth = Twitter::HTTPAuth.new(twitter_login, twitter_password)
    http_auth
  end

  def self.post_to_twitter
    rss_items = self.get_rss_items
    http_auth = self.twitter_authentication

    @media = Media.all
      rss_items.items.each do
        @media.transaction do
        unless existing_item = @media.find(:conditions => ["link=?", @media.link]).first
          twitter ||= Twitter::Base.new(http_auth)
          new_tweet = @media.create(:title => @media.title, :url => @media.url)
          twitter.post(new_tweet.to_s)
        end
      end
    end
  end

end
