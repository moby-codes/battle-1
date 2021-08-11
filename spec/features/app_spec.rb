require 'spec_helper'

describe "message", type: :feature do


  it 'displays message Testing infrastructure working!' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end