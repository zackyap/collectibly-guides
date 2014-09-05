CollectiblyGuides::Application.routes.draw do
  root 'guides#index'

  resources :guides

  get "characters/star-lord" => "characters#starlord", as: "gotg_starlord_guide"
  get "characters/rocket-raccoon" => "characters#rocketraccoon", as: "gotg_rocket_guide"
  get "characters/groot" => "characters#groot", as: "gotg_groot_guide"
  get "characters/gamora" => "characters#gamora", as: "gotg_gamora_guide"
  get "characters/drax" => "characters#drax", as: "gotg_drax_guide"
  get "characters/ships" => "characters#ships", as: "gotg_ships_guide"
  get "stgcc2014" => "characters#stgcc2014", as: "stgcc2014_guide"

  resources :characters

end
