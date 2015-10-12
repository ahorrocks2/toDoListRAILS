require 'rails_helper'

describe Task do
  it { should validate_presence_of :description }
  it { should belong_to :list }

  describe(".not_done") do
    it("returns not done tasks") do
      task1 = Task.create({:description => "task1", :done=> false})
      task2 = Task.create({:description => "task2", :done=> false})
      not_done_tasks = [task1, task2]
      done_task = Task.create({:description => "im done", :done=> true})
      expect(Task.not_done()).to(eq(not_done_tasks))
    end
  end
end
