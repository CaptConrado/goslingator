class TumblrGrabber < ActiveRecord::Base

  attr_accessible :url, :vote

  @url = "http://api.tumblr.com/v2/tagged?tag=ryan_gosling&api_key=fuiKNFp9vQFvjLNvx4sUwti4Yb5yGutBN4Xh10LXZhhRKjWlV4"
  @response = `curl "http://api.tumblr.com/v2/tagged?tag=ryan_gosling&api_key=fuiKNFp9vQFvjLNvx4sUwti4Yb5yGutBN4Xh10LXZhhRKjWlV4"`
  @response = JSON.parse(@response)

  picture1 = @response['response']['photos']['url']
  picture1.regex('"url\\":\\"(.+?)"')


end
