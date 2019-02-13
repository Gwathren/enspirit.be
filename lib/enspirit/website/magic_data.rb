module Enspirit
  module Website
    class MagicData < OpenStruct

      def self.new(data)
        super(Hash[data.map{|k,v| [ k, v.is_a?(Hash) ? MagicData.new(v) : v ] }])
      end

      def self.load(path)
        new Path(path).load
      end

    end # class MagicData
  end # module Website
end # module Enspirit

