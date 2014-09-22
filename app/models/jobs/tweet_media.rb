module Jobs
  class TweetMedia
    include Backburner::Queue

    queue "tweet-media"
    queue_priority 100
    queue_respond_timeout 10

    def self.perform
      RssParser.post_to_twitter
    end
  end
end