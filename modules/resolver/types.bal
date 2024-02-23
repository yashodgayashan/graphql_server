public type EmployeeRecord record {|
    string no;
    string lastName;
    string firstName;
    string novellId;
    string emailAddress;
    string startDate;
|};

public type ContactRecord record {|
    string entity;
    string mailerNumber;
    string contactNumber;
    string taxGroup;
|};

public type EntityRecord record {|
    EmployeeRecord[] campTeam;
    string id;
    string number;
    string description;
    decimal trMarketvalue;
    decimal ROI;
    string inceptionDate;
    SubAccountRecord[] subAccounts?;
    string 'type;
    ContactRecord[] contacts;
|};

public type SubAccountRecord record {|
    EmployeeRecord[] campTeam;
    string id;
    string number;
    string description;
    decimal trMarketvalue;
    decimal ROI;
    string inceptionDate;
    ContactRecord[] contacts;
|};

public type AccountRecord record {|
    string name;
    string number;
    string description;
    string  taxGroupId;
    decimal tradingMarketValue;
    EntityRecord[] entities;
    EmployeeRecord[] campTeam;
    ContactRecord[] contacts;
|};

public type FamilyGroupRecord record {|
    string name;
    string number;
    RelationshipRecord[] relationships;
    EmployeeRecord[] campTeam;
    ContactRecord[] contacts;
|};

public type RelationshipRecord record {|
    string name;
    string number;
    AccountRecord[] accounts;
    EmployeeRecord[] campTeam;
    ContactRecord[] contacts;
|};
