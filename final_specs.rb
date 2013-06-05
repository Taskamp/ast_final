require 'rspec'
require 'spec_helper'

describe "App" do
  it "presents the thesis" do
    app = Thesis.new
    homepage = Homepage.new
  end
end

#FEATURE ONE

describe "Homepage" do 
  it "provides access to the homepage" do
    output.should_receive(:puts).with(Text_one)
    #Text_one = title, personal_data, photo
    app.start('homepage')
end

Given(/^a homepage$/) do |homepage|
  homepage = Thesis::Homepage.new(output)
  output = Homepage.new
  homepage.start(output)
end

Given(/^a photo on the homepage$/) do |homepage|
  homepage = Thesis::Homepage.new(output)
end

Given(/^personal information on the homepage$/) do |homepage|
  homepage = Thesis::Homepage.new(output)
end

When(/^I open the app$/) do
  homepage = Thesis::Homepage.new(output)
  app.start
end

Then(/^I access the homepage$/) do
  output.messages.should include(Text_one)
end


describe "Prologue" do 
it "has a hyperlink to the prologue" do
  output.should_receive(:hyperlink).with('Prologue')
  app.hyperlink('Prologue')
end

Given(/^a hyperlink on the homepage to the prologue$/) do |prologue|
  prologue = Thesis::Prologue.new(output)
end

When(/^I click on the the hyperlink$/) do
  prologue = Thesis::Prologue.new(output)
  message.puts(hyperlink)
end

Then(/^I access the prologue$/) do
  Prologue = Thesis::Prologue.new(output)
  output.messages.should include(Prologue)
end

#FEATURE TWO
describe "Problem Analysis" do
  it "has a hyperlink from the prologue to the problem analysis" do
  output.should_receive(:Problem_Analysis)
  hyperlink.puts(Problem_Analysis)
end


Given(/^a hyperlink to a problem analysis after the prologue$/) do
  Problem_Analysis::Prologue.new(hyperlink)
end

When(/^I click on the hyperlink$/) do
  Prologue::Problem_Analysis.new.output
end

Then(/^I access the problem analysis$/) do
  output.messages.should include(Problem_Analysis)
end

#FEATURE THREE
Given(/^a problem analysis$/) do
  Problem_Analysis::Homepage.new(output)
end

When(/^there is a reference to literature review in the problem analysis$/) do
  Problem_Analysis::References.new.hyperlink 
end

Then(/^I can access the literature review through a hyperlink$/) do
  output.messages.should include(References)
end

Then(/^I can go back to the problem analysis$/) do
  output.messages.should include(hyperlink)
end

#FEATURE FOUR
describe "Picture" do
  it "should include a picture" do
  end
end

describe "Picture" do
  it "should include an option to show a close-up preview of the picture" do
  end
end

Given(/^a prologue$/) do
  Prologue::Picture.new
end

When(/^I see a picture and click on the picture$/) do
  picture = Prologue::Picture_preview.new
  picture.preview
end

Then(/^I see an image preview$/) do
  output.messages.should include(picture_preview)
end

#FEATURE FIVE
describe "Acknowledgements" do
  it "should provide a hyperlink from the homepage to the acknowledgements" do
    output.should.include(Acknowledgements)
    acknowledgements = Acknowledgements.new
  end
end


Given(/^a hyperlink in the homepage to the acknowledgements$/) do
  acknowledgements = Homepage::Acknowledgements.new(output)
    output = Acknowledgements.new
  acknowledgements.puts
end

When(/^I click on the hyperlink$/) do
  Acknowledgements = Homepage::Hyperlink.new(hyperlink)
  acknowledgements.start
end

Then(/^I access the acknowledgements$/) do
  output.messages.should include(acknowledgements)
end

#Then(/^I can go back to the homepage$/) do
  #pending # express the regexp above with the code you wish you had
#end

describe "References" do
  it "should provide a hyperlink from the homepage to references" do
    output.should include(References)
    references = References.new
    #the references provide a list of cited work
  end
end

Given(/^a hyperlink on the homepage to the references$/) do
  references = Homepage::References.new(output)
  output = References.new
  references.puts
end

When(/^I click on the hyperlink$/) do
  References = Homepage::Hyperlink.new(hyperlink)
  references.start
end

Then(/^I access the references$/) do
  output.messages.should include(references)
end

describe "self_reflection" do
  it "should provide a hyperlink from the homepage to the self_reflection" do
    output.should include(Self_Reflection)
    self_reflection = Self_Reflection.new
  end
end

Given(/^a hyperlink on the homepage to the self_reflection$/) do
  self_reflection = Homepage::Self_Reflection.new(output)
  output = Self_Reflection.new
  self_reflection.puts
end

When(/^I click on the hyperlink$/) do
  Self_Reflection = Homepage::Hyperlink.new(hyperlink)
  self_reflection.start
end

Then(/^I access the self_reflection$/) do
  output.messages.should include(self_reflection)
end
