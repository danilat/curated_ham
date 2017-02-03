describe "Get links", :feature do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do
    link_repository = CuratedHam::LinkRepository.new
    clock = CuratedHam::Clock.new
    link_service = CuratedHam::LinkService.new(link_repository, clock)
    @retrieve_action = CuratedHam::RetrieveAllTheLinks.new(link_repository)
    @create_action = CuratedHam::CreateALink.new(link_service)
  end

  it "returns a collection" do
    @create_action.run(the_coding_stones)
    links = @retrieve_action.run
    link = links.first

    expect(link).to have_attributes(the_coding_stones)
  end

end