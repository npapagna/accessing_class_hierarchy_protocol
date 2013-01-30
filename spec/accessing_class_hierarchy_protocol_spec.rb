require "spec_helper"

describe AccessingClassHierarchyProtocol do

  describe '.all_subclasses' do

    context "when a class has no subclasses" do

      it "doesn't return any subclasses" do
        Invertebrate.all_subclasses.should be_empty
      end

    end

    context "when a class has 2 subclasses" do

      context "when none of the subclasses have subclasses" do

        it "doesn't return any subclasses" do
          Invertebrate.all_subclasses.should be_empty
        end

      end

      context "when one of the subclasses has 2 subclasses" do

        it "returns 4 subclasses" do
          Animal.all_subclasses.size.should == 4
        end

        it "returns the class's subclasses" do
          Animal.all_subclasses.should include(Invertebrate)
          Animal.all_subclasses.should include(Vertebrate)
        end

        it "returns the 2 subclasses of the subclass" do
          Animal.all_subclasses.should include(Reptile)
          Animal.all_subclasses.should include(Mammal)
        end

      end

    end

  end

  describe '.all_concrete_subclasses' do

    context "when a class has no subclasses" do

      it "doesn't return any subclasses" do
        Invertebrate.all_concrete_subclasses.should be_empty
      end

    end

    context 'when a class has 2 subclasses' do

      context "when none of the subclasses have subclasses" do

        it "doesn't return any subclasses" do
          Invertebrate.all_concrete_subclasses.should be_empty
        end

      end

      context "when one of the subclasses has 2 subclasses" do

        it "returns 3 subclasses" do
          Animal.all_concrete_subclasses.size.should == 3
        end

        it "returns the class's subclass that doesn't have subclasses" do
          Animal.all_concrete_subclasses.should include(Invertebrate)
        end

        it "returns the 2 subclasses of the subclass" do
          Animal.all_concrete_subclasses.should include(Reptile)
          Animal.all_concrete_subclasses.should include(Mammal)
        end

      end

    end

  end

  describe '.is_concrete?' do

    context "with a class that doesn't have subclasses" do

      it "returns true" do
        Invertebrate.is_concrete?.should be_true
      end

    end

    context "with a class that has subclasses" do

      it "returns false" do
        Animal.is_concrete?.should be_false
      end

    end
  end

end