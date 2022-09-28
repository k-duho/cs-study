require "minitest/autorun"
require "../my_queue"

describe MyQueue do
  before do
    queued_objects.each { |object| queue.push object }
  end

  let(:queue) { MyQueue.new }
  let(:queued_objects) { objects }

  describe "when queue.list is [1, 5, 10]" do
    let(:objects) { [1, 5, 10] }

    describe "execute #pop 3 times" do
      it "should return 1, 5, 10 in order" do
        _(queue.pop).must_equal 1
        _(queue.pop).must_equal 5
        _(queue.pop).must_equal 10
        _(queue.list).must_equal []
      end
    end

    describe "execute #push, with 50" do
      before { queue.push(50) }

      it "should be after 10" do
        _(queue.list).must_equal [1, 5, 10, 50]
      end
    end

    describe "execute #first" do
      it "should return 1" do
        _(queue.first).must_equal 1
      end
    end

    it "empty? return false" do
      _(queue.empty?).must_equal false
    end
  end

  describe "when queue.list is []" do
    let(:objects) { [] }

    describe "execute #pop" do
      it "should return nil" do
        _(queue.pop).must_equal nil
      end
    end

    it "empty? return true" do
      _(queue.empty?).must_equal true
    end
  end
end
