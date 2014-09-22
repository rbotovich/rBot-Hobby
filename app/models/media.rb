class Media < ActiveRecord::Base
  field :title, type: String
  field :url, type: String

  def to_s
    "#{self.title[0..(130-self.url.length)]} - #{self.url}"
  end
end
