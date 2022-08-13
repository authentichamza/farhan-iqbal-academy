module ContactsHelper
	def active?(tab_name)
		'active' if params[:controller].eql? tab_name
	end
end
