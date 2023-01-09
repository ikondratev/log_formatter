require "application_helper"

describe LogFormatter::ApplicationLogger do
  subject { described_class }

  describe "#instanse" do
    context "without any errors" do
      it "should return object" do
        result = subject.instance
        expect { result }.not_to raise_error
      end
    end
  end
end
