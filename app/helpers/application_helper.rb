# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def labeled_form_for(*args, &block)
    options = args.extract_options!.merge(:builder => LabeledFormBuilder)
    form_for(*(args + [options]), &block)
  end
  
  def labeled_fields_for(*args, &block)
    options = args.extract_options!.merge(:builder => LabeledFormBuilder)
    fields_for(*(args + [options]), &block)
  end
end
