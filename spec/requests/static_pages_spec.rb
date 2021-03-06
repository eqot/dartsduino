require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "dartsduino" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('dartsduino') }
    it { should have_title("#{base_title}") }
    it { should_not have_title('|') }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("#{base_title} | About") }
  end

end
