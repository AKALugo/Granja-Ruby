# frozen_string_literal: true

RSpec.describe Granja do
  it "Versión 0.3.0" do
    expect(Granja::VERSION).not_to be nil
  end
end
