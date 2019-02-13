require 'spec_helper'
module Enspirit
  module Website
    describe MagicData do

      it 'works as expected' do
        md = MagicData.load(ROOT_FOLDER/"data/homepage.yml")
        expect(md.contact.h2).to eql("Et si nous travaillions ensemble ?")
      end

    end
  end
end
