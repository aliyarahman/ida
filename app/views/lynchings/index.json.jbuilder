json.array!(@lynchings) do |lynching|
  json.extract! lynching, :id, :year, :month, :day, :month, :name, :city, :state, :allegation
  json.url lynching_url(lynching, format: :json)
end
