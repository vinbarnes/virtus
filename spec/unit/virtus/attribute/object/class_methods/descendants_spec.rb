require 'spec_helper'

describe Virtus::Attribute::Object, '.descendants' do
  subject { described_class.descendants.map { |c| c.to_s }.sort }

  before { pending 'Remove this spec in favor of Virtus::DescentantsTracker spec' }

  let(:known_descendants) do
    [ Virtus::Attribute::EmbeddedValue, Virtus::Attribute::Symbol,
      Virtus::Attribute::Time,          Virtus::Attribute::String,
      Virtus::Attribute::Integer,       Virtus::Attribute::Hash,
      Virtus::Attribute::Float,         Virtus::Attribute::Decimal,
      Virtus::Attribute::Numeric,       Virtus::Attribute::DateTime,
      Virtus::Attribute::Date,          Virtus::Attribute::Boolean,
      Virtus::Attribute::Set,           Virtus::Attribute::Array,
      Virtus::Attribute::Collection,    Virtus::Attribute::Class ].map { |a| a.to_s }.sort
  end

  it 'should return all known attribute classes' do
    subject.should eql(known_descendants)
  end
end
