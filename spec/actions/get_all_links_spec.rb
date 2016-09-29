describe "Get All Links" do
  it "should get from the repository" do
    link_repository = instance_spy(CuratedHam::LinkRepository)
    some_irrelevant_links = ['irrelevant link', 'other link']
    allow(link_repository).to receive(:find_all).and_return(some_irrelevant_links)
    action = CuratedHam::GetAllLinks.new(link_repository)

    result = action.run

    expect(result).to eq(some_irrelevant_links)
  end
end