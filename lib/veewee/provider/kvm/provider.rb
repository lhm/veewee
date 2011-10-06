require 'veewee/provider/core/provider'

module Veewee
  module Provider
    module Kvm
      class Provider < Veewee::Provider::Core::Provider

        # Translate the definition ssh options to ssh options that can be passed to Net::Ssh calls
        # We expect plain ssh for a connection

        def check_requirements
          ["ruby-libvirt","fog"].each do |gemname|
            unless gem_available?(gemname)
              raise Veewee::Error,"The kvm provider requires the gem '#{gemname}' to be installed\n"    + "gem install #{gemname}"
            end
          end
        end


        def build(definition_name,box_name,options)

          super(definition_name,box_name,options)

        end

      end #End Class
    end # End Module
  end # End Module
end # End Module
