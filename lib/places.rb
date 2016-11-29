class Places
  @@visited_array = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:location) do
    @place
  end

  define_singleton_method(:visited) do
    @@visited_array
  end

  define_method(:store) do
    @@visited_array.push(self)
  end

  define_singleton_method(:clear) do
    @@visited_array = []
  end

end
