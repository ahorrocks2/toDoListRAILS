class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true

  scope(:not_done, -> do
    where({:done => false})
  end)

  scope(:done, -> do
    where({:done => true})
  end)
end
