describe SquareBracket::Postprocess do
  include SquareBracket::Postprocess

  class ReplaceAllFoos
    def foo
      "bar"
    end

    def bar(baz)
      baz
    end
  end

  before(:each) do
    @square_bracket_post_processor = ReplaceAllFoos.new
  end

  it "does not replace methods with no matching method" do
    postprocess("[unrecognized]").should eq "[unrecognized]"
  end

  it "will replace a recognized tag" do
    postprocess("[foo]").should eq "bar"
  end

  it "passes optional parameters to the tags" do
    postprocess("[bar baz]").should eq "baz"
  end

  it "will replace multiple tags" do
    postprocess("[foo] [foo]").should eq "bar bar"
  end
end