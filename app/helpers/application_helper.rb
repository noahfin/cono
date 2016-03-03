module ApplicationHelper
	class HTMLwithPygments < Redcarpet::Render::HTML
		def block_code(code, language)
			Pygments.highlight(code, lexer: language)
		end
	end

	def markdown(content)
		renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
		options = {
			autolink: true,
			no_intra_emphasis: true,
			fenced_code_blocks: true,
			lax_html_blocks: true,
			strikethrough: true,
			superscript: true
		}
		Redcarpet::Markdown.new(renderer, options).render(content).html_safe
	end

	def gravatar_url()
    		@email = User.find(current_user.id)
    		@stripped_email = @email['email'].strip
    		@downcased_email = @stripped_email.downcase
    		hash = Digest::MD5.hexdigest(@downcased_email)
    		'http://gravatar.com/avatar/' + hash.to_s
    	end
end
