require 'spec_helper'

describe "tests/index" do
  before(:each) do
    assign(:tests, [
      stub_model(Test,
        :content => "Content"
      ),
      stub_model(Test,
        :content => "Content"
      )
    ])
  end

  it "renders a list of tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
