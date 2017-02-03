describe "Retrieve All Links" do
  let(:existing_links){ [CuratedHam::Link.new({title:'a link'})]}

  it "retrieves all the links" do
    link_repository = instance_double(CuratedHam::LinkRepository)
    action = CuratedHam::RetrieveAllTheLinks.new(link_repository)
    allow(link_repository).to receive(:find_all).and_return(existing_links)

    links = action.run

    expect(links).to eq (existing_links)
  end
end
