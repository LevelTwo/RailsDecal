# RailsDecal
Homeworks and projects for CS198 (Rails Decal) Spring 2016

# Rails Cheat Sheet
`bundle exec rake db: migrate`

`bundle install`

`rake routes`

```
$ rails console
> u = User.new
> u.age # Should not error
```

`rails server`

## Standalone Migration Generation

`$ bin/rails generate migration AddDetailsToProducts part_number:string price:decimal`

will generate

```
class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :part_number, :string
    add_column :products, :price, :decimal
  end
end
```

## Model Generators

```
$ bin/rails generate model Product name:string description:text
```

will create a migration that looks like this

```
class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
 
      t.timestamps
    end
  end
end
```
