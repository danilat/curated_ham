describe "Create A Content" do
  let(:valid_params) do
    {title: "coding stones", url: "http://codingstones.com/", category: "rockanroll"}
  end

  before(:each) do
    @content_service = instance_spy(CuratedHam::ContentService)
    @action = CuratedHam::CreateAContent.new(@content_service)
  end

  it "saves the content" do
    @action.run(valid_params)

    expect(@content_service).to have_received(:save_content).with(valid_params)
  end
end