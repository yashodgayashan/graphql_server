
public isolated service class FamilyGroup {
    private final string name;
    private final string number;
    private final RelationshipRecord[] & readonly relationships;
    private final EmployeeRecord[] & readonly campTeam;
    private final ContactRecord[] & readonly contacts;

    public isolated function init(FamilyGroupRecord familyGroupRecord) {
        self.name = familyGroupRecord.name;
        self.number = familyGroupRecord.number;
        self.relationships = familyGroupRecord.relationships.cloneReadOnly();
        self.campTeam = familyGroupRecord.campTeam.cloneReadOnly();
        self.contacts = familyGroupRecord.contacts.cloneReadOnly();
    }

    resource function get name() returns string {
        return self.name;
    }

    resource function get number() returns string {
        return self.number;
    }

    resource function get relationships() returns Relationship[] {
        Relationship[] listResult = from RelationshipRecord relationship in self.relationships 
                            select new (relationship);
        return listResult;
    }

    resource function get campTeam() returns EmployeeRecord[] {
        lock {
            return self.campTeam.cloneReadOnly();
        }
    }

    resource function get contacts() returns ContactRecord[] {
        lock {
            return self.contacts.cloneReadOnly();
        }
    }
}

public isolated service class Relationship {
    private final string name;
    private final string number;
    private final AccountRecord[] & readonly accounts;
    private final EmployeeRecord[] & readonly campTeam;
    private final ContactRecord[] & readonly contacts;

    public isolated function init(RelationshipRecord relationshipRecord) {
        self.name = relationshipRecord.name;
        self.number = relationshipRecord.number;
        self.accounts = relationshipRecord.accounts.cloneReadOnly();
        self.campTeam = relationshipRecord.campTeam.cloneReadOnly();
        self.contacts = relationshipRecord.contacts.cloneReadOnly();
    }

    resource function get name() returns string {
        return self.name;
    }

    resource function get number() returns string {
        return self.number;
    }

    resource function get accounts() returns Account[] {
        Account[] listResult = from AccountRecord account in self.accounts 
                            select new (account);
        return listResult;
    }

    isolated resource function get campTeam() returns EmployeeRecord[] {
        lock {
            return self.campTeam.cloneReadOnly();
        }
    }

    isolated resource function get contacts() returns ContactRecord[] {
        lock {
            return self.contacts.cloneReadOnly();
        }
    }
}

public isolated service class Account {
    private final string name;
    private final string number;
    private final string description;
    private final string taxGroupId;
    private final decimal tradingMarketValue;
    private final EntityRecord[] & readonly entities;
    private final EmployeeRecord[] & readonly campTeam;
    private final ContactRecord[] & readonly contacts;

    public isolated function init(AccountRecord accountRecord) {
        self.name = accountRecord.name;
        self.number = accountRecord.number;
        self.description = accountRecord.description;
        self.taxGroupId = accountRecord.taxGroupId;
        self.tradingMarketValue = accountRecord.tradingMarketValue;
        self.entities = accountRecord.entities.cloneReadOnly();
        self.campTeam = accountRecord.campTeam.cloneReadOnly();
        self.contacts = accountRecord.contacts.cloneReadOnly();
    }

    isolated resource function get name() returns string {
        return self.name;
    }

    isolated resource function get number() returns string {
        return self.number;
    }

    isolated resource function get description() returns string {
        return self.description;
    }

    isolated resource function get taxGroupId() returns string {
        return self.taxGroupId;
    }

    isolated resource function get tradingMarketValue() returns decimal {
        return self.tradingMarketValue;
    }

    isolated resource function get entities() returns Entity[] {
        Entity[] listResult = from EntityRecord entity in self.entities 
                            select new (entity);
        return listResult;
    }

    isolated resource function get campTeam() returns EmployeeRecord[] {
        lock {
            return self.campTeam.cloneReadOnly();
        }
    }

    isolated resource function get contacts() returns ContactRecord[] {
        lock {
            return self.contacts.cloneReadOnly();
        }
    }
}

public isolated service class Entity {
    private final EmployeeRecord[] & readonly campTeam;
    private final string id;
    private final string number;
    private final string description;
    private final decimal trMarketvalue;
    private final decimal ROI;
    private final string inceptionDate;
    private final ContactRecord[] & readonly contacts;
    private final string 'type;
    private final SubAccountRecord[]? & readonly subAccounts;

    public isolated function init(EntityRecord entityRecord) {
        self.campTeam = entityRecord.campTeam.cloneReadOnly();
        self.id = entityRecord.id;
        self.number = entityRecord.number;
        self.description = entityRecord.description;
        self.trMarketvalue = entityRecord.trMarketvalue;
        self.ROI = entityRecord.ROI;
        self.inceptionDate = entityRecord.inceptionDate;
        self.contacts = entityRecord.contacts.cloneReadOnly();
        self.'type = entityRecord.'type;
        self.subAccounts = entityRecord.subAccounts.cloneReadOnly();
    }

    isolated resource function get campTeam() returns EmployeeRecord[] {
        lock {
            return self.campTeam.cloneReadOnly();
        }
    }

    isolated resource function get id() returns string {
        return self.id;
    }

    isolated resource function get number() returns string {
        return self.number;
    }

    isolated resource function get description() returns string {
        return self.description;
    }

    isolated resource function get trMarketvalue() returns decimal {
        return self.trMarketvalue;
    }

    isolated resource function get ROI() returns decimal {
        return self.ROI;
    }

    isolated resource function get inceptionDate() returns string {
        return self.inceptionDate;
    }

    isolated resource function get contacts() returns ContactRecord[] {
        lock {
            return self.contacts.cloneReadOnly();
        }
    }

    isolated resource function get 'type() returns string {
        return self.'type;
    }

    isolated resource function get subAccounts() returns SubAccount[]? {
        SubAccountRecord[]? subAccounts = self.subAccounts;
        if subAccounts == () {
            return;
        }
        
        SubAccount[] listResult = from SubAccountRecord subAccount in subAccounts 
                            select new (subAccount);
        return listResult;
    }
    
}

public isolated service class SubAccount {
    private final EmployeeRecord[] & readonly campTeam;
    private final string id;
    private final string number;
    private final string description;
    private final decimal trMarketvalue;
    private final decimal ROI;
    private final string inceptionDate;
    private final ContactRecord[] & readonly contacts;

    isolated function init(SubAccountRecord subAccountRecord) {
        self.campTeam = subAccountRecord.campTeam.cloneReadOnly();
        self.id = subAccountRecord.id;
        self.number = subAccountRecord.number;
        self.description = subAccountRecord.description;
        self.trMarketvalue = subAccountRecord.trMarketvalue;
        self.ROI = subAccountRecord.ROI;
        self.inceptionDate = subAccountRecord.inceptionDate;
        self.contacts = subAccountRecord.contacts.cloneReadOnly();
    }

    isolated resource function get campTeam() returns EmployeeRecord[] {
        lock {
            return self.campTeam.cloneReadOnly();
        }
    }

    isolated resource function get id() returns string {
        return self.id;
    }

    isolated resource function get number() returns string {
        return self.number;
    }

    isolated resource function get description() returns string {
        return self.description;
    }

    isolated resource function get trMarketvalue() returns decimal {
        return self.trMarketvalue;
    }

    isolated resource function get ROI() returns decimal {
        return self.ROI;
    }

    isolated resource function get inceptionDate() returns string {
        return self.inceptionDate;
    }

    isolated resource function get contacts() returns ContactRecord[] {
        lock {
            return self.contacts.cloneReadOnly();
        }
    }
}