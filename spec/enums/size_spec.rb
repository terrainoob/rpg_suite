require 'spec_helper'

describe Size::Fine do
  let(:size) {Size::Fine.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq 8
    expect(size.special_modifier).to eq -8
    expect(size.fly_modifier).to eq 8
    expect(size.stealth_modifier).to eq 16
    expect(size.reach).to eq 0
  end
end

describe Size::Diminutive do
  let(:size) {Size::Diminutive.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq 4
    expect(size.special_modifier).to eq -4
    expect(size.fly_modifier).to eq 6
    expect(size.stealth_modifier).to eq 12
    expect(size.reach).to eq 0
  end
end

describe Size::Tiny do
  let(:size) {Size::Tiny.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq 2
    expect(size.special_modifier).to eq -2
    expect(size.fly_modifier).to eq 4
    expect(size.stealth_modifier).to eq 8
    expect(size.reach).to eq 0
  end
end

describe Size::Small do
  let(:size) {Size::Small.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq 1
    expect(size.special_modifier).to eq -1
    expect(size.fly_modifier).to eq 2
    expect(size.stealth_modifier).to eq 4
    expect(size.reach).to eq 5
  end
end

describe Size::Medium do
  let(:size) {Size::Medium.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq 0
    expect(size.special_modifier).to eq 0
    expect(size.fly_modifier).to eq 0
    expect(size.stealth_modifier).to eq 0
    expect(size.reach).to eq 5
  end
end

describe Size::LargeTall do
  let(:size) {Size::LargeTall.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -1
    expect(size.special_modifier).to eq 1
    expect(size.fly_modifier).to eq -2
    expect(size.stealth_modifier).to eq -4
    expect(size.reach).to eq 10
  end
end

describe Size::LargeLong do
  let(:size) {Size::LargeLong.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -1
    expect(size.special_modifier).to eq 1
    expect(size.fly_modifier).to eq -2
    expect(size.stealth_modifier).to eq -4
    expect(size.reach).to eq 10
  end
end

describe Size::HugeTall do
  let(:size) {Size::HugeTall.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -2
    expect(size.special_modifier).to eq 2
    expect(size.fly_modifier).to eq -4
    expect(size.stealth_modifier).to eq -8
    expect(size.reach).to eq 15
  end
end

describe Size::HugeLong do
  let(:size) {Size::HugeLong.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -2
    expect(size.special_modifier).to eq 2
    expect(size.fly_modifier).to eq -4
    expect(size.stealth_modifier).to eq -8
    expect(size.reach).to eq 15
  end
end

describe Size::GargantuanTall do
  let(:size) {Size::GargantuanTall.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -4
    expect(size.special_modifier).to eq 4
    expect(size.fly_modifier).to eq -6
    expect(size.stealth_modifier).to eq -12
    expect(size.reach).to eq 20
  end
end

describe Size::GargantuanLong do
  let(:size) {Size::GargantuanLong.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -4
    expect(size.special_modifier).to eq 4
    expect(size.fly_modifier).to eq -6
    expect(size.stealth_modifier).to eq -12
    expect(size.reach).to eq 20
  end
end

describe Size::ColossalTall do
  let(:size) {Size::ColossalTall.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -8
    expect(size.special_modifier).to eq 8
    expect(size.fly_modifier).to eq -8
    expect(size.stealth_modifier).to eq -16
    expect(size.reach).to eq 30
  end
end

describe Size::ColossalLong do
  let(:size) {Size::ColossalTall.new()}

  it "has correctly set attributes" do
    expect(size.modifier).to eq -8
    expect(size.special_modifier).to eq 8
    expect(size.fly_modifier).to eq -8
    expect(size.stealth_modifier).to eq -16
    expect(size.reach).to eq 30
  end
end
