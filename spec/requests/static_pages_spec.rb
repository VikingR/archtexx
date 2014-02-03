require 'spec_helper'


describe "StaticPages" do

  subject { page }
  let(:base_title) { "Archtexx" }

  describe "Home page" do
    before { visit root_path }

    it { should have_link('Contact', href: '/contact') }
    it { should have_link('Sign in') }

    it { should have_title("#{base_title}") }
    it { should_not have_title("#{base_title} |") }

  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h2', text: 'Contact') }
 	  it { should have_link('Back', href: '/') }

    it { should have_title("#{base_title} | Contact") }
  end

end
