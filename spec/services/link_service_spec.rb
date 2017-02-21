describe "LinkService" do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end
  let(:a_current_time){ Time.now }

  before(:each) do
    @repository = instance_spy(CuratedHam::LinkRepository)
    @clock = instance_double(CuratedHam::Clock)
    @service = CuratedHam::LinkService.new(@repository, @clock)

    allow(@clock).to receive(:now).and_return(a_current_time)
  end

  it "puts the link" do
    @service.create_link(the_coding_stones)

    expect(@repository).to have_received(:put).with(have_attributes(the_coding_stones))
  end

  it "assigns a creation date" do
    link = @service.create_link(the_coding_stones)

    expect(link.created_at).to eq a_current_time
  end
end
