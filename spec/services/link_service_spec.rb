describe "Link Service" do
  let(:the_coding_stones) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end
  let(:a_time){"a irrelevant time"}

  before(:each) do
    @clock = instance_double(CuratedHam::Clock)
    @repository = instance_spy(CuratedHam::LinkRepository)
    @service = CuratedHam::LinkService.new(@repository, @clock)

    allow(@clock).to receive(:now).and_return(a_time)
  end

  context "when create a link" do
    it "saves the link" do
      @service.create_link(the_coding_stones)

      expect(@repository).to have_received(:put).with(have_attributes(the_coding_stones))
    end

    it "generates a creation date" do
      link = @service.create_link(the_coding_stones)

      expect(link.created_at).to eq a_time
    end
  end
end
