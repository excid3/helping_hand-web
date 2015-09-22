module ApplicationHelper
  def markdownify(text)
    renderer = Redcarpet::Render::HTML.new
    Redcarpet::Markdown.new(renderer,
                            autolink: true,
                            no_intra_emphasis: true,
                            fenced_code_blocks: true,
                            lax_html_blocks: true,
                            strikethrough: true,
                            superscript: true
                           ).render(text.to_s).html_safe
  end
end
