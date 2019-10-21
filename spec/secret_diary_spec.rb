require 'secret_diary'

# Initially the `SecretDiary` class is locked,
# meaning `add_entry` and
# `get_entries` should throw an error.

describe SecretDiary do

  it "diary status is locked" do
    expect(subject.diary_status).to eq false
  end

  it "add entry produces error if accessed when diary status is locked" do
    expect(subject.add_entry).to eq ("error") if (subject.diary_status) == false
  end

  it "get entries produces error if accessed when diary status is locked" do
    expect(subject.get_entries).to eq ("error") if (subject.diary_status) == false
  end

end
