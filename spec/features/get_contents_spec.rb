describe "Get contents", :feature do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do
    link_repository = CuratedHam::LinkRepository.new
    clock = CuratedHam::Clock.new
    service = CuratedHam::LinkService.new(link_repository, clock)
    @create_action = CuratedHam::CreateALink.new(service)
    @create_action.run(the_coding_stones)

    @retrieve_action = CuratedHam::RetrieveAllTheLinks.new(link_repository)
  end

  it "gets a collection" do
    links = @retrieve_action.run()
    link = links.first

    expect(link).to have_attributes(the_coding_stones)
  end
end
