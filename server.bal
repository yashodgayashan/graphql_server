import ballerina/graphql;

import cmbv2.resolver;

@graphql:ServiceConfig {
    graphiql: {
        enabled: true
    }
}
service /graphql on new graphql:Listener(9090) {
    isolated resource function get familyGroups() returns resolver:FamilyGroup[]|error {
        resolver:FamilyGroup[] familyGroups = from resolver:FamilyGroupRecord familyGroup in resolver:familyGroups 
                                        select new (familyGroup);
        return familyGroups;
    }

    isolated resource function get familyGroup(string id) returns resolver:FamilyGroup|error {
        lock {
            return new (resolver:familyGroupOne);
        }
    }

    isolated resource function get relationships(string fimaliyGroupId) returns resolver:Relationship[]|error {
        resolver:Relationship[] relationships = from resolver:RelationshipRecord relationship in resolver:relationships 
                                        select new (relationship);
        return relationships;
    }

    isolated resource function get entities(string relationshipId) returns resolver:Entity[]|error {
        resolver:Entity[] entities = from resolver:EntityRecord entity in resolver:entities 
                                        select new (entity);
        return entities;
    }
}