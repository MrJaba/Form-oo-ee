class TextField < FormElement
  attr_accessor :parameters
  
  def initialize(parameters={})
    self.parameters = parameters
  end
  
  def call
    "text_field_tag( '#{parameters[:name] || 'name'}' )"
  end
  
  #text-field (model based)
  #text-field-tag
  #default value
  #size, class
  
end