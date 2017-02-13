describe "Link repository" do
  let(:a_link) { CuratedHam::Link.new(title:'foo') }
  before(:each) do
    @repository = CuratedHam::LinkRepository.new
  end

  it "saves a link" do
    @repository.put(a_link)

    links = @repository.find_all()

    expect(links.first).to eq a_link
  end
end
