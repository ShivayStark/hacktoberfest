require "rails_helper"

RSpec.describe IssueStateFetcherError do
  it "exposes an errors array and the query that led to the errors" do
    errors = [1, 2, 3]
    query = "To be or not to be?"
    message = "That is the question"

    error = IssueStateFetcherError.new(
      message,
      errors: errors,
      query: query,
    )

    expect(error.errors).to eq errors
    expect(error.query).to eq query
    expect(error.message).to eq message
  end
end