# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|

  config.wrappers :intable, tag: 'div', class: 'input intable', error_class: 'has-error' do |b|
    b.use :html5
    b.use :min_max
    b.use :maxlength
    b.use :placeholder

    b.use :input #, class: 'form-control'
    b.use :error, wrap_with: { tag: 'span', class: 'help-block' }
    b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }

  end

  config.wrappers :intable_label, tag: 'div', class: 'input intable_label', error_class: 'has-error' do |b|
    b.use :html5
    b.use :min_max
    b.use :maxlength
    b.use :placeholder

    b.use :label


    b.use :input #, class: 'form-control'
    b.use :error, wrap_with: { tag: 'span', class: 'help-block' }
    b.use :hint,  wrap_with: { tag: 'p', class: 'help-block' }

  end



end



SimpleForm::ErrorNotification.class_eval do
  def render
    if has_errors?
      template.content_tag(:div, class: 'panel panel-danger bg-danger') do
        template.content_tag(:div, class: 'panel-body') do
          template.content_tag(:h5) do
            template.content_tag(:i,nil,class: "fa fa-times-circle fa-fw sign") + 
              template.content_tag(:strong,"错误!")
          end +
            template.content_tag(error_notification_tag, error_message, html_options)
        end
      end
    end
  end
end
