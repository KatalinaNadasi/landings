class PagesController < ApplicationController
  def punch
  end

  def demoday
    redirect_to batch_demoday_path(id: 8)
  end

  def batch_demoday
    @batch = YAML.load_file(Rails.root.join('db/batch8.yml')).with_indifferent_access
  end
end

