resources :question_sheets do |sheets|
  sheets.resources :pages,                               # pages/
                   :controller => :question_pages,
                   :name_prefix => 'question_',          # question_pages_path()
                   :member => { :reorder => :put, :show_panel => :get } do |pages|
    pages.resources :elements,
                    :collection => { :reorder => :put },
                    :member => { :remove_from_grid => :post, :drop => :post }
  end
end

# form capture and review
resources :answer_sheets do |sheets|
  sheets.resources :pages,                              # pages/
                   :controller => :answer_pages,
                   :name_prefix => 'answer_'           # answer_pages_path()
end                 

resources :elements