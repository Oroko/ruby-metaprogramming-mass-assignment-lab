class Person
  def initialize(attributes)
    attributes.each do |k,v|
      self.class.attr_accessor(k)
      send("#{k}=", v)
    end
  end
end