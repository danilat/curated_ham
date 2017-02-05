describe "Create A Link" do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do
    @service =  instance_spy(CuratedHam::LinkService)
    @action = CuratedHam::CreateALink.new(@service)
  end

  it "save a new link" do
    @action.run(the_coding_stones)

    expect(@service).to have_received(:create_link)
  end
end
