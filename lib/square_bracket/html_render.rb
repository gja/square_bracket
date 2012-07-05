require 'redcarpet'

class SquareBracket::HTMLRender < Redcarpet::Render::HTML
  include SquareBracket::Postprocess

  def initialize(processor, *params)
    @square_bracket_post_processor = processor
    super *params
  end
end