require "spec_helper"

module GlimmerSpec
  describe "Glimmer Table Data Binding" do
    include Glimmer

    before(:all) do
      class PersonCommunity
        attr_accessor :groups

        def initialize
          @groups = []
        end
      end

      class PersonGroup
        attr_accessor :people
        attr_accessor :selected_person

        def initialize
          @people = []
        end
      end

      class Person
        attr_accessor :name, :age, :adult
      end

      class ::RedTable
        include Glimmer::UI::CustomWidget

        body {
          table(swt_style) {
            background :red
          }
        }
      end
    end

    after(:all) do
      %w[
        PersonCommunity
        PersonGroup
        Person
        RedTable
      ].each do |constant|
        Object.send(:remove_const, constant) if Object.const_defined?(constant)
      end
    end

    let(:person1) do
      Person.new.tap do |person|
        person.name = "Bruce Ting"
        person.age = 45
        person.adult = true
      end
    end

    let(:person2) do
      Person.new.tap do |person|
        person.name = "Julia Fang"
        person.age = 17
        person.adult = false
      end
    end
    
    let(:selected_person) { person2 }
    
    let(:group) do    
      PersonGroup.new.tap do |g|
        g.people << person1
        g.people << person2
        g.selected_person = person2
      end
    end

    let(:community) do
      PersonCommunity.new.tap do |c|
        c.groups << group
      end
    end 

    it "data binds table items" do
      @target = shell {
        @table = table {
          table_column {
            text "Name"
            width 120
          }
          table_column {
            text "Age"
            width 120
          }
          table_column {
            text "Adult"
            width 120
          }
          items bind(group, :people), column_properties(:name, :age, :adult)
        }
        @table_nested_indexed = table {
          table_column {
            text "Name"
            width 120
          }
          table_column {
            text "Age"
            width 120
          }
          table_column {
            text "Adult"
            width 120
          }
          items bind(community, "groups[0].people"), column_properties(:name, :age, :adult)
        }
      }

      expect(@table.swt_widget.getColumnCount).to eq(3)
      expect(@table.swt_widget.getItems.size).to eq(2)

      expect(@table.swt_widget.getItems[0].getText(0)).to eq("Bruce Ting")
      expect(@table.swt_widget.getItems[0].getText(1)).to eq("45")
      expect(@table.swt_widget.getItems[0].getText(2)).to eq("true")

      expect(@table.swt_widget.getItems[1].getText(0)).to eq("Julia Fang")
      expect(@table.swt_widget.getItems[1].getText(1)).to eq("17")
      expect(@table.swt_widget.getItems[1].getText(2)).to eq("false")

      expect(@table_nested_indexed.swt_widget.getColumnCount).to eq(3)
      expect(@table_nested_indexed.swt_widget.getItems.size).to eq(2)

      expect(@table_nested_indexed.swt_widget.getItems[0].getText(0)).to eq("Bruce Ting")
      expect(@table_nested_indexed.swt_widget.getItems[0].getText(1)).to eq("45")
      expect(@table_nested_indexed.swt_widget.getItems[0].getText(2)).to eq("true")

      expect(@table_nested_indexed.swt_widget.getItems[1].getText(0)).to eq("Julia Fang")
      expect(@table_nested_indexed.swt_widget.getItems[1].getText(1)).to eq("17")
      expect(@table_nested_indexed.swt_widget.getItems[1].getText(2)).to eq("false")

      person3 = Person.new
      person3.name = "Andrea Sherlock"
      person3.age = 23
      person3.adult = true

      group.people << person3

      expect(@table.swt_widget.getItems.size).to eq(3)
      expect(@table.swt_widget.getItems[2].getText(0)).to eq("Andrea Sherlock")
      expect(@table.swt_widget.getItems[2].getText(1)).to eq("23")
      expect(@table.swt_widget.getItems[2].getText(2)).to eq("true")

      group.people.delete person2

      expect(@table.swt_widget.getItems.size).to eq(2)
      expect(@table.swt_widget.getItems[1].getText(0)).to eq("Andrea Sherlock")
      expect(@table.swt_widget.getItems[1].getText(1)).to eq("23")
      expect(@table.swt_widget.getItems[1].getText(2)).to eq("true")

      group.people.delete_at(0)

      expect(@table.swt_widget.getItems.size).to eq(1)
      expect(@table.swt_widget.getItems[0].getText(0)).to eq("Andrea Sherlock")
      expect(@table.swt_widget.getItems[0].getText(1)).to eq("23")
      expect(@table.swt_widget.getItems[0].getText(2)).to eq("true")

      group.people.clear

      expect(0).to eq(@table.swt_widget.getItems.size)

      group.people = [person2, person1]

      expect(2).to eq(@table.swt_widget.getItems.size)

      expect(@table.swt_widget.getItems[0].getText(0)).to eq("Julia Fang")
      expect(@table.swt_widget.getItems[0].getText(1)).to eq("17")
      expect(@table.swt_widget.getItems[0].getText(2)).to eq("false")

      expect(@table.swt_widget.getItems[1].getText(0)).to eq("Bruce Ting")
      expect(@table.swt_widget.getItems[1].getText(1)).to eq("45")
      expect(@table.swt_widget.getItems[1].getText(2)).to eq("true")

      person1.name = "Bruce Flee"

      expect(@table.swt_widget.getItems[1].getText(0)).to eq("Bruce Flee")
    end

    it "data binds table selection" do
      @target = shell {
        @table = table {
          table_column {
            text "Name"
            width 120
          }
          table_column {
            text "Age"
            width 120
          }
          table_column {
            text "Adult"
            width 120
          }
          items bind(group, :people), column_properties(:name, :age, :adult)
          selection bind(group, :selected_person)
        }
      }

      selection = @table.swt_widget.getSelection      
      expect(selection.size).to eq(1)
      expect(selection.first.getData).to eq(person2)

      person3 = Person.new
      person3.name = "Andrea Sherlock"
      person3.age = 23
      person3.adult = true
      
      group.people << person3

      selection = @table.swt_widget.getSelection
      expect(selection.size).to eq(1)
      expect(selection.first.getData).to eq(person2)

      group.people.delete person2

      selection = @table.swt_widget.getSelection
      expect(selection.size).to eq(1)
      expect(selection.first.getData).to eq(person1)

      group.selected_person = person1

      selection = @table.swt_widget.getSelection
      expect(selection.size).to eq(1)
      expect(selection.first.getData).to eq(person1)
    end

    it "data binds text widget to a string property for a custom widget table" do
      @target = shell {
        @table = red_table {
          table_column {
            text "Name"
            width 120
          }
          table_column {
            text "Age"
            width 120
          }
          table_column {
            text "Adult"
            width 120
          }
          items bind(group, :people), column_properties(:name, :age, :adult)
        }
      }

      expect(@table.swt_widget.getBackground).to eq(Glimmer::SWT::ColorProxy.new(:red).swt_color)
      expect(@table.swt_widget.getColumnCount).to eq(3)
      expect(@table.swt_widget.getItems.size).to eq(2)

      expect(@table.swt_widget.getItems[0].getText(0)).to eq("Bruce Ting")
      expect(@table.swt_widget.getItems[0].getText(1)).to eq("45")
      expect(@table.swt_widget.getItems[0].getText(2)).to eq("true")

      expect(@table.swt_widget.getItems[1].getText(0)).to eq("Julia Fang")
      expect(@table.swt_widget.getItems[1].getText(1)).to eq("17")
      expect(@table.swt_widget.getItems[1].getText(2)).to eq("false")
    end
  end
end
