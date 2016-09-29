describe "Link Repository" do
  before(:each) do
    @repository = CuratedHam::LinkRepository.new
    @link = CuratedHam::Link.new(title: 'foo')
  end

  it "find all links" do
    @repository.put(@link)

    links = @repository.find_all

    expect(links.size).to eq 1
  end

  it "puts a link" do
    link = @repository.put(@link)

    created_link = @repository.find_by_id(link.id)
    expect(link).to eq (created_link)
  end
end