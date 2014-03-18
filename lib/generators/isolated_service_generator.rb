require 'rails/generators'

class IsolatedServiceGenerator < Rails::Generators::NamedBase
  desc "This generator creates a isolate service at lib/isolated_service. This allows you to isolate a service and fake out its response."
  def copy_isolate_service_file
    create_file "lib/isolated_service/#{file_name}/#{file_name}.rb", ERB.new(File.read(File.dirname(__FILE__) + "/isolated_service/templates/isolated_service.erb")).result(binding)
  end

  def create_rackup_file
    create_file "lib/isolated_service/#{file_name}/#{file_name}.ru", ERB.new(File.read(File.dirname(__FILE__) + "/isolated_service/templates/rackup.erb")).result(binding)
  end

  def create_procfile
    if File.exists?('Procfile')
      append_to_file 'Procfile', "\n#{file_name}_isolated_service: rackup --port #{assign_port} lib/isolated_service/#{file_name}/#{file_name}.ru"
    else
      create_file 'Procfile', "#{file_name}_isolated_service: rackup --port #{assign_port} lib/isolated_service/#{file_name}/#{file_name}.ru"
    end
  end

  def assign_port
    "3900"  
  end
end
