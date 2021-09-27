require 'rails_helper'

describe LibraryFacade, :vcr do
  context "instance methods" do
    it "returns books matching selections" do
      selection = LibraryFacade.find_books('denver,co', 5)

      expect(selection.class).to eq(LibraryInfo)
      expect(selection.books.class).to eq(Array)
      expect(selection.destination.class).to eq(String)
     
      check_hash_structure(selection.books[0], :isbn, Array)
      check_hash_structure(selection.books[0], :publisher, Array)
    end
  end
end