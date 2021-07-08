module Types
  class MutationType < Types::BaseObject
    field :add_project, mutation: Mutations::AddProjectMutation
  end
end
