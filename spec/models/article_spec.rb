require "rails_helper"

RSpec.describe Article, :type => :model do

  before(:all) do
    @article1 = create(:article)
  end

  it "is valid with valid attributes" do
    expect(@article1).to be_valid
  end

  it "has a unique title" do
    article2 = build(:article, text: "This is another article", author: "Joe")
    expect(article2).to_not be_valid
  end

  it "title is greater than 5 characters" do
    article2 = build(:article, title: "abc", author: "Joe")
    expect(article2).to_not be_valid
  end

  it "title exists" do
    article2 = build(:article, title: nil, author: "Joe")
    expect(article2).to_not be_valid
  end

  it "text exists" do
    article2 = build(:article, text: nil, author: "Joe")
    expect(article2).to_not be_valid
  end

end
