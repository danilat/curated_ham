describe "Get All Contents" do
  it "should get from the repository" do
    content_repository = instance_spy(CuratedHam::ContentRepository)
    action = CuratedHam::GetAllContents.new(content_repository)

    action.run

    expect(content_repository).to have_received(:find_all)
  end
end