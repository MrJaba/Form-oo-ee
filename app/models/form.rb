class Form
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
        form_elements << new_form_element(form_element)
      rescue    
        next
      end
    end
    form_elements
  end
  
  def call
    form_elements.collect{|element| element.call }.join(" ")
  end
  
private

  def new_form_element(form_element)
    fe = form_element.gsub("-","_")
    fe.classify.constantize.new(form_element)
  end
  
end
