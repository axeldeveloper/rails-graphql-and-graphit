module Types
  class QueryType < Types::BaseObject

    field :projects, [Types::ProjectType], null: false,
          description: "Returns a list of projects for the user"

    def projects
      context[:current_user].projects
    end

    field :project, Types::ProjectType, null: false, 
          description: "Returns details for a project" do
      		argument :id, Integer, required: true
    end

    def project(id:)
      context[:current_user].projects.find(id)
    end
    
  end
end
