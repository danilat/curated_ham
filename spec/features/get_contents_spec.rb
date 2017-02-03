describe "Get contents", :feature do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do

  end

  it "gets a collection" do
    links = nil

    expect(link).to have_attributes(the_coding_stones)
  end
end
