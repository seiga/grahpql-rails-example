module Queries
  class AllLinks < BaseQuery
    description 'Find all links'

    type [Types::LinkType], null: false

    def resolve
      Link.all
    end
  end
end