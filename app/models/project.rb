class Project < ApplicationRecord
     
  validates :title, presence:true, length:{minimum:10}
  validates :category, presence:true
  validates :description, presence:true, length:{minimum:15}
  validates :active, presence:true
  validates :challenges, presence:true, length:{minimum:15}

  validates :start_date, presence:true
  validates :end_date, presence:true
  validates :duration, presence:true
  validates :git_url, presence:true
  validates :live_url, presence:true
  validates :priority, presence:true
  
  # enum category : [:UiUx, :Logo_design, :Mobile, :Web] 
  
  
end
