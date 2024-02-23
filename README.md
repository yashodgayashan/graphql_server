## CMB POC 

### Description

This is a simple POC for CMB where currently we have added the basic hierarchy of the project and the basic structure of the project.

### Running the project

To run the project, you need to have the following installed:

- Ballerina 2201.8.x

Then you can run the project using the following command:

```
bal run
```

### Testing the project

Following are some graphql queries that you can use to test the project:

**Get family groups**

```gql
query {
  familyGroups {
    name,
    number,
    campTeam {
      firstName,
      lastName
    },
    contacts {
      contactNumber
    },
    relationships {
      name,
      number,
      accounts {
        name,
        number,
        description,
        entities {
          id,
          trMarketvalue,
          inceptionDate,
          type
          subAccounts {
            id,
            inceptionDate,
            number
          }
        }
      }
    }
  }
}
```

**Get family group by id**

```graphql
query {
  familyGroup(id:"someid") {
    name,
    number,
    campTeam {
      firstName,
      lastName
    },
    contacts {
      contactNumber
    },
    relationships {
      name,
      number,
      accounts {
        name,
        number,
        description,
        entities {
          id,
          trMarketvalue,
          inceptionDate,
          type
          subAccounts {
            id,
            inceptionDate,
            number
          }
        }
      }
    }
  }
}
```

**Get relationships by family group id**

```graphql
query {
  relationships(fimaliyGroupId: "some-id") {
      name,
      number,
      campTeam {
        firstName,
        lastName
      }
      contacts {
        contactNumber
      }
      accounts {
        name,
        number,
        description,
        entities {
          id,
          trMarketvalue,
          inceptionDate,
          type
          subAccounts {
            id,
            inceptionDate,
            number
          }
        }
      }
    }
}
```

**Get entity by relationship id**

```graphql
query {
  entities(relationshipId: "some-id" ) {
    id,
    trMarketvalue,
    inceptionDate,
    type
    campTeam {
      firstName,
      lastName
    }
    contacts {
      contactNumber
    }
    subAccounts {
      id,
      inceptionDate,
      number
    }
  }
}
```