require 'rails/generators'

class IsolatedServiceGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../../lib/generators/isolated_service/templates")

  desc "This generator creates a isolate service at lib/isolated_service"

  def copy_isolate_service_file
    create_file "lib/isolated_service/#{file_name}/#{file_name}.rb", ERB.new(File.read("../../lib/generators/isolated_service/templates/isolated_service.erb")).result(binding)
  end

  def create_rackup_file
    create_file "lib/isolated_service/#{file_name}/#{file_name}.ru", ERB.new(File.read("../../lib/generators/isolated_service/templates/rackup.erb")).result(binding)
  end

  def create_procfile
    if File.exists?('Procfile')
      append_to_file 'Procfile', "#{file_name}_isolated_service: rackup --port #{assign_port} lib/isolated_services/#{file_name}/#{file_name}.ru\n"
    else
      create_file 'Procfile', "#{file_name}_isolated_service: rackup --port #{assign_port} lib/isolated_services/#{file_name}/#{file_name}.ru\n"
    end
  end

  def assign_port
    "3900"  
  end
end
