describe "Link Service" do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end
  let(:current_time) { "a time" }

  before(:each) do
    @clock = instance_double(CuratedHam::Clock)
    @repository = instance_spy(CuratedHam::LinkRepository)
    @service = CuratedHam::LinkService.new(@repository, @clock)

    allow(@clock).to receive(:now).and_return(current_time)
  end

  it "saves the link" do
    @service.create_link(the_coding_stones)

    expect(@repository).to have_received(:put)
  end

  it "generates a created time" do
    link = @service.create_link(the_coding_stones)

    expect(link.created_at).to eq current_time
  end
end
