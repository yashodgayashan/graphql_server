public EmployeeRecord & readonly employeeOne = {
    no: "123",
    lastName: "Smith",
    firstName: "John",
    novellId: "jsmith",
    emailAddress: "john@test.com",
    startDate: "01/01/2019"
};

public EmployeeRecord & readonly employeeTwo = {
    no: "124",
    lastName: "Doe",
    firstName: "Jane",
    novellId: "jdoe",
    emailAddress: "jane@test.com",
    startDate: "01/01/2019"
};

public EmployeeRecord & readonly employeeThree = {
    no: "125",
    lastName: "Doe",
    firstName: "John",
    novellId: "jdoe2",
    emailAddress: "jdeo@test.com",
    startDate: "01/01/2019"
};

public ContactRecord & readonly contactOne = {
    entity: "123",
    mailerNumber: "123",
    contactNumber: "123",
    taxGroup: "123"
};

public ContactRecord & readonly contactTwo = {
    entity: "124",
    mailerNumber: "124",
    contactNumber: "124",
    taxGroup: "124"
};

public ContactRecord & readonly contactThree = {
    entity: "125",
    mailerNumber: "125",
    contactNumber: "125",
    taxGroup: "125"
};

public ContactRecord & readonly contactFour = {
    entity: "126",
    mailerNumber: "126",
    contactNumber: "126",
    taxGroup: "126"
};

public ContactRecord & readonly contactFive = {
    entity: "127",
    mailerNumber: "127",
    contactNumber: "127",
    taxGroup: "127"
};

public ContactRecord & readonly contactSix = {
    entity: "128",
    mailerNumber: "128",
    contactNumber: "128",
    taxGroup: "128"
};

public ContactRecord & readonly contactSeven = {
    entity: "129",
    mailerNumber: "129",
    contactNumber: "129",
    taxGroup: "129"
};

public SubAccountRecord & readonly subAccountOne = {
    campTeam: [employeeOne, employeeTwo],
    id: "123",
    number: "123",
    description: "Description One",
    trMarketvalue: 123.45,
    ROI: 123.45,
    inceptionDate: "01/01/2019",
    contacts: [contactOne, contactTwo]
};

public SubAccountRecord & readonly subAccountTwo = {
    campTeam: [employeeThree],
    id: "124",
    number: "124",
    description: "Description Two",
    trMarketvalue: 124.45,
    ROI: 124.45,
    inceptionDate: "01/01/2019",
    contacts: [contactThree, contactFour]
};

public SubAccountRecord & readonly subAccountThree = {
    campTeam: [employeeOne, employeeTwo],
    id: "125",
    number: "125",
    description: "Description Three",
    trMarketvalue: 125.45,
    ROI: 125.45,
    inceptionDate: "01/01/2019",
    contacts: [contactFive, contactSix]
};

public SubAccountRecord & readonly subAccountFour = {
    campTeam: [employeeThree],
    id: "126",
    number: "126",
    description: "Description Four",
    trMarketvalue: 126.45,
    ROI: 126.45,
    inceptionDate: "01/01/2019",
    contacts: [contactSeven]
};

public EntityRecord & readonly entityOne = {
    campTeam: [employeeOne, employeeTwo],
    id: "123",
    number: "123",
    description: "Description One",
    trMarketvalue: 123.45,
    ROI: 123.45,
    inceptionDate: "01/01/2019",
    contacts: [contactOne, contactTwo],
    subAccounts: [subAccountOne, subAccountTwo],
    'type: "InvestmentGroup"
};

public EntityRecord & readonly entityTwo = {
    campTeam: [employeeThree],
    id: "124",
    number: "124",
    description: "Description Two",
    trMarketvalue: 124.45,
    ROI: 124.45,
    inceptionDate: "01/01/2019",
    contacts: [contactThree, contactFour],
    'type: "SubAccount"
};

public EntityRecord & readonly entityThree = {
    campTeam: [employeeOne, employeeTwo],
    id: "125",
    number: "125",
    description: "Description Three",
    trMarketvalue: 125.45,
    ROI: 125.45,
    inceptionDate: "01/01/2019",
    contacts: [contactFive, contactSix],
    subAccounts: [subAccountThree, subAccountFour],
    'type: "InvestmentGroup"
};

public EntityRecord & readonly entityFour = {
    campTeam: [employeeThree],
    id: "126",
    number: "126",
    description: "Description Four",
    trMarketvalue: 126.45,
    ROI: 126.45,
    inceptionDate: "01/01/2019",
    contacts: [contactSeven],
    'type: "SubAccount"
};

public EntityRecord & readonly entityFive = {
    campTeam: [employeeOne, employeeTwo],
    id: "127",
    number: "127",
    description: "Description Five",
    trMarketvalue: 127.45,
    ROI: 127.45,
    inceptionDate: "01/01/2019",
    contacts: [contactOne, contactTwo],
    subAccounts: [subAccountOne, subAccountTwo],
    'type: "InvestmentGroup"
};

public EntityRecord & readonly entitySix = {
    campTeam: [employeeThree],
    id: "128",
    number: "128",
    description: "Description Six",
    trMarketvalue: 128.45,
    ROI: 128.45,
    inceptionDate: "01/01/2019",
    contacts: [contactThree, contactFour],
    'type: "SubAccount"
};

public AccountRecord & readonly accountOne = {
    name: "Account One",
    number: "123",
    description: "Description One",
    taxGroupId: "123",
    tradingMarketValue: 123.45,
    entities: [entityOne, entityTwo],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public AccountRecord & readonly accountTwo = {
    name: "Account Two",
    number: "124",
    description: "Description Two",
    taxGroupId: "124",
    tradingMarketValue: 124.45,
    entities: [entityThree, entityFour],
    contacts: [contactThree, contactFour],
    campTeam: [employeeOne, employeeTwo]
};

public AccountRecord & readonly accountThree = {
    name: "Account Three",
    number: "125",
    description: "Description Three",
    taxGroupId: "125",
    tradingMarketValue: 125.45,
    entities: [entityFive, entitySix],
    contacts: [contactFive, contactSix],
    campTeam: [employeeOne, employeeTwo]
};

public AccountRecord & readonly accountFour = {
    name: "Account Four",
    number: "126",
    description: "Description Four",
    taxGroupId: "126",
    tradingMarketValue: 126.45,
    entities: [entityOne, entityTwo],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public RelationshipRecord & readonly relationshipOne = {
    name: "Relationship One",
    number: "123",
    accounts: [accountOne, accountTwo],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public RelationshipRecord & readonly relationshipTwo = {
    name: "Relationship Two",
    number: "124",
    accounts: [accountThree, accountFour],
    contacts: [contactThree, contactFour],
    campTeam: [employeeOne, employeeTwo]
};

public RelationshipRecord & readonly relationshipThree = {
    name: "Relationship Three",
    number: "125",
    accounts: [accountOne, accountTwo],
    contacts: [contactFive, contactSix],
    campTeam: [employeeOne, employeeTwo]
};

public RelationshipRecord & readonly relationshipFour = {
    name: "Relationship Four",
    number: "126",
    accounts: [accountThree, accountFour],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public final FamilyGroupRecord & readonly familyGroupOne = {
    name: "Family Group One",
    number: "123",
    relationships: [relationshipOne, relationshipTwo],
    contacts: [contactThree, contactFour],
    campTeam: [employeeOne, employeeTwo]
};

public final FamilyGroupRecord & readonly familyGroupTwo = {
    name: "Family Group Two",
    number: "124",
    relationships: [relationshipThree, relationshipFour],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public final FamilyGroupRecord & readonly familyGroupThree = {
    name: "Family Group Three",
    number: "125",
    relationships: [relationshipOne, relationshipTwo],
    contacts: [contactFive, contactSix],
    campTeam: [employeeOne, employeeTwo]
};

public final FamilyGroupRecord & readonly familyGroupFour = {
    name: "Family Group Four",
    number: "126",
    relationships: [relationshipThree, relationshipFour],
    contacts: [contactOne, contactTwo],
    campTeam: [employeeOne, employeeTwo]
};

public final FamilyGroupRecord[] & readonly familyGroups = [
    familyGroupOne.cloneReadOnly(), 
    familyGroupTwo.cloneReadOnly(), 
    familyGroupThree.cloneReadOnly(), 
    familyGroupFour.cloneReadOnly()
];

public final RelationshipRecord[] & readonly relationships = [
    relationshipOne.cloneReadOnly(), 
    relationshipTwo.cloneReadOnly(), 
    relationshipThree.cloneReadOnly(), 
    relationshipFour.cloneReadOnly()
];

public final EntityRecord[] & readonly entities = [
    entityOne.cloneReadOnly(), 
    entityTwo.cloneReadOnly(), 
    entityThree.cloneReadOnly(), 
    entityFour.cloneReadOnly(), 
    entityFive.cloneReadOnly(), 
    entitySix.cloneReadOnly()
];
