# Encoding: UTF-8

require 'spec_helper'

describe Parslet::Atoms::Ignore do
  def ignore
    described_class.new
  end

  describe 'regression #1: multibyte characters' do
    it "parses successfully (length check works)" do
      ignore.should parse('あああ')
    end
  end
end
