describe "Link Repository" do
  let(:a_link){ CuratedHam::Link.new(title: 'a title') }
  before(:each) do
    @repository = CuratedHam::LinkRepository.new
  end
  it "finds all" do
    @repository.save_link(a_link)

    links = @repository.find_all

    expect(links).to eq [a_link]
  end
end