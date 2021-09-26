class BackgroundInfo
  attr_reader :background,
              :artist_info

  def initialize(info)
    @background = info[:urls][:regular]
    @artist_info = info[:user][:username] 
  end
end