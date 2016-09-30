module ApplicationHelper
    def markdown(text)
        options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis]
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                            autolink: true,
                                            hard_wrap:true,
                                            filter_html:true,
                                            no_intraemphasis: true)
        markdown.render(text).html_safe
    end
end
