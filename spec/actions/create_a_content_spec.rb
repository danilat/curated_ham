describe "Create A Content" do
  let(:valid_params) do
    {title: "coding stones", url: "http://codingstones.com/", description: "RocknRollas!!", category: "rockanroll"}
  end

  before(:each) do
    @content_repository = instance_spy(CuratedHam::ContentRepository)
    @action = CuratedHam::CreateAContent.new(@content_repository)
  end

  it "saves the content" do
    @action.run(valid_params)

    expect(@content_repository).to have_received(:put).with(have_attributes(valid_params))
  end

  it "sets creation date" do
    content = @action.run(valid_params)

    expect(content.created_at).not_to be_nil
  end
end