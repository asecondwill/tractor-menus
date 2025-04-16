adds menus to your tractor admin area.  

# to style your admin area
add  this to app/assets/stylesheets/admin.scss in your app.
````sass
@import "admin/tractor-menus";
````

# override allowed models to be searched like

````ruby
Rails.application.config.to_prepare do
  TractorMenus::Engine.config.allowed_models = ["CustomModel", "AnotherModel"]
end
````

## add menus to existing sidebar_conent_items
````ruby
 # config/initializers/tractor.rb
 Rails.application.config.to_prepare do
  Tractor::Engine.config.sidebar_conent_items <<  {
      name: 'Menus',
      icon: 'bi-menu-app',
      path: '/admin/menus'
    }
  end
````

