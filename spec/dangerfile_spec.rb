RSpec.describe "Dangerfile" do
  it "has no issues" do
    dangerfile_path = Pathname.new("./Dangerfile").realpath
    stdout_and_stderr, status = Open3.capture2e("danger dry_run --verbose --dangerfile=#{dangerfile_path.to_s}")

    expect(status).to be_success, stdout_and_stderr
  end
end
