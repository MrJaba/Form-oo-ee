require 'test_helper'

class TextFieldTest < ActiveSupport::TestCase

  test "given no parameters - return text_field_tag form helper syntax - with default name" do
    assert_equal "text_field_tag( 'name' )", TextField.new.call 
  end
  
  test "given a name parameter - return text_field_tag form helper syntax - with given name" do
    assert_equal "text_field_tag( 'text-field' )", TextField.new(:name => 'text-field').call 
  end

end
