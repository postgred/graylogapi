class GraylogAPI
  class System
    # class for get system information of a node
    class Cluster
      def initialize(client)
        @client = client
      end

      def node
        @client.json_request(:get, '/system/cluster/node')
      end

      def nodes
        @client.json_request(:get, '/system/cluster/nodes')
      end

      def node_by_id(id)
        @client.json_request(:get, "/system/cluster/nodes/#{id}")
      end
    end
  end
end