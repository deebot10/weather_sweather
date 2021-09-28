require 'rails_helper'

RSpec.describe BackgroundInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs = {:id=>"A4RpHR83luM",
                      :created_at=>"2021-05-01T04:12:54-04:00",
                      :updated_at=>"2021-09-27T03:26:24-04:00",
                      :promoted_at=>nil,
                      :width=>5954,
                      :height=>3969,
                      :color=>"#0c2626",
                      :blur_hash=>"L867}^NGNIxY0gxaxENb==RkWXs,",
                      :description=>"Night Time Downtown Denver",
                      :alt_description=>"city skyline during night time",
                      :urls=>
                        {:raw=>
                          "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM&ixlib=rb-1.2.1",
                        :full=>
                          "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM&ixlib=rb-1.2.1&q=85",
                        :regular=>
                          "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM&ixlib=rb-1.2.1&q=80&w=1080",
                        :small=>
                          "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM&ixlib=rb-1.2.1&q=80&w=400",
                        :thumb=>
                          "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM&ixlib=rb-1.2.1&q=80&w=200"},
                      :links=>
                        {:self=>"https://api.unsplash.com/photos/A4RpHR83luM",
                        :html=>"https://unsplash.com/photos/A4RpHR83luM",
                        :download=>"https://unsplash.com/photos/A4RpHR83luM/download",
                        :download_location=>
                          "https://api.unsplash.com/photos/A4RpHR83luM/download?ixid=MnwyNjMyMDB8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfHx8fDE2MzI3ODY5MTM"},
                      :categories=>[],
                      :likes=>4,
                      :liked_by_user=>false,
                      :current_user_collections=>[],
                      :sponsorship=>nil,
                      :topic_submissions=>{},
                      :user=>
                        {:id=>"t2RB-3lbgSk",
                        :updated_at=>"2021-09-26T11:05:42-04:00",
                        :username=>"rdehamer",
                        :name=>"Ryan De Hamer",
                        :first_name=>"Ryan",
                        :last_name=>"De Hamer",
                        :twitter_username=>nil,
                        :portfolio_url=>"http://www.dehamermedia.com",
                        :bio=>"Denver -> Anywhere\r\nMy images are collected all around the country working with brands, athletes and fitness influencers",
                        :location=>nil,
                        :links=>
                          {:self=>"https://api.unsplash.com/users/rdehamer",
                          :html=>"https://unsplash.com/@rdehamer",
                          :photos=>"https://api.unsplash.com/users/rdehamer/photos",
                          :likes=>"https://api.unsplash.com/users/rdehamer/likes",
                          :portfolio=>"https://api.unsplash.com/users/rdehamer/portfolio",
                          :following=>"https://api.unsplash.com/users/rdehamer/following",
                          :followers=>"https://api.unsplash.com/users/rdehamer/followers"},
                        :profile_image=>
                          {:small=>
                            "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32",
                          :medium=>
                            "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64",
                          :large=>
                            "https://images.unsplash.com/profile-1577912636161-6a3ada136470image?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"},
                        :instagram_username=>"Ryan_dehamer",
                        :total_collections=>6,
                        :total_likes=>0,
                        :total_photos=>69,
                        :accepted_tos=>true,
                        :for_hire=>true,
                        :social=>
                          {:instagram_username=>"Ryan_dehamer", :portfolio_url=>"http://www.dehamermedia.com", :twitter_username=>nil, :paypal_email=>nil}},
                      :tags=>[{:type=>"search", :title=>"denver"}, {:type=>"search", :title=>"co"}, {:type=>"search", :title=>"usa"}]}

    background = BackgroundInfo.new(attrs)
    expect(background.class).to eq(BackgroundInfo)
    expect(background.artist_info).to eq('rdehamer')
  end
end