require 'ostruct'
class Form < OpenStruct
  attr_accessor :form_parameters
  attr_accessor :form_elements
  
  def self.create(form_parameters)    
    form = self.new
    form.form_parameters = form_parameters || {}
    form.form_elements = form.parse_form_elements
    form
  end 
  
  def parse_form_elements
    form_elements = []
    form_parameters.each do |form_element, element_value|
      begin
        element_instance = new_form_element(form_element)
        form_elements << element_instance if element_instance.kind_of?(FormElement)
      rescue    
        next
      end
    end
    form_elements
  end
  
  def call
    self.form_elements.collect{|element| element.call }.join(" ")
  end
  
private

  def new_form_element(form_element)
    fe = form_element.gsub("-","_")
    fe.classify.constantize.new()
  end
  
end
