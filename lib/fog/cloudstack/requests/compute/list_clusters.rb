module Fog
  module Compute
    class Cloudstack

      class Real
        # Lists clusters.
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/listClusters.html]
        def list_clusters(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listClusters') 
          else
            options.merge!('command' => 'listClusters')
          end
          request(options)
        end
      end

    end
  end
end

