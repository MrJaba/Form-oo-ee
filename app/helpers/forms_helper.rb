module FormsHelper
  def include_form_new_assets
    include_assets do
      javascript_include_tag 'form-new'
    end
  end
end
