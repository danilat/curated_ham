describe "Content Service" do
  let(:valid_params) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do
    @content_repository = instance_spy(CuratedHam::ContentRepository)
    @service = CuratedHam::ContentService.new(@content_repository)
  end

  it "saves the content" do
    @service.save_content(valid_params)

    expect(@content_repository).to have_received(:put).with(have_attributes(valid_params))
  end

  it "sets creation date" do
    content = @service.save_content(valid_params)

    expect(content.created_at).not_to be_nil
  end
end