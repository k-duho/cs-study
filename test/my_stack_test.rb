require "minitest/autorun"
require "../my_stack"

describe MyStack do
  before do
    stacked_objects.each { |object| stack.push object }
  end

  let(:stack) { MyStack.new }
  let(:stacked_objects) { objects }

  describe "when stack.list is [1, 5, 10]" do
    let(:objects) { [1, 5, 10] }

    describe "when execute #pop 3 times" do
      it "should return 1, 5, 10 in order" do
        _(stack.pop).must_equal 10
        _(stack.pop).must_equal 5
        _(stack.pop).must_equal 1
        _(stack.list).must_equal []
      end
    end

    describe "when execute #push, with 50" do
      before { stack.push(50) }

      it "should be after 10" do
        _(stack.list).must_equal [1, 5, 10, 50]
      end
    end

    describe "when execute #peek" do
      it "should return 10" do
        _(stack.peek).must_equal 10
      end
    end

    describe "when execute #empty?" do
      it "should return false" do
        _(stack.empty?).must_equal false
      end
    end
  end

  describe "when stack.list is empty" do
    let(:objects) { [] }

    describe "execute #pop" do
      it "should return nil" do
        _(stack.pop).must_equal nil
      end
    end

    describe "execute #push, with 100" do
      before { stack.push(100) }

      it "stack.list should be [100]" do
        _(stack.list).must_equal [100]
      end
    end

    describe "when execute #empty?" do
      it "should return true" do
        _(stack.empty?).must_equal true
      end
    end
  end
end
