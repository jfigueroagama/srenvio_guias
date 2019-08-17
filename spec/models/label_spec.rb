# spec/models/label_spec.rb
require 'rails_helper'

# Test suite for the Label model
RSpec.describe Label, type: :model do
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:tracking_number) }
  it { should validate_presence_of(:carrier) }
  it { should validate_presence_of(:length) }
  it { should validate_presence_of(:width) }
  it { should validate_presence_of(:height) }
  it { should validate_presence_of(:weight) }
  it { should validate_presence_of(:total_weight) }
  it { should validate_presence_of(:mass_unit) }
end