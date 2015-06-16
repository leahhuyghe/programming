class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  ##TODO get code syntax working
	class CodeRayify < Redcarpet::Render::HTML
	  def block_code(code)
	    #CodeRay.scan(code, language).div
      CodeRay.scan(code, :ruby).div(:line_numbers => :table)
	  end
	end
	
	def markdown(text)
	  coderayified = CodeRayify.new(:filter_html => true, 
	                                :hard_wrap => true)
	  options = {
	    :fenced_code_blocks => true,
	    :no_intra_emphasis => true,
	    :autolink => true,
	    :lax_html_blocks => true,
	  }
	  markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
	  markdown_to_html.render(text).html_safe
	end

  helper_method :markdown

end
