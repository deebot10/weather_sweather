class BackgroundInfo
  attr_reader :background,
              :artist_info,
              :profile

  def initialize(info)
    @background  = info[:urls][:regular]
    @artist_info = info[:user][:username] 
    @profile     = info[:user][:portfolio_url]
  end
end