class MaterializecssFormBuilder < ActionView::Helpers::FormBuilder
	delegate :content_tag, to: :@template

	[:text_field,:text_area,:url_field,:email_field,:number_field,:password_field].each do |metodo|
		define_method metodo do|name, *args|
			options = args.extract_options!
			aditional_classes = " input-field "
			
			if options.has_key?(:class)				
				aditional_classes += options[:class]
			else
				
			end	
			options[:placeholder] = options[:text]
			content_tag :div, class: "row"do
				content_tag :div, class: aditional_classes do 
					super(name,options) 
				end
			end
		end		
	end


	def submit(*args)
		content_tag :div, class: "row" do
			content_tag :div, class: "center-align" do 
				super(*args,class: 'btn blue')
			end
		end		
	end

	def errors
		if object.errors.any?
			content_tag :div, class: "red large-padding white-text" do
				content_tag(:h2, "Errores" )+
				content_tag(:ul) do
					lis = ""
					object.errors.full_messages.each do |err|
						lis += content_tag :li, err
					end
					lis.html_safe
				end
			end
		end
	end
end