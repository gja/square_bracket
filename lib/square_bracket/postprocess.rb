module SquareBracket::Postprocess
  REGEX = /\[([^ \[\]]+) ?([^\[\]]*)\]/

  def postprocess(string)
    string.gsub REGEX do |match|
      method = $1
      params = $2
      if @square_bracket_post_processor.respond_to? method
        @square_bracket_post_processor.send(method, *params.split)
      else
        match
      end
    end   
  end
end