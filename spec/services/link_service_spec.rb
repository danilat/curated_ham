describe "Link Service" do
  let(:some_args) do
    {title: 'foo'}
  end

  it "saves the link" do
    repository = instance_spy(CuratedHam::LinkRepository)
    service = CuratedHam::LinkService.new(repository)

    service.create_a_link(some_args)

    expect(repository).to have_received(:put).with(have_attributes(some_args))
  end

  it "assigns a creation time" do
    repository = instance_spy(CuratedHam::LinkRepository)
    service = CuratedHam::LinkService.new(repository)

    link = service.create_a_link(some_args)

    expect(link.created_at).not_to be_nil
  end
end