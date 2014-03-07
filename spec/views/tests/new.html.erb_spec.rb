require 'spec_helper'

describe "tests/new" do
  before(:each) do
    assign(:test, stub_model(Test,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tests_path, "post" do
      assert_select "input#test_content[name=?]", "test[content]"
    end
  end
end
