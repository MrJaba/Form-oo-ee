class FormsController < ApplicationController 
  
  def new
    @form = fake_active_record_for_form_for( Form.new )
  end
  
  def create
    @form = Form.create(params)
  end
  
private

  def fake_active_record_for_form_for(obj)
    obj.class.send(:define_method, :new_record?, lambda{ return true } )
    obj.class.send(:define_method, :id, lambda{ return nil } )
    obj
  end
  
end
