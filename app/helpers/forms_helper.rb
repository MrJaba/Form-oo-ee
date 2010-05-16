module FormsHelper
  def include_form_new_assets
    include_assets do
      javascript_include_tag 'form-new', 'text-field'
    end
  end
  
  def set_form_accessor(form)
    @form_being_built = form
  end
  
  def form
    @form_being_built
  end
  
end
