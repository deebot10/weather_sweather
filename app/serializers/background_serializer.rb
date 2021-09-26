class BackgroundSerializer
  include FastJsonapi::ObjectSerializer
  set_id {nil}
  attributes :background,
             :artist_info
end