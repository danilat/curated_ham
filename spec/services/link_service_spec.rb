describe "LinkService" do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end
  let(:current_time){ "a time" }

  before(:each) do
    @repository = instance_spy(CuratedHam::LinkRepository)
    @clock = instance_double(CuratedHam::Clock)
    @service = CuratedHam::LinkService.new(@repository, @clock)
    
    allow(@clock).to receive(:now).and_return(current_time)
  end

  it "saves a new link" do
    @service.create_link(the_coding_stones)

    expect(@repository).to have_received(:put).with(have_attributes(the_coding_stones))
  end

  it "generates the creation date" do
    link = @service.create_link(the_coding_stones)

    expect(link.created_at).to eq current_time
  end
end