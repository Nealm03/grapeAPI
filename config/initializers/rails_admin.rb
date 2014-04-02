Rails.application.eager_load!
config.included_models = ActiveRecord::Base.descendants.map!(&:name)