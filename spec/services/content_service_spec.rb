describe "Content Service" do
  let(:valid_params) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  let(:a_description) { "we rock!!" }

  before(:each) do
    @content_repository = instance_spy(CuratedHam::ContentRepository)
    @metadata_parser = instance_double(CuratedHam::MetadataParser)
    @service = CuratedHam::ContentService.new(@content_repository, @metadata_parser)

    allow(@metadata_parser).to receive(:description_from).and_return(a_description)
  end

  it "saves the content" do
    @service.save_content(valid_params)

    expect(@content_repository).to have_received(:put).with(have_attributes(valid_params))
  end

  it "sets creation date" do
    content = @service.save_content(valid_params)

    expect(content.created_at).not_to be_nil
  end

  context "gets the description" do
    it "from a website" do
      content = @service.save_content(valid_params)

      expect(@metadata_parser).to have_received(:description_from).with(valid_params[:url])
    end

    it "is added to content" do
      content = @service.save_content(valid_params)

      expect(content.description).to eq a_description
    end
  end
end