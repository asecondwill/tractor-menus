Rails.application.config.after_initialize do
  # Extend the existing importmap
  Tractor.config.importmap.draw do
    # Add controllers from tractor-menus
    pin_all_from TractorMenus::Engine.root.join("app/assets/javascripts/tractor/controllers"), 
                under: "controllers", 
                to: "tractor/controllers"
   
  end
  
  # Add path to cache sweeper
  # add_path doesnt exist.  
  # Tractor.config.importmap.cache_sweeper.add_path(
  #   TractorMenus::Engine.root.join("app/assets/javascripts")
  # )

  Tractor.config.importmap.cache_sweeper watches: TractorMenus::Engine.root.join("app/assets/javascripts")

end