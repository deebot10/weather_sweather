require 'rails_helper'

RSpec.describe LibraryInfo do
  it 'exists' do
    # represents the info on the right of the = sign
    attrs = 
            {:destination=>"denver,co",
        :forecast=>{:summary=>"scattered clouds", :tempature=>"77.74 F"},
        :total_books_found=>35990,
        :books=>
          [{:isbn=>["9780762507849", "0762507845"],
            :title=>"Denver, Co",
            :publisher=>["Universal Map Enterprises"]},
          {:isbn=>["1427401683", "9781427401687"],
            :title=>"University of Denver Co 2007",
            :publisher=>["College Prowler"]},
          {:isbn=>["9780762557363", "0762557362"],
            :title=>"Denver Co Deluxe Flip Map",
            :publisher=>["Universal Map Enterprises"]},
          {:isbn=>["9780883183663", "0883183668"],
            :title=>"Photovoltaic safety, Denver, CO, 1988",
            :publisher=>["American Institute of Physics"]},
          {:isbn=>["9812582622", "9789812582621"],
            :title=>"Insight Fleximap Denver, CO (Insight Fleximaps)",
            :publisher=>["American Map Corporation"]}]}


    book = LibraryInfo.new(attrs)
    expect(book.class).to eq(LibraryInfo)
    expect(book.destination).to eq('denver,co')
    expect(book.books[0][:isbn].class).to eq(Array)
    expect(book.books.count).to eq(5)
  end
end