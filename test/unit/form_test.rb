require 'test_helper'

class FormTest < ActiveSupport::TestCase

  test "parsing a text field" do
    form = Form.new
    form.form_parameters = "text-field"
    assert_equal [TextField], form.parse_form_elements.collect{|element| element.class }, "Should be One TextField class"
  end
  
  test "parsing two text fields" do
    form = Form.new
    form.form_parameters = ["text-field", "text-field"]
    assert_equal [TextField,TextField], form.parse_form_elements.collect{|element| element.class }, "Should be Two TextField class"
  end
  
  test "producing output - call" do
    form = Form.create( ["text-field"] )
    assert_equal TextField.new().call, form.call
  end
  
  test "ignore unknown elements" do
    assert_nothing_raised do
      form = Form.create( ["blah"] )
    end
  end

end
