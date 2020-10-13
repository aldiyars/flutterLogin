
import 'dart:convert';

class Opportunity {
  Opportunity({
    this.entityName,
    this.instanceName,
    this.id,
    this.probabilityStagePercent,
    this.notes,
    this.number,
    this.author,
    this.tax,
    this.taxRate,
    this.name,
    this.actions,
    this.party,
    this.startDate,
    this.probabilityPercent,
    this.attachments,
    this.contracts,
    this.sentByTaxi,
    this.products,
    this.salesMethod,
    this.currency,
    this.deadline,
    this.amount,
    this.actualAmount,
    this.stage,
    this.amountWithTax,
    this.endDate,
    this.project,
    this.campaign,
    this.description,
    this.discountPercent,
    this.souvenir2,
    this.souvenir1,
    this.souvenir3,
  });

  OpportunityEntityName entityName;
  String instanceName;
  String id;
  int probabilityStagePercent;
  List<dynamic> notes;
  String number;
  Author author;
  Currency tax;
  double taxRate;
  String name;
  List<Action> actions;
  Campaign party;
  DateTime startDate;
  int probabilityPercent;
  List<Attachment> attachments;
  List<Contract> contracts;
  bool sentByTaxi;
  List<OpportunityProduct> products;
  SalesMethod salesMethod;
  Currency currency;
  DateTime deadline;
  int amount;
  double actualAmount;
  Stage stage;
  double amountWithTax;
  DateTime endDate;
  Project project;
  Campaign campaign;
  String description;
  int discountPercent;
  Souvenir1 souvenir2;
  Souvenir1 souvenir1;
  Souvenir1 souvenir3;

  factory Opportunity.fromJson(String str) => Opportunity.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Opportunity.fromMap(Map<String, dynamic> json) => Opportunity(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    probabilityStagePercent: json["probabilityStagePercent"] == null ? null : json["probabilityStagePercent"],
    notes: json["notes"] == null ? null : List<dynamic>.from(json["notes"].map((x) => x)),
    number: json["number"] == null ? null : json["number"],
    author: json["author"] == null ? null : Author.fromMap(json["author"]),
    tax: json["tax"] == null ? null : Currency.fromMap(json["tax"]),
    taxRate: json["taxRate"] == null ? null : json["taxRate"].toDouble(),
    name: json["name"] == null ? null : json["name"],
    actions: json["actions"] == null ? null : List<Action>.from(json["actions"].map((x) => Action.fromMap(x))),
    party: json["party"] == null ? null : Campaign.fromMap(json["party"]),
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    probabilityPercent: json["probabilityPercent"] == null ? null : json["probabilityPercent"],
    attachments: json["attachments"] == null ? null : List<Attachment>.from(json["attachments"].map((x) => Attachment.fromMap(x))),
    contracts: json["contracts"] == null ? null : List<Contract>.from(json["contracts"].map((x) => Contract.fromMap(x))),
    sentByTaxi: json["sentByTaxi"] == null ? null : json["sentByTaxi"],
    products: json["products"] == null ? null : List<OpportunityProduct>.from(json["products"].map((x) => OpportunityProduct.fromMap(x))),
    salesMethod: json["salesMethod"] == null ? null : SalesMethod.fromMap(json["salesMethod"]),
    currency: json["currency"] == null ? null : Currency.fromMap(json["currency"]),
    deadline: json["deadline"] == null ? null : DateTime.parse(json["deadline"]),
    amount: json["amount"] == null ? null : json["amount"],
    actualAmount: json["actualAmount"] == null ? null : json["actualAmount"].toDouble(),
    stage: json["stage"] == null ? null : Stage.fromMap(json["stage"]),
    amountWithTax: json["amountWithTax"] == null ? null : json["amountWithTax"].toDouble(),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    project: json["project"] == null ? null : Project.fromMap(json["project"]),
    campaign: json["campaign"] == null ? null : Campaign.fromMap(json["campaign"]),
    description: json["description"] == null ? null : json["description"],
    discountPercent: json["discountPercent"] == null ? null : json["discountPercent"],
    souvenir2: json["souvenir2"] == null ? null : Souvenir1.fromMap(json["souvenir2"]),
    souvenir1: json["souvenir1"] == null ? null : Souvenir1.fromMap(json["souvenir1"]),
    souvenir3: json["souvenir3"] == null ? null : Souvenir1.fromMap(json["souvenir3"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "probabilityStagePercent": probabilityStagePercent == null ? null : probabilityStagePercent,
    "notes": notes == null ? null : List<dynamic>.from(notes.map((x) => x)),
    "number": number == null ? null : number,
    "author": author == null ? null : author.toMap(),
    "tax": tax == null ? null : tax.toMap(),
    "taxRate": taxRate == null ? null : taxRate,
    "name": name == null ? null : name,
    "actions": actions == null ? null : List<dynamic>.from(actions.map((x) => x.toMap())),
    "party": party == null ? null : party.toMap(),
    "startDate": startDate == null ? null : startDate.toIso8601String(),
    "probabilityPercent": probabilityPercent == null ? null : probabilityPercent,
    "attachments": attachments == null ? null : List<dynamic>.from(attachments.map((x) => x.toMap())),
    "contracts": contracts == null ? null : List<dynamic>.from(contracts.map((x) => x.toMap())),
    "sentByTaxi": sentByTaxi == null ? null : sentByTaxi,
    "products": products == null ? null : List<dynamic>.from(products.map((x) => x.toMap())),
    "salesMethod": salesMethod == null ? null : salesMethod.toMap(),
    "currency": currency == null ? null : currency.toMap(),
    "deadline": deadline == null ? null : deadline.toIso8601String(),
    "amount": amount == null ? null : amount,
    "actualAmount": actualAmount == null ? null : actualAmount,
    "stage": stage == null ? null : stage.toMap(),
    "amountWithTax": amountWithTax == null ? null : amountWithTax,
    "endDate": endDate == null ? null : endDate.toIso8601String(),
    "project": project == null ? null : project.toMap(),
    "campaign": campaign == null ? null : campaign.toMap(),
    "description": description == null ? null : description,
    "discountPercent": discountPercent == null ? null : discountPercent,
    "souvenir2": souvenir2 == null ? null : souvenir2.toMap(),
    "souvenir1": souvenir1 == null ? null : souvenir1.toMap(),
    "souvenir3": souvenir3 == null ? null : souvenir3.toMap(),
  };
}

class Action {
  Action({
    this.entityName,
    this.instanceName,
    this.id,
    this.notes,
    this.endDate,
    this.description,
    this.notificationMoment,
    this.program,
    this.type,
    this.plannedEndDate,
    this.duration,
    this.responsible,
    this.createTs,
    this.timeEntry,
    this.typeAndSubType,
    this.creator,
    this.updatedBy,
    this.nature,
    this.opportunity,
    this.team,
    this.priority,
    this.noticePeriod,
    this.plannedStartDate,
    this.createdBy,
    this.name,
    this.subType,
    this.assignmentDate,
    this.updateTs,
    this.party,
  });

  String entityName;
  String instanceName;
  String id;
  List<dynamic> notes;
  DateTime endDate;
  String description;
  DateTime notificationMoment;
  Campaign program;
  Priority type;
  DateTime plannedEndDate;
  Duration duration;
  Author responsible;
  DateTime createTs;
  List<dynamic> timeEntry;
  String typeAndSubType;
  Author creator;
  CreatedByEnum updatedBy;
  String nature;
  Campaign opportunity;
  List<dynamic> team;
  Priority priority;
  Currency noticePeriod;
  DateTime plannedStartDate;
  CreatedByEnum createdBy;
  String name;
  Priority subType;
  DateTime assignmentDate;
  DateTime updateTs;
  Project party;

  factory Action.fromJson(String str) => Action.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Action.fromMap(Map<String, dynamic> json) => Action(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    notes: json["notes"] == null ? null : List<dynamic>.from(json["notes"].map((x) => x)),
    endDate: json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
    description: json["description"] == null ? null : json["description"],
    notificationMoment: json["notificationMoment"] == null ? null : DateTime.parse(json["notificationMoment"]),
    program: json["program"] == null ? null : Campaign.fromMap(json["program"]),
    type: json["type"] == null ? null : Priority.fromMap(json["type"]),
    plannedEndDate: json["plannedEndDate"] == null ? null : DateTime.parse(json["plannedEndDate"]),
    duration: json["duration"] == null ? null : Duration.fromMap(json["duration"]),
    responsible: json["responsible"] == null ? null : Author.fromMap(json["responsible"]),
    createTs: json["createTs"] == null ? null : DateTime.parse(json["createTs"]),
    timeEntry: json["timeEntry"] == null ? null : List<dynamic>.from(json["timeEntry"].map((x) => x)),
    typeAndSubType: json["typeAndSubType"] == null ? null : json["typeAndSubType"],
    creator: json["creator"] == null ? null : Author.fromMap(json["creator"]),
    updatedBy: json["updatedBy"] == null ? null : createdByEnumValues.map[json["updatedBy"]],
    nature: json["nature"] == null ? null : json["nature"],
    opportunity: json["opportunity"] == null ? null : Campaign.fromMap(json["opportunity"]),
    team: json["team"] == null ? null : List<dynamic>.from(json["team"].map((x) => x)),
    priority: json["priority"] == null ? null : Priority.fromMap(json["priority"]),
    noticePeriod: json["noticePeriod"] == null ? null : Currency.fromMap(json["noticePeriod"]),
    plannedStartDate: json["plannedStartDate"] == null ? null : DateTime.parse(json["plannedStartDate"]),
    createdBy: json["createdBy"] == null ? null : createdByEnumValues.map[json["createdBy"]],
    name: json["name"] == null ? null : json["name"],
    subType: json["subType"] == null ? null : Priority.fromMap(json["subType"]),
    assignmentDate: json["assignmentDate"] == null ? null : DateTime.parse(json["assignmentDate"]),
    updateTs: json["updateTs"] == null ? null : DateTime.parse(json["updateTs"]),
    party: json["party"] == null ? null : Project.fromMap(json["party"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "notes": notes == null ? null : List<dynamic>.from(notes.map((x) => x)),
    "endDate": endDate == null ? null : endDate.toIso8601String(),
    "description": description == null ? null : description,
    "notificationMoment": notificationMoment == null ? null : notificationMoment.toIso8601String(),
    "program": program == null ? null : program.toMap(),
    "type": type == null ? null : type.toMap(),
    "plannedEndDate": plannedEndDate == null ? null : plannedEndDate.toIso8601String(),
    "duration": duration == null ? null : duration.toMap(),
    "responsible": responsible == null ? null : responsible.toMap(),
    "createTs": createTs == null ? null : createTs.toIso8601String(),
    "timeEntry": timeEntry == null ? null : List<dynamic>.from(timeEntry.map((x) => x)),
    "typeAndSubType": typeAndSubType == null ? null : typeAndSubType,
    "creator": creator == null ? null : creator.toMap(),
    "updatedBy": updatedBy == null ? null : createdByEnumValues.reverse[updatedBy],
    "nature": nature == null ? null : nature,
    "opportunity": opportunity == null ? null : opportunity.toMap(),
    "team": team == null ? null : List<dynamic>.from(team.map((x) => x)),
    "priority": priority == null ? null : priority.toMap(),
    "noticePeriod": noticePeriod == null ? null : noticePeriod.toMap(),
    "plannedStartDate": plannedStartDate == null ? null : plannedStartDate.toIso8601String(),
    "createdBy": createdBy == null ? null : createdByEnumValues.reverse[createdBy],
    "name": name == null ? null : name,
    "subType": subType == null ? null : subType.toMap(),
    "assignmentDate": assignmentDate == null ? null : assignmentDate.toIso8601String(),
    "updateTs": updateTs == null ? null : updateTs.toIso8601String(),
    "party": party == null ? null : party.toMap(),
  };
}

enum CreatedByEnum { ADMIN, MOBILE_TEST }

final createdByEnumValues = EnumValues({
  "admin": CreatedByEnum.ADMIN,
  "mobile_test": CreatedByEnum.MOBILE_TEST
});

class Author {
  Author({
    this.entityName,
    this.instanceName,
    this.id,
    this.lastName,
    this.login,
    this.fullName,
    this.firstName,
    this.middleName,
    this.shortName,
    this.image,
    this.email,
  });

  OpportunityEntityName entityName;
  CreatorInstanceName instanceName;
  String id;
  LastName lastName;
  CreatedByEnum login;
  CreatorFullName fullName;
  StName firstName;
  MiddleName middleName;
  CreatorInstanceName shortName;
  Image image;
  Email email;

  factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Author.fromMap(Map<String, dynamic> json) => Author(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : creatorInstanceNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    lastName: json["lastName"] == null ? null : lastNameValues.map[json["lastName"]],
    login: json["login"] == null ? null : createdByEnumValues.map[json["login"]],
    fullName: json["fullName"] == null ? null : creatorFullNameValues.map[json["fullName"]],
    firstName: json["firstName"] == null ? null : stNameValues.map[json["firstName"]],
    middleName: json["middleName"] == null ? null : middleNameValues.map[json["middleName"]],
    shortName: json["shortName"] == null ? null : creatorInstanceNameValues.map[json["shortName"]],
    image: json["image"] == null ? null : Image.fromMap(json["image"]),
    email: json["email"] == null ? null : emailValues.map[json["email"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : creatorInstanceNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "lastName": lastName == null ? null : lastNameValues.reverse[lastName],
    "login": login == null ? null : createdByEnumValues.reverse[login],
    "fullName": fullName == null ? null : creatorFullNameValues.reverse[fullName],
    "firstName": firstName == null ? null : stNameValues.reverse[firstName],
    "middleName": middleName == null ? null : middleNameValues.reverse[middleName],
    "shortName": shortName == null ? null : creatorInstanceNameValues.reverse[shortName],
    "image": image == null ? null : image.toMap(),
    "email": email == null ? null : emailValues.reverse[email],
  };
}

enum Email { TRUEVASERMAN_OFF_COM, TRUE_VASERMAN_OFF_KZ }

final emailValues = EnumValues({
  "truevaserman@off.com": Email.TRUEVASERMAN_OFF_COM,
  "trueVaserman@off.kz": Email.TRUE_VASERMAN_OFF_KZ
});

enum OpportunityEntityName { BASE_USER_EXT, CRM_OPPORTUNITY, CRM_MARKETING_PROGRAM, CRM_MARKETING_CAMPAIGN, CRM_PARTY, CRM_PROJECT }

final opportunityEntityNameValues = EnumValues({
  "base\u0024UserExt": OpportunityEntityName.BASE_USER_EXT,
  "crm\u0024MarketingCampaign": OpportunityEntityName.CRM_MARKETING_CAMPAIGN,
  "crm\u0024MarketingProgram": OpportunityEntityName.CRM_MARKETING_PROGRAM,
  "crm\u0024Opportunity": OpportunityEntityName.CRM_OPPORTUNITY,
  "crm\u0024Party": OpportunityEntityName.CRM_PARTY,
  "crm_Project": OpportunityEntityName.CRM_PROJECT
});

enum StName { EMPTY, TESTER }

final stNameValues = EnumValues({
  "Петров": StName.EMPTY,
  "Tester": StName.TESTER
});

enum CreatorFullName { EMPTY, TESTER }

final creatorFullNameValues = EnumValues({
  "Васерман Петров Анатолий": CreatorFullName.EMPTY,
  "Тестов Tester Тестович": CreatorFullName.TESTER
});

class Image {
  Image({
    this.entityName,
    this.instanceName,
    this.id,
    this.extension,
    this.size,
    this.name,
    this.createDate,
  });

  ImageEntityName entityName;
  ImageInstanceName instanceName;
  String id;
  Extension extension;
  int size;
  ImageInstanceName name;
  DateTime createDate;

  factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Image.fromMap(Map<String, dynamic> json) => Image(
    entityName: json["_entityName"] == null ? null : imageEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : imageInstanceNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    extension: json["extension"] == null ? null : extensionValues.map[json["extension"]],
    size: json["size"] == null ? null : json["size"],
    name: json["name"] == null ? null : imageInstanceNameValues.map[json["name"]],
    createDate: json["createDate"] == null ? null : DateTime.parse(json["createDate"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : imageEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : imageInstanceNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "extension": extension == null ? null : extensionValues.reverse[extension],
    "size": size == null ? null : size,
    "name": name == null ? null : imageInstanceNameValues.reverse[name],
    "createDate": createDate == null ? null : createDate.toIso8601String(),
  };
}

enum ImageEntityName { CRM_FILE_DESCRIPTOR }

final imageEntityNameValues = EnumValues({
  "crm_FileDescriptor": ImageEntityName.CRM_FILE_DESCRIPTOR
});

enum Extension { PNG, PDF, XLSX, JPEG, JPG }

final extensionValues = EnumValues({
  "jpeg": Extension.JPEG,
  "jpg": Extension.JPG,
  "pdf": Extension.PDF,
  "png": Extension.PNG,
  "xlsx": Extension.XLSX
});

enum ImageInstanceName { LIST_PNG, BLANK_PDF, XLSX, JPEG, PDF, DOWNLOAD_JPG }

final imageInstanceNameValues = EnumValues({
  "blank.pdf": ImageInstanceName.BLANK_PDF,
  "download.jpg": ImageInstanceName.DOWNLOAD_JPG,
  "литра.jpeg": ImageInstanceName.JPEG,
  "Предложения_list.png": ImageInstanceName.LIST_PNG,
  "Задание-конвертирован.pdf": ImageInstanceName.PDF,
  "Бригадир  ВУП.xlsx": ImageInstanceName.XLSX
});

enum CreatorInstanceName { EMPTY, TESTER }

final creatorInstanceNameValues = EnumValues({
  "Петров Васерман": CreatorInstanceName.EMPTY,
  "Tester Тестов": CreatorInstanceName.TESTER
});

enum LastName { EMPTY, LAST_NAME }

final lastNameValues = EnumValues({
  "Васерман": LastName.EMPTY,
  "Тестов": LastName.LAST_NAME
});

enum MiddleName { EMPTY, MIDDLE_NAME }

final middleNameValues = EnumValues({
  "Анатолий": MiddleName.EMPTY,
  "Тестович": MiddleName.MIDDLE_NAME
});

class Duration {
  Duration({
    this.entityName,
    this.instanceName,
    this.id,
    this.code,
    this.description3,
    this.description1,
    this.hour,
    this.languageValue,
    this.day,
    this.order,
    this.isSystemRecord,
    this.langValue3,
    this.active,
    this.minute,
    this.isDefault,
    this.langValue1,
    this.description2,
    this.langValue2,
    this.rate,
    this.isBasic,
  });

  DurationEntityName entityName;
  String instanceName;
  String id;
  String code;
  Description2 description3;
  InstanceNameEnum description1;
  int hour;
  String languageValue;
  int day;
  int order;
  bool isSystemRecord;
  Description2 langValue3;
  bool active;
  int minute;
  bool isDefault;
  String langValue1;
  Description2 description2;
  Description2 langValue2;
  int rate;
  bool isBasic;

  factory Duration.fromJson(String str) => Duration.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Duration.fromMap(Map<String, dynamic> json) => Duration(
    entityName: json["_entityName"] == null ? null : durationEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    description3: json["description3"] == null ? null : description2Values.map[json["description3"]],
    description1: json["description1"] == null ? null : instanceNameEnumValues.map[json["description1"]],
    hour: json["hour"] == null ? null : json["hour"],
    languageValue: json["languageValue"] == null ? null : json["languageValue"],
    day: json["day"] == null ? null : json["day"],
    order: json["order"] == null ? null : json["order"],
    isSystemRecord: json["isSystemRecord"] == null ? null : json["isSystemRecord"],
    langValue3: json["langValue3"] == null ? null : description2Values.map[json["langValue3"]],
    active: json["active"] == null ? null : json["active"],
    minute: json["minute"] == null ? null : json["minute"],
    isDefault: json["isDefault"] == null ? null : json["isDefault"],
    langValue1: json["langValue1"] == null ? null : json["langValue1"],
    description2: json["description2"] == null ? null : description2Values.map[json["description2"]],
    langValue2: json["langValue2"] == null ? null : description2Values.map[json["langValue2"]],
    rate: json["rate"] == null ? null : json["rate"],
    isBasic: json["isBasic"] == null ? null : json["isBasic"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : durationEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "description3": description3 == null ? null : description2Values.reverse[description3],
    "description1": description1 == null ? null : instanceNameEnumValues.reverse[description1],
    "hour": hour == null ? null : hour,
    "languageValue": languageValue == null ? null : languageValue,
    "day": day == null ? null : day,
    "order": order == null ? null : order,
    "isSystemRecord": isSystemRecord == null ? null : isSystemRecord,
    "langValue3": langValue3 == null ? null : description2Values.reverse[langValue3],
    "active": active == null ? null : active,
    "minute": minute == null ? null : minute,
    "isDefault": isDefault == null ? null : isDefault,
    "langValue1": langValue1 == null ? null : langValue1,
    "description2": description2 == null ? null : description2Values.reverse[description2],
    "langValue2": langValue2 == null ? null : description2Values.reverse[langValue2],
    "rate": rate == null ? null : rate,
    "isBasic": isBasic == null ? null : isBasic,
  };
}

enum InstanceNameEnum { EMPTY, THE_15, DESCRIPTION1, ALTEL, PURPLE, FLUFFY, TENTACLED, STICKY }

final instanceNameEnumValues = EnumValues({
  "Altel": InstanceNameEnum.ALTEL,
  "Тенге": InstanceNameEnum.DESCRIPTION1,
  "Полтора часа": InstanceNameEnum.EMPTY,
  "Договор между Компанией и Участником": InstanceNameEnum.FLUFFY,
  "Договор после акта": InstanceNameEnum.PURPLE,
  "Шт": InstanceNameEnum.STICKY,
  "Соглашение о перемене лиц": InstanceNameEnum.TENTACLED,
  "Час и 15 минут": InstanceNameEnum.THE_15
});

enum Description2 { AN_HOUR_AND_A_HALF, AN_HOUR_AND_15_MINUTES, TENGE, ALTEL, KZT, EMPTY, DESCRIPTION2, PURPLE }

final description2Values = EnumValues({
  "Altel": Description2.ALTEL,
  "An hour and 15 minutes": Description2.AN_HOUR_AND_15_MINUTES,
  "An hour and a half": Description2.AN_HOUR_AND_A_HALF,
  "ДмКУ": Description2.DESCRIPTION2,
  "ДПА": Description2.EMPTY,
  "KZT": Description2.KZT,
  "СПЛ": Description2.PURPLE,
  "Tenge": Description2.TENGE
});

enum DurationEntityName { CRM_DIC_DURATION, BASE_DIC_CURRENCY, CRM_DIC_PRODUCT_GROUP, CRM_DIC_CONTRACT_TYPE, BASE_DIC_UNIT_OF_MEASURE }

final durationEntityNameValues = EnumValues({
  "base\u0024DicCurrency": DurationEntityName.BASE_DIC_CURRENCY,
  "base\u0024DicUnitOfMeasure": DurationEntityName.BASE_DIC_UNIT_OF_MEASURE,
  "crm\u0024DicContractType": DurationEntityName.CRM_DIC_CONTRACT_TYPE,
  "crm_DicDuration": DurationEntityName.CRM_DIC_DURATION,
  "crm_DicProductGroup": DurationEntityName.CRM_DIC_PRODUCT_GROUP
});

class Currency {
  Currency({
    this.entityName,
    this.instanceName,
    this.id,
    this.languageValue,
    this.langValue3,
    this.periodAsTime,
    this.langValue2,
    this.langValue1,
    this.code,
  });

  TaxEntityName entityName;
  String instanceName;
  String id;
  String languageValue;
  String langValue3;
  String periodAsTime;
  String langValue2;
  String langValue1;
  String code;

  factory Currency.fromJson(String str) => Currency.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Currency.fromMap(Map<String, dynamic> json) => Currency(
    entityName: json["_entityName"] == null ? null : taxEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    languageValue: json["languageValue"] == null ? null : json["languageValue"],
    langValue3: json["langValue3"] == null ? null : json["langValue3"],
    periodAsTime: json["periodAsTime"] == null ? null : json["periodAsTime"],
    langValue2: json["langValue2"] == null ? null : json["langValue2"],
    langValue1: json["langValue1"] == null ? null : json["langValue1"],
    code: json["code"] == null ? null : json["code"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : taxEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "languageValue": languageValue == null ? null : languageValue,
    "langValue3": langValue3 == null ? null : langValue3,
    "periodAsTime": periodAsTime == null ? null : periodAsTime,
    "langValue2": langValue2 == null ? null : langValue2,
    "langValue1": langValue1 == null ? null : langValue1,
    "code": code == null ? null : code,
  };
}

enum TaxEntityName { CRM_DIC_NOTICE_PERIOD, BASE_DIC_COUNTRY, BASE_DIC_REGION, BASE_DIC_CURRENCY, BASE_DIC_CLIENT_STATUS, BASE_DIC_INDUSTRY, BASE_DIC_ORG_LEGAL_FORM_TYPE, BASE_DIC_EDUCATION_TYPE, BASE_DIC_MARITAL_STATUS, BASE_DIC_NATIONALITY, BASE_DIC_SEX, BASE_DIC_CONTACT_INFO_TYPE, CRM_DIC_PARTY_SEGMENT, CRM_DIC_PRODUCT_GROUP, CRM_DIC_TAX }

final taxEntityNameValues = EnumValues({
  "base\u0024DicClientStatus": TaxEntityName.BASE_DIC_CLIENT_STATUS,
  "base\u0024DicContactInfoType": TaxEntityName.BASE_DIC_CONTACT_INFO_TYPE,
  "base\u0024DicCountry": TaxEntityName.BASE_DIC_COUNTRY,
  "base\u0024DicCurrency": TaxEntityName.BASE_DIC_CURRENCY,
  "base\u0024DicEducationType": TaxEntityName.BASE_DIC_EDUCATION_TYPE,
  "base\u0024DicIndustry": TaxEntityName.BASE_DIC_INDUSTRY,
  "base\u0024DicMaritalStatus": TaxEntityName.BASE_DIC_MARITAL_STATUS,
  "base\u0024DicNationality": TaxEntityName.BASE_DIC_NATIONALITY,
  "base\u0024DicOrgLegalFormType": TaxEntityName.BASE_DIC_ORG_LEGAL_FORM_TYPE,
  "base\u0024DicRegion": TaxEntityName.BASE_DIC_REGION,
  "base\u0024DicSex": TaxEntityName.BASE_DIC_SEX,
  "crm\u0024DicNoticePeriod": TaxEntityName.CRM_DIC_NOTICE_PERIOD,
  "crm\u0024DicPartySegment": TaxEntityName.CRM_DIC_PARTY_SEGMENT,
  "crm_DicProductGroup": TaxEntityName.CRM_DIC_PRODUCT_GROUP,
  "crm_DicTax": TaxEntityName.CRM_DIC_TAX
});

class Campaign {
  Campaign({
    this.entityName,
    this.instanceName,
    this.id,
    this.name,
    this.shortName,
  });

  OpportunityEntityName entityName;
  String instanceName;
  String id;
  String name;
  CreatorInstanceName shortName;

  factory Campaign.fromJson(String str) => Campaign.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Campaign.fromMap(Map<String, dynamic> json) => Campaign(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    shortName: json["shortName"] == null ? null : creatorInstanceNameValues.map[json["shortName"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "shortName": shortName == null ? null : creatorInstanceNameValues.reverse[shortName],
  };
}

class Project {
  Project({
    this.entityName,
    this.instanceName,
    this.id,
    this.partyType,
    this.name,
  });

  OpportunityEntityName entityName;
  String instanceName;
  String id;
  PartyType partyType;
  String name;

  factory Project.fromJson(String str) => Project.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Project.fromMap(Map<String, dynamic> json) => Project(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    partyType: json["partyType"] == null ? null : partyTypeValues.map[json["partyType"]],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "partyType": partyType == null ? null : partyTypeValues.reverse[partyType],
    "name": name == null ? null : name,
  };
}

enum PartyType { COMPANY, CONTACT }

final partyTypeValues = EnumValues({
  "COMPANY": PartyType.COMPANY,
  "CONTACT": PartyType.CONTACT
});

class Priority {
  Priority({
    this.entityName,
    this.instanceName,
    this.id,
    this.code,
    this.languageValue,
    this.order,
    this.isSystemRecord,
    this.langValue3,
    this.active,
    this.isDefault,
    this.langValue2,
    this.langValue1,
    this.description2,
    this.description3,
    this.description1,
    this.rate,
    this.isBasic,
  });

  PriorityEntityName entityName;
  String instanceName;
  String id;
  String code;
  String languageValue;
  int order;
  bool isSystemRecord;
  String langValue3;
  bool active;
  bool isDefault;
  String langValue2;
  String langValue1;
  Description2Enum description2;
  Description2Enum description3;
  PriorityDescription1 description1;
  int rate;
  bool isBasic;

  factory Priority.fromJson(String str) => Priority.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Priority.fromMap(Map<String, dynamic> json) => Priority(
    entityName: json["_entityName"] == null ? null : priorityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    languageValue: json["languageValue"] == null ? null : json["languageValue"],
    order: json["order"] == null ? null : json["order"],
    isSystemRecord: json["isSystemRecord"] == null ? null : json["isSystemRecord"],
    langValue3: json["langValue3"] == null ? null : json["langValue3"],
    active: json["active"] == null ? null : json["active"],
    isDefault: json["isDefault"] == null ? null : json["isDefault"],
    langValue2: json["langValue2"] == null ? null : json["langValue2"],
    langValue1: json["langValue1"] == null ? null : json["langValue1"],
    description2: json["description2"] == null ? null : description2EnumValues.map[json["description2"]],
    description3: json["description3"] == null ? null : description2EnumValues.map[json["description3"]],
    description1: json["description1"] == null ? null : priorityDescription1Values.map[json["description1"]],
    rate: json["rate"] == null ? null : json["rate"],
    isBasic: json["isBasic"] == null ? null : json["isBasic"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : priorityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "languageValue": languageValue == null ? null : languageValue,
    "order": order == null ? null : order,
    "isSystemRecord": isSystemRecord == null ? null : isSystemRecord,
    "langValue3": langValue3 == null ? null : langValue3,
    "active": active == null ? null : active,
    "isDefault": isDefault == null ? null : isDefault,
    "langValue2": langValue2 == null ? null : langValue2,
    "langValue1": langValue1 == null ? null : langValue1,
    "description2": description2 == null ? null : description2EnumValues.reverse[description2],
    "description3": description3 == null ? null : description2EnumValues.reverse[description3],
    "description1": description1 == null ? null : priorityDescription1Values.reverse[description1],
    "rate": rate == null ? null : rate,
    "isBasic": isBasic == null ? null : isBasic,
  };
}

enum PriorityDescription1 { EMPTY, DESCRIPTION1, PURPLE, FLUFFY }

final priorityDescription1Values = EnumValues({
  "Доллар": PriorityDescription1.DESCRIPTION1,
  "Тенге": PriorityDescription1.EMPTY,
  "Шт": PriorityDescription1.FLUFFY,
  "Рубль": PriorityDescription1.PURPLE
});

enum Description2Enum { TENGE, DOLLAR, ROUBLE }

final description2EnumValues = EnumValues({
  "Dollar": Description2Enum.DOLLAR,
  "Rouble": Description2Enum.ROUBLE,
  "Tenge": Description2Enum.TENGE
});

enum PriorityEntityName { CRM_DIC_PRIORITY, CRM_DIC_ACTION_SUB_TYPE, CRM_DIC_ACTION_TYPE, CRM_DIC_FILE_TYPE, BASE_DIC_CURRENCY, CRM_DIC_PAYMENT_TERMS, BASE_DIC_UNIT_OF_MEASURE }

final priorityEntityNameValues = EnumValues({
  "base\u0024DicCurrency": PriorityEntityName.BASE_DIC_CURRENCY,
  "base\u0024DicUnitOfMeasure": PriorityEntityName.BASE_DIC_UNIT_OF_MEASURE,
  "crm\u0024DicActionSubType": PriorityEntityName.CRM_DIC_ACTION_SUB_TYPE,
  "crm\u0024DicActionType": PriorityEntityName.CRM_DIC_ACTION_TYPE,
  "crm\u0024DicFileType": PriorityEntityName.CRM_DIC_FILE_TYPE,
  "crm\u0024DicPaymentTerms": PriorityEntityName.CRM_DIC_PAYMENT_TERMS,
  "crm\u0024DicPriority": PriorityEntityName.CRM_DIC_PRIORITY
});

class Attachment {
  Attachment({
    this.entityName,
    this.instanceName,
    this.id,
    this.file,
    this.opportunity,
    this.fileType,
  });

  String entityName;
  String instanceName;
  String id;
  Image file;
  Campaign opportunity;
  Priority fileType;

  factory Attachment.fromJson(String str) => Attachment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Attachment.fromMap(Map<String, dynamic> json) => Attachment(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    file: json["file"] == null ? null : Image.fromMap(json["file"]),
    opportunity: json["opportunity"] == null ? null : Campaign.fromMap(json["opportunity"]),
    fileType: json["fileType"] == null ? null : Priority.fromMap(json["fileType"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "file": file == null ? null : file.toMap(),
    "opportunity": opportunity == null ? null : opportunity.toMap(),
    "fileType": fileType == null ? null : fileType.toMap(),
  };
}

class Contract {
  Contract({
    this.entityName,
    this.instanceName,
    this.id,
    this.attachments,
    this.type,
    this.products,
    this.number,
    this.invoices,
    this.responsible,
    this.currency,
    this.paymentTerms,
    this.amount,
    this.startDate,
    this.party,
    this.deliveryMethod,
    this.serviceForm,
    this.operatorService,
    this.kind,
  });

  ContractEntityName entityName;
  String instanceName;
  String id;
  List<Attachment> attachments;
  Duration type;
  List<ContractProduct> products;
  String number;
  List<Invoice> invoices;
  Responsible responsible;
  Priority currency;
  Priority paymentTerms;
  int amount;
  DateTime startDate;
  ContractParty party;
  Souvenir1 deliveryMethod;
  Souvenir1 serviceForm;
  Souvenir1 operatorService;
  Souvenir1 kind;

  factory Contract.fromJson(String str) => Contract.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contract.fromMap(Map<String, dynamic> json) => Contract(
    entityName: json["_entityName"] == null ? null : contractEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    attachments: json["attachments"] == null ? null : List<Attachment>.from(json["attachments"].map((x) => Attachment.fromMap(x))),
    type: json["type"] == null ? null : Duration.fromMap(json["type"]),
    products: json["products"] == null ? null : List<ContractProduct>.from(json["products"].map((x) => ContractProduct.fromMap(x))),
    number: json["number"] == null ? null : json["number"],
    invoices: json["invoices"] == null ? null : List<Invoice>.from(json["invoices"].map((x) => Invoice.fromMap(x))),
    responsible: json["responsible"] == null ? null : Responsible.fromMap(json["responsible"]),
    currency: json["currency"] == null ? null : Priority.fromMap(json["currency"]),
    paymentTerms: json["paymentTerms"] == null ? null : Priority.fromMap(json["paymentTerms"]),
    amount: json["amount"] == null ? null : json["amount"],
    startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
    party: json["party"] == null ? null : ContractParty.fromMap(json["party"]),
    deliveryMethod: json["deliveryMethod"] == null ? null : Souvenir1.fromMap(json["deliveryMethod"]),
    serviceForm: json["serviceForm"] == null ? null : Souvenir1.fromMap(json["serviceForm"]),
    operatorService: json["operatorService"] == null ? null : Souvenir1.fromMap(json["operatorService"]),
    kind: json["kind"] == null ? null : Souvenir1.fromMap(json["kind"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : contractEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "attachments": attachments == null ? null : List<dynamic>.from(attachments.map((x) => x.toMap())),
    "type": type == null ? null : type.toMap(),
    "products": products == null ? null : List<dynamic>.from(products.map((x) => x.toMap())),
    "number": number == null ? null : number,
    "invoices": invoices == null ? null : List<dynamic>.from(invoices.map((x) => x.toMap())),
    "responsible": responsible == null ? null : responsible.toMap(),
    "currency": currency == null ? null : currency.toMap(),
    "paymentTerms": paymentTerms == null ? null : paymentTerms.toMap(),
    "amount": amount == null ? null : amount,
    "startDate": startDate == null ? null : "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
    "party": party == null ? null : party.toMap(),
    "deliveryMethod": deliveryMethod == null ? null : deliveryMethod.toMap(),
    "serviceForm": serviceForm == null ? null : serviceForm.toMap(),
    "operatorService": operatorService == null ? null : operatorService.toMap(),
    "kind": kind == null ? null : kind.toMap(),
  };
}

class Souvenir1 {
  Souvenir1({
    this.entityName,
    this.instanceName,
    this.id,
    this.isSystemRecord,
    this.active,
    this.isDefault,
    this.langValue1,
  });

  String entityName;
  String instanceName;
  String id;
  bool isSystemRecord;
  bool active;
  bool isDefault;
  String langValue1;

  factory Souvenir1.fromJson(String str) => Souvenir1.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Souvenir1.fromMap(Map<String, dynamic> json) => Souvenir1(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    isSystemRecord: json["isSystemRecord"] == null ? null : json["isSystemRecord"],
    active: json["active"] == null ? null : json["active"],
    isDefault: json["isDefault"] == null ? null : json["isDefault"],
    langValue1: json["langValue1"] == null ? null : json["langValue1"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "isSystemRecord": isSystemRecord == null ? null : isSystemRecord,
    "active": active == null ? null : active,
    "isDefault": isDefault == null ? null : isDefault,
    "langValue1": langValue1 == null ? null : langValue1,
  };
}

enum ContractEntityName { CRM_CONTRACT }

final contractEntityNameValues = EnumValues({
  "crm\u0024Contract": ContractEntityName.CRM_CONTRACT
});

class Invoice {
  Invoice({
    this.entityName,
    this.instanceName,
    this.id,
    this.amount,
    this.author,
    this.paymentPeriodInDays,
    this.type,
    this.number,
    this.billingDate,
    this.currency,
    this.party,
    this.paymentTerms,
    this.poena,
  });

  InvoiceEntityName entityName;
  String instanceName;
  String id;
  int amount;
  Responsible author;
  int paymentPeriodInDays;
  Souvenir1 type;
  String number;
  DateTime billingDate;
  Duration currency;
  InvoiceParty party;
  Priority paymentTerms;
  int poena;

  factory Invoice.fromJson(String str) => Invoice.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Invoice.fromMap(Map<String, dynamic> json) => Invoice(
    entityName: json["_entityName"] == null ? null : invoiceEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    amount: json["amount"] == null ? null : json["amount"],
    author: json["author"] == null ? null : Responsible.fromMap(json["author"]),
    paymentPeriodInDays: json["paymentPeriodInDays"] == null ? null : json["paymentPeriodInDays"],
    type: json["type"] == null ? null : Souvenir1.fromMap(json["type"]),
    number: json["number"] == null ? null : json["number"],
    billingDate: json["billingDate"] == null ? null : DateTime.parse(json["billingDate"]),
    currency: json["currency"] == null ? null : Duration.fromMap(json["currency"]),
    party: json["party"] == null ? null : InvoiceParty.fromMap(json["party"]),
    paymentTerms: json["paymentTerms"] == null ? null : Priority.fromMap(json["paymentTerms"]),
    poena: json["poena"] == null ? null : json["poena"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : invoiceEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "amount": amount == null ? null : amount,
    "author": author == null ? null : author.toMap(),
    "paymentPeriodInDays": paymentPeriodInDays == null ? null : paymentPeriodInDays,
    "type": type == null ? null : type.toMap(),
    "number": number == null ? null : number,
    "billingDate": billingDate == null ? null : "${billingDate.year.toString().padLeft(4, '0')}-${billingDate.month.toString().padLeft(2, '0')}-${billingDate.day.toString().padLeft(2, '0')}",
    "currency": currency == null ? null : currency.toMap(),
    "party": party == null ? null : party.toMap(),
    "paymentTerms": paymentTerms == null ? null : paymentTerms.toMap(),
    "poena": poena == null ? null : poena,
  };
}

class Responsible {
  Responsible({
    this.entityName,
    this.instanceName,
    this.id,
    this.lastName,
    this.loginLowerCase,
    this.language,
    this.availability,
    this.login,
    this.password,
    this.timeZoneAuto,
    this.email,
    this.active,
    this.fullName,
    this.firstName,
    this.passwordEncryption,
    this.name,
    this.middleName,
    this.position,
    this.shortName,
  });

  OpportunityEntityName entityName;
  PurpleName instanceName;
  String id;
  LastName lastName;
  LoginLowerCaseEnum loginLowerCase;
  Language language;
  bool availability;
  LoginLowerCaseEnum login;
  Password password;
  bool timeZoneAuto;
  Email email;
  bool active;
  PurpleFullName fullName;
  StName firstName;
  PasswordEncryption passwordEncryption;
  ResponsibleName name;
  MiddleName middleName;
  Position position;
  PurpleName shortName;

  factory Responsible.fromJson(String str) => Responsible.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Responsible.fromMap(Map<String, dynamic> json) => Responsible(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : purpleNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    lastName: json["lastName"] == null ? null : lastNameValues.map[json["lastName"]],
    loginLowerCase: json["loginLowerCase"] == null ? null : loginLowerCaseEnumValues.map[json["loginLowerCase"]],
    language: json["language"] == null ? null : languageValues.map[json["language"]],
    availability: json["availability"] == null ? null : json["availability"],
    login: json["login"] == null ? null : loginLowerCaseEnumValues.map[json["login"]],
    password: json["password"] == null ? null : passwordValues.map[json["password"]],
    timeZoneAuto: json["timeZoneAuto"] == null ? null : json["timeZoneAuto"],
    email: json["email"] == null ? null : emailValues.map[json["email"]],
    active: json["active"] == null ? null : json["active"],
    fullName: json["fullName"] == null ? null : purpleFullNameValues.map[json["fullName"]],
    firstName: json["firstName"] == null ? null : stNameValues.map[json["firstName"]],
    passwordEncryption: json["passwordEncryption"] == null ? null : passwordEncryptionValues.map[json["passwordEncryption"]],
    name: json["name"] == null ? null : responsibleNameValues.map[json["name"]],
    middleName: json["middleName"] == null ? null : middleNameValues.map[json["middleName"]],
    position: json["position"] == null ? null : positionValues.map[json["position"]],
    shortName: json["shortName"] == null ? null : purpleNameValues.map[json["shortName"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : purpleNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "lastName": lastName == null ? null : lastNameValues.reverse[lastName],
    "loginLowerCase": loginLowerCase == null ? null : loginLowerCaseEnumValues.reverse[loginLowerCase],
    "language": language == null ? null : languageValues.reverse[language],
    "availability": availability == null ? null : availability,
    "login": login == null ? null : loginLowerCaseEnumValues.reverse[login],
    "password": password == null ? null : passwordValues.reverse[password],
    "timeZoneAuto": timeZoneAuto == null ? null : timeZoneAuto,
    "email": email == null ? null : emailValues.reverse[email],
    "active": active == null ? null : active,
    "fullName": fullName == null ? null : purpleFullNameValues.reverse[fullName],
    "firstName": firstName == null ? null : stNameValues.reverse[firstName],
    "passwordEncryption": passwordEncryption == null ? null : passwordEncryptionValues.reverse[passwordEncryption],
    "name": name == null ? null : responsibleNameValues.reverse[name],
    "middleName": middleName == null ? null : middleNameValues.reverse[middleName],
    "position": position == null ? null : positionValues.reverse[position],
    "shortName": shortName == null ? null : purpleNameValues.reverse[shortName],
  };
}

enum PurpleFullName { EMPTY, ANONYMOUS }

final purpleFullNameValues = EnumValues({
  "anonymous": PurpleFullName.ANONYMOUS,
  "Васерман Петров Анатолий": PurpleFullName.EMPTY
});

enum PurpleName { EMPTY, ANONYMOUS }

final purpleNameValues = EnumValues({
  "anonymous": PurpleName.ANONYMOUS,
  "Петров Васерман": PurpleName.EMPTY
});

enum Language { RU }

final languageValues = EnumValues({
  "ru": Language.RU
});

enum LoginLowerCaseEnum { ADMIN, ANONYMOUS }

final loginLowerCaseEnumValues = EnumValues({
  "admin": LoginLowerCaseEnum.ADMIN,
  "anonymous": LoginLowerCaseEnum.ANONYMOUS
});

enum ResponsibleName { ADMINISTRATOR, ANONYMOUS }

final responsibleNameValues = EnumValues({
  "Administrator": ResponsibleName.ADMINISTRATOR,
  "Anonymous": ResponsibleName.ANONYMOUS
});

enum Password { THE_2_A_10_V_QX8_B8_B7_JZ_Z0_R_QMTU_K4_YDO_KP7_NKM_UC_FJ_PX6_DMT_VO_PTET_NHF_OSA_OU }

final passwordValues = EnumValues({
  "\u00242a\u002410\u0024vQx8b8B7jzZ0rQmtuK4YDOKp7nkmUCFjPx6DMT.voPtetNHFOsaOu": Password.THE_2_A_10_V_QX8_B8_B7_JZ_Z0_R_QMTU_K4_YDO_KP7_NKM_UC_FJ_PX6_DMT_VO_PTET_NHF_OSA_OU
});

enum PasswordEncryption { BCRYPT }

final passwordEncryptionValues = EnumValues({
  "bcrypt": PasswordEncryption.BCRYPT
});

enum Position { JOB }

final positionValues = EnumValues({
  "job": Position.JOB
});

enum InvoiceEntityName { CRM_INVOICE }

final invoiceEntityNameValues = EnumValues({
  "crm_Invoice": InvoiceEntityName.CRM_INVOICE
});

class InvoiceParty {
  InvoiceParty({
    this.entityName,
    this.instanceName,
    this.id,
    this.upperName,
    this.partyType,
    this.stateCompany,
    this.resident,
    this.active,
    this.name,
    this.nationalIdentifier,
    this.annualIncomeAmount,
  });

  OpportunityEntityName entityName;
  PartyName instanceName;
  String id;
  UpperName upperName;
  PartyType partyType;
  bool stateCompany;
  bool resident;
  bool active;
  PartyName name;
  String nationalIdentifier;
  int annualIncomeAmount;

  factory InvoiceParty.fromJson(String str) => InvoiceParty.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InvoiceParty.fromMap(Map<String, dynamic> json) => InvoiceParty(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : partyNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    upperName: json["upperName"] == null ? null : upperNameValues.map[json["upperName"]],
    partyType: json["partyType"] == null ? null : partyTypeValues.map[json["partyType"]],
    stateCompany: json["stateCompany"] == null ? null : json["stateCompany"],
    resident: json["resident"] == null ? null : json["resident"],
    active: json["active"] == null ? null : json["active"],
    name: json["name"] == null ? null : partyNameValues.map[json["name"]],
    nationalIdentifier: json["nationalIdentifier"] == null ? null : json["nationalIdentifier"],
    annualIncomeAmount: json["annualIncomeAmount"] == null ? null : json["annualIncomeAmount"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : partyNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "upperName": upperName == null ? null : upperNameValues.reverse[upperName],
    "partyType": partyType == null ? null : partyTypeValues.reverse[partyType],
    "stateCompany": stateCompany == null ? null : stateCompany,
    "resident": resident == null ? null : resident,
    "active": active == null ? null : active,
    "name": name == null ? null : partyNameValues.reverse[name],
    "nationalIdentifier": nationalIdentifier == null ? null : nationalIdentifier,
    "annualIncomeAmount": annualIncomeAmount == null ? null : annualIncomeAmount,
  };
}

enum PartyName { EMPTY, UCO, TESTOV, NAME }

final partyNameValues = EnumValues({
  "Вектор ТОО": PartyName.EMPTY,
  "Быкова Ирина": PartyName.NAME,
  "testov": PartyName.TESTOV,
  "UCO": PartyName.UCO
});

enum UpperName { EMPTY, UCO, TESTOV, UPPER_NAME }

final upperNameValues = EnumValues({
  "ВЕКТОР ТОО": UpperName.EMPTY,
  "TESTOV": UpperName.TESTOV,
  "UCO": UpperName.UCO,
  "БЫКОВА ИРИНА": UpperName.UPPER_NAME
});

class ContractParty {
  ContractParty({
    this.entityName,
    this.instanceName,
    this.id,
    this.residenceCountry,
    this.addresses,
    this.upperName,
    this.contactInfo,
    this.clientStatus,
    this.partyType,
    this.partySegment,
    this.responsible,
    this.company,
    this.resident,
    this.image,
    this.contactIdentityDocuments,
    this.active,
    this.name,
    this.nationalIdentifier,
    this.annualIncomeCurrency,
    this.responsiblePerson,
    this.campaign,
    this.annualIncomeAmount,
    this.contact,
  });

  OpportunityEntityName entityName;
  PartyName instanceName;
  String id;
  Currency residenceCountry;
  List<Address> addresses;
  UpperName upperName;
  List<ContactInfo> contactInfo;
  Currency clientStatus;
  PartyType partyType;
  Currency partySegment;
  Author responsible;
  Company company;
  bool resident;
  Image image;
  List<dynamic> contactIdentityDocuments;
  bool active;
  PartyName name;
  String nationalIdentifier;
  Currency annualIncomeCurrency;
  ResponsiblePerson responsiblePerson;
  Project campaign;
  int annualIncomeAmount;
  Contact contact;

  factory ContractParty.fromJson(String str) => ContractParty.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContractParty.fromMap(Map<String, dynamic> json) => ContractParty(
    entityName: json["_entityName"] == null ? null : opportunityEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : partyNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    residenceCountry: json["residenceCountry"] == null ? null : Currency.fromMap(json["residenceCountry"]),
    addresses: json["addresses"] == null ? null : List<Address>.from(json["addresses"].map((x) => Address.fromMap(x))),
    upperName: json["upperName"] == null ? null : upperNameValues.map[json["upperName"]],
    contactInfo: json["contactInfo"] == null ? null : List<ContactInfo>.from(json["contactInfo"].map((x) => ContactInfo.fromMap(x))),
    clientStatus: json["clientStatus"] == null ? null : Currency.fromMap(json["clientStatus"]),
    partyType: json["partyType"] == null ? null : partyTypeValues.map[json["partyType"]],
    partySegment: json["partySegment"] == null ? null : Currency.fromMap(json["partySegment"]),
    responsible: json["responsible"] == null ? null : Author.fromMap(json["responsible"]),
    company: json["company"] == null ? null : Company.fromMap(json["company"]),
    resident: json["resident"] == null ? null : json["resident"],
    image: json["image"] == null ? null : Image.fromMap(json["image"]),
    contactIdentityDocuments: json["contactIdentityDocuments"] == null ? null : List<dynamic>.from(json["contactIdentityDocuments"].map((x) => x)),
    active: json["active"] == null ? null : json["active"],
    name: json["name"] == null ? null : partyNameValues.map[json["name"]],
    nationalIdentifier: json["nationalIdentifier"] == null ? null : json["nationalIdentifier"],
    annualIncomeCurrency: json["annualIncomeCurrency"] == null ? null : Currency.fromMap(json["annualIncomeCurrency"]),
    responsiblePerson: json["responsiblePerson"] == null ? null : ResponsiblePerson.fromMap(json["responsiblePerson"]),
    campaign: json["campaign"] == null ? null : Project.fromMap(json["campaign"]),
    annualIncomeAmount: json["annualIncomeAmount"] == null ? null : json["annualIncomeAmount"],
    contact: json["contact"] == null ? null : Contact.fromMap(json["contact"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : opportunityEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : partyNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "residenceCountry": residenceCountry == null ? null : residenceCountry.toMap(),
    "addresses": addresses == null ? null : List<dynamic>.from(addresses.map((x) => x.toMap())),
    "upperName": upperName == null ? null : upperNameValues.reverse[upperName],
    "contactInfo": contactInfo == null ? null : List<dynamic>.from(contactInfo.map((x) => x.toMap())),
    "clientStatus": clientStatus == null ? null : clientStatus.toMap(),
    "partyType": partyType == null ? null : partyTypeValues.reverse[partyType],
    "partySegment": partySegment == null ? null : partySegment.toMap(),
    "responsible": responsible == null ? null : responsible.toMap(),
    "company": company == null ? null : company.toMap(),
    "resident": resident == null ? null : resident,
    "image": image == null ? null : image.toMap(),
    "contactIdentityDocuments": contactIdentityDocuments == null ? null : List<dynamic>.from(contactIdentityDocuments.map((x) => x)),
    "active": active == null ? null : active,
    "name": name == null ? null : partyNameValues.reverse[name],
    "nationalIdentifier": nationalIdentifier == null ? null : nationalIdentifier,
    "annualIncomeCurrency": annualIncomeCurrency == null ? null : annualIncomeCurrency.toMap(),
    "responsiblePerson": responsiblePerson == null ? null : responsiblePerson.toMap(),
    "campaign": campaign == null ? null : campaign.toMap(),
    "annualIncomeAmount": annualIncomeAmount == null ? null : annualIncomeAmount,
    "contact": contact == null ? null : contact.toMap(),
  };
}

class Address {
  Address({
    this.entityName,
    this.instanceName,
    this.id,
    this.country,
    this.streetAddressLang1,
    this.streetAddress,
    this.region,
    this.streetAddressLang5,
    this.streetAddressLang3,
    this.streetAddressLang4,
    this.additionalInformationLang1,
    this.house,
    this.additionalInformationLang2,
    this.streetAddressLang2,
    this.street,
    this.longitude,
    this.additionalInformationLang3,
    this.apartment,
  });

  AddressEntityName entityName;
  AdditionalInformationLang1Enum instanceName;
  String id;
  Currency country;
  StreetAddress streetAddressLang1;
  StreetAddress streetAddress;
  Currency region;
  String streetAddressLang5;
  String streetAddressLang3;
  String streetAddressLang4;
  AdditionalInformationLang1Enum additionalInformationLang1;
  String house;
  String additionalInformationLang2;
  String streetAddressLang2;
  String street;
  int longitude;
  String additionalInformationLang3;
  String apartment;

  factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Address.fromMap(Map<String, dynamic> json) => Address(
    entityName: json["_entityName"] == null ? null : addressEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : additionalInformationLang1EnumValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    country: json["country"] == null ? null : Currency.fromMap(json["country"]),
    streetAddressLang1: json["streetAddressLang1"] == null ? null : streetAddressValues.map[json["streetAddressLang1"]],
    streetAddress: json["streetAddress"] == null ? null : streetAddressValues.map[json["streetAddress"]],
    region: json["region"] == null ? null : Currency.fromMap(json["region"]),
    streetAddressLang5: json["streetAddressLang5"] == null ? null : json["streetAddressLang5"],
    streetAddressLang3: json["streetAddressLang3"] == null ? null : json["streetAddressLang3"],
    streetAddressLang4: json["streetAddressLang4"] == null ? null : json["streetAddressLang4"],
    additionalInformationLang1: json["additionalInformationLang1"] == null ? null : additionalInformationLang1EnumValues.map[json["additionalInformationLang1"]],
    house: json["house"] == null ? null : json["house"],
    additionalInformationLang2: json["additionalInformationLang2"] == null ? null : json["additionalInformationLang2"],
    streetAddressLang2: json["streetAddressLang2"] == null ? null : json["streetAddressLang2"],
    street: json["street"] == null ? null : json["street"],
    longitude: json["longitude"] == null ? null : json["longitude"],
    additionalInformationLang3: json["additionalInformationLang3"] == null ? null : json["additionalInformationLang3"],
    apartment: json["apartment"] == null ? null : json["apartment"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : addressEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : additionalInformationLang1EnumValues.reverse[instanceName],
    "id": id == null ? null : id,
    "country": country == null ? null : country.toMap(),
    "streetAddressLang1": streetAddressLang1 == null ? null : streetAddressValues.reverse[streetAddressLang1],
    "streetAddress": streetAddress == null ? null : streetAddressValues.reverse[streetAddress],
    "region": region == null ? null : region.toMap(),
    "streetAddressLang5": streetAddressLang5 == null ? null : streetAddressLang5,
    "streetAddressLang3": streetAddressLang3 == null ? null : streetAddressLang3,
    "streetAddressLang4": streetAddressLang4 == null ? null : streetAddressLang4,
    "additionalInformationLang1": additionalInformationLang1 == null ? null : additionalInformationLang1EnumValues.reverse[additionalInformationLang1],
    "house": house == null ? null : house,
    "additionalInformationLang2": additionalInformationLang2 == null ? null : additionalInformationLang2,
    "streetAddressLang2": streetAddressLang2 == null ? null : streetAddressLang2,
    "street": street == null ? null : street,
    "longitude": longitude == null ? null : longitude,
    "additionalInformationLang3": additionalInformationLang3 == null ? null : additionalInformationLang3,
    "apartment": apartment == null ? null : apartment,
  };
}

enum AdditionalInformationLang1Enum { EMPTY, ASDF }

final additionalInformationLang1EnumValues = EnumValues({
  "asdf": AdditionalInformationLang1Enum.ASDF,
  "Казахстан, Акмолинская, длорпав": AdditionalInformationLang1Enum.EMPTY
});

enum AddressEntityName { BASE_ADDRESS }

final addressEntityNameValues = EnumValues({
  "base\u0024Address": AddressEntityName.BASE_ADDRESS
});

enum StreetAddress { EMPTY, ASDF }

final streetAddressValues = EnumValues({
  "asdf": StreetAddress.ASDF,
  "длорпав": StreetAddress.EMPTY
});

class Company {
  Company({
    this.entityName,
    this.instanceName,
    this.id,
    this.companyUpperName,
    this.companyName,
    this.legalForm,
    this.legalFullName,
    this.party,
    this.companyDate,
    this.brandName,
    this.webAddress,
    this.memberCount,
    this.industry,
  });

  CompanyEntityName entityName;
  CompanyNameEnum instanceName;
  String id;
  CompanyUpperName companyUpperName;
  CompanyNameEnum companyName;
  Currency legalForm;
  LegalFullName legalFullName;
  Project party;
  DateTime companyDate;
  BrandName brandName;
  WebAddress webAddress;
  int memberCount;
  Currency industry;

  factory Company.fromJson(String str) => Company.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Company.fromMap(Map<String, dynamic> json) => Company(
    entityName: json["_entityName"] == null ? null : companyEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : companyNameEnumValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    companyUpperName: json["companyUpperName"] == null ? null : companyUpperNameValues.map[json["companyUpperName"]],
    companyName: json["companyName"] == null ? null : companyNameEnumValues.map[json["companyName"]],
    legalForm: json["legalForm"] == null ? null : Currency.fromMap(json["legalForm"]),
    legalFullName: json["legalFullName"] == null ? null : legalFullNameValues.map[json["legalFullName"]],
    party: json["party"] == null ? null : Project.fromMap(json["party"]),
    companyDate: json["companyDate"] == null ? null : DateTime.parse(json["companyDate"]),
    brandName: json["brandName"] == null ? null : brandNameValues.map[json["brandName"]],
    webAddress: json["webAddress"] == null ? null : webAddressValues.map[json["webAddress"]],
    memberCount: json["memberCount"] == null ? null : json["memberCount"],
    industry: json["industry"] == null ? null : Currency.fromMap(json["industry"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : companyEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : companyNameEnumValues.reverse[instanceName],
    "id": id == null ? null : id,
    "companyUpperName": companyUpperName == null ? null : companyUpperNameValues.reverse[companyUpperName],
    "companyName": companyName == null ? null : companyNameEnumValues.reverse[companyName],
    "legalForm": legalForm == null ? null : legalForm.toMap(),
    "legalFullName": legalFullName == null ? null : legalFullNameValues.reverse[legalFullName],
    "party": party == null ? null : party.toMap(),
    "companyDate": companyDate == null ? null : "${companyDate.year.toString().padLeft(4, '0')}-${companyDate.month.toString().padLeft(2, '0')}-${companyDate.day.toString().padLeft(2, '0')}",
    "brandName": brandName == null ? null : brandNameValues.reverse[brandName],
    "webAddress": webAddress == null ? null : webAddressValues.reverse[webAddress],
    "memberCount": memberCount == null ? null : memberCount,
    "industry": industry == null ? null : industry.toMap(),
  };
}

enum BrandName { UNITED_CONSULTANT }

final brandNameValues = EnumValues({
  "United Consultant": BrandName.UNITED_CONSULTANT
});

enum CompanyNameEnum { EMPTY, UCO }

final companyNameEnumValues = EnumValues({
  "Вектор": CompanyNameEnum.EMPTY,
  "ТОО UCO": CompanyNameEnum.UCO
});

enum CompanyUpperName { EMPTY, UCO }

final companyUpperNameValues = EnumValues({
  "ВЕКТОР": CompanyUpperName.EMPTY,
  "ТОО UCO": CompanyUpperName.UCO
});

enum CompanyEntityName { CRM_COMPANY }

final companyEntityNameValues = EnumValues({
  "crm\u0024Company": CompanyEntityName.CRM_COMPANY
});

enum LegalFullName { EMPTY, UCO }

final legalFullNameValues = EnumValues({
  "Вектор ТОО": LegalFullName.EMPTY,
  "ТОО UCO ТОО": LegalFullName.UCO
});

enum WebAddress { UCO_KZ }

final webAddressValues = EnumValues({
  "uco.kz": WebAddress.UCO_KZ
});

class Contact {
  Contact({
    this.entityName,
    this.instanceName,
    this.id,
    this.lastName,
    this.educationType,
    this.experience,
    this.birthPlace,
    this.responsible,
    this.upperMiddleName,
    this.nickName,
    this.sex,
    this.dateOfBirth,
    this.childCount,
    this.upperFirstName,
    this.firstName,
    this.nationality,
    this.upperLastName,
    this.middleName,
    this.party,
    this.maritalStatus,
  });

  String entityName;
  String instanceName;
  String id;
  String lastName;
  Currency educationType;
  int experience;
  String birthPlace;
  Campaign responsible;
  String upperMiddleName;
  String nickName;
  Currency sex;
  DateTime dateOfBirth;
  int childCount;
  String upperFirstName;
  String firstName;
  Currency nationality;
  String upperLastName;
  String middleName;
  Campaign party;
  Currency maritalStatus;

  factory Contact.fromJson(String str) => Contact.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contact.fromMap(Map<String, dynamic> json) => Contact(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    educationType: json["educationType"] == null ? null : Currency.fromMap(json["educationType"]),
    experience: json["experience"] == null ? null : json["experience"],
    birthPlace: json["birthPlace"] == null ? null : json["birthPlace"],
    responsible: json["responsible"] == null ? null : Campaign.fromMap(json["responsible"]),
    upperMiddleName: json["upperMiddleName"] == null ? null : json["upperMiddleName"],
    nickName: json["nickName"] == null ? null : json["nickName"],
    sex: json["sex"] == null ? null : Currency.fromMap(json["sex"]),
    dateOfBirth: json["dateOfBirth"] == null ? null : DateTime.parse(json["dateOfBirth"]),
    childCount: json["childCount"] == null ? null : json["childCount"],
    upperFirstName: json["upperFirstName"] == null ? null : json["upperFirstName"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    nationality: json["nationality"] == null ? null : Currency.fromMap(json["nationality"]),
    upperLastName: json["upperLastName"] == null ? null : json["upperLastName"],
    middleName: json["middleName"] == null ? null : json["middleName"],
    party: json["party"] == null ? null : Campaign.fromMap(json["party"]),
    maritalStatus: json["maritalStatus"] == null ? null : Currency.fromMap(json["maritalStatus"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "lastName": lastName == null ? null : lastName,
    "educationType": educationType == null ? null : educationType.toMap(),
    "experience": experience == null ? null : experience,
    "birthPlace": birthPlace == null ? null : birthPlace,
    "responsible": responsible == null ? null : responsible.toMap(),
    "upperMiddleName": upperMiddleName == null ? null : upperMiddleName,
    "nickName": nickName == null ? null : nickName,
    "sex": sex == null ? null : sex.toMap(),
    "dateOfBirth": dateOfBirth == null ? null : "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
    "childCount": childCount == null ? null : childCount,
    "upperFirstName": upperFirstName == null ? null : upperFirstName,
    "firstName": firstName == null ? null : firstName,
    "nationality": nationality == null ? null : nationality.toMap(),
    "upperLastName": upperLastName == null ? null : upperLastName,
    "middleName": middleName == null ? null : middleName,
    "party": party == null ? null : party.toMap(),
    "maritalStatus": maritalStatus == null ? null : maritalStatus.toMap(),
  };
}

class ContactInfo {
  ContactInfo({
    this.entityName,
    this.instanceName,
    this.id,
    this.type,
    this.value,
    this.silenceStartTime,
    this.silenceEndTime,
  });

  ContactInfoEntityName entityName;
  ContactInfoInstanceName instanceName;
  String id;
  Currency type;
  String value;
  String silenceStartTime;
  String silenceEndTime;

  factory ContactInfo.fromJson(String str) => ContactInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContactInfo.fromMap(Map<String, dynamic> json) => ContactInfo(
    entityName: json["_entityName"] == null ? null : contactInfoEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : contactInfoInstanceNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    type: json["type"] == null ? null : Currency.fromMap(json["type"]),
    value: json["value"] == null ? null : json["value"],
    silenceStartTime: json["silenceStartTime"] == null ? null : json["silenceStartTime"],
    silenceEndTime: json["silenceEndTime"] == null ? null : json["silenceEndTime"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : contactInfoEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : contactInfoInstanceNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "type": type == null ? null : type.toMap(),
    "value": value == null ? null : value,
    "silenceStartTime": silenceStartTime == null ? null : silenceStartTime,
    "silenceEndTime": silenceEndTime == null ? null : silenceEndTime,
  };
}

enum ContactInfoEntityName { BASE_CONTACT_INFO }

final contactInfoEntityNameValues = EnumValues({
  "base\u0024ContactInfo": ContactInfoEntityName.BASE_CONTACT_INFO
});

enum ContactInfoInstanceName { THE_9876, THE_1123, THE_8934904590, EMAIL_MAIL_EMAIL_RU }

final contactInfoInstanceNameValues = EnumValues({
  "Email mail@email.ru": ContactInfoInstanceName.EMAIL_MAIL_EMAIL_RU,
  "контакт 1 123": ContactInfoInstanceName.THE_1123,
  "Моб. телефон 8934904590": ContactInfoInstanceName.THE_8934904590,
  "Домашний 9876": ContactInfoInstanceName.THE_9876
});

class ResponsiblePerson {
  ResponsiblePerson({
    this.entityName,
    this.instanceName,
    this.id,
    this.list,
    this.person,
  });

  ResponsiblePersonEntityName entityName;
  ResponsiblePersonInstanceName instanceName;
  String id;
  List<Person> list;
  Person person;

  factory ResponsiblePerson.fromJson(String str) => ResponsiblePerson.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponsiblePerson.fromMap(Map<String, dynamic> json) => ResponsiblePerson(
    entityName: json["_entityName"] == null ? null : responsiblePersonEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : responsiblePersonInstanceNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    list: json["list"] == null ? null : List<Person>.from(json["list"].map((x) => Person.fromMap(x))),
    person: json["person"] == null ? null : Person.fromMap(json["person"]),
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : responsiblePersonEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : responsiblePersonInstanceNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "list": list == null ? null : List<dynamic>.from(list.map((x) => x.toMap())),
    "person": person == null ? null : person.toMap(),
  };
}

enum ResponsiblePersonEntityName { CRM_PERSON_GROUP }

final responsiblePersonEntityNameValues = EnumValues({
  "crm\u0024PersonGroup": ResponsiblePersonEntityName.CRM_PERSON_GROUP
});

enum ResponsiblePersonInstanceName { EMPTY }

final responsiblePersonInstanceNameValues = EnumValues({
  "Петров Петя  ": ResponsiblePersonInstanceName.EMPTY
});

class Person {
  Person({
    this.entityName,
    this.instanceName,
    this.id,
    this.lastName,
    this.firstName,
  });

  PersonEntityName entityName;
  ResponsiblePersonInstanceName instanceName;
  String id;
  StName lastName;
  FirstName firstName;

  factory Person.fromJson(String str) => Person.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Person.fromMap(Map<String, dynamic> json) => Person(
    entityName: json["_entityName"] == null ? null : personEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : responsiblePersonInstanceNameValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    lastName: json["lastName"] == null ? null : stNameValues.map[json["lastName"]],
    firstName: json["firstName"] == null ? null : firstNameValues.map[json["firstName"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : personEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : responsiblePersonInstanceNameValues.reverse[instanceName],
    "id": id == null ? null : id,
    "lastName": lastName == null ? null : stNameValues.reverse[lastName],
    "firstName": firstName == null ? null : firstNameValues.reverse[firstName],
  };
}

enum PersonEntityName { CRM_PERSON }

final personEntityNameValues = EnumValues({
  "crm\u0024Person": PersonEntityName.CRM_PERSON
});

enum FirstName { EMPTY }

final firstNameValues = EnumValues({
  "Петя": FirstName.EMPTY
});

class ContractProduct {
  ContractProduct({
    this.entityName,
    this.instanceName,
    this.id,
    this.product,
    this.quantity,
    this.total,
    this.productGroup,
    this.price,
    this.currency,
    this.description,
  });

  PurpleEntityName entityName;
  ProductDescription instanceName;
  String id;
  ProductProduct product;
  int quantity;
  int total;
  Currency productGroup;
  int price;
  Currency currency;
  ProductDescription description;

  factory ContractProduct.fromJson(String str) => ContractProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ContractProduct.fromMap(Map<String, dynamic> json) => ContractProduct(
    entityName: json["_entityName"] == null ? null : purpleEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : productDescriptionValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    product: json["product"] == null ? null : ProductProduct.fromMap(json["product"]),
    quantity: json["quantity"] == null ? null : json["quantity"],
    total: json["total"] == null ? null : json["total"],
    productGroup: json["productGroup"] == null ? null : Currency.fromMap(json["productGroup"]),
    price: json["price"] == null ? null : json["price"],
    currency: json["currency"] == null ? null : Currency.fromMap(json["currency"]),
    description: json["description"] == null ? null : productDescriptionValues.map[json["description"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : purpleEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : productDescriptionValues.reverse[instanceName],
    "id": id == null ? null : id,
    "product": product == null ? null : product.toMap(),
    "quantity": quantity == null ? null : quantity,
    "total": total == null ? null : total,
    "productGroup": productGroup == null ? null : productGroup.toMap(),
    "price": price == null ? null : price,
    "currency": currency == null ? null : currency.toMap(),
    "description": description == null ? null : productDescriptionValues.reverse[description],
  };
}

enum ProductDescription { EMPTY, INSTANCE_NAME, THE_75435435435, PURPLE }

final productDescriptionValues = EnumValues({
  "": ProductDescription.EMPTY,
  "еуые": ProductDescription.INSTANCE_NAME,
  "описание модема": ProductDescription.PURPLE,
  "+75435435435": ProductDescription.THE_75435435435
});

enum PurpleEntityName { CRM_CONTRACT_PRODUCT }

final purpleEntityNameValues = EnumValues({
  "crm_ContractProduct": PurpleEntityName.CRM_CONTRACT_PRODUCT
});

class ProductProduct {
  ProductProduct({
    this.entityName,
    this.instanceName,
    this.id,
    this.attachments,
    this.uom,
    this.price,
    this.currency,
    this.active,
    this.productGroup,
    this.name,
    this.name1,
    this.description,
    this.description1,
  });

  FluffyEntityName entityName;
  NameEnum instanceName;
  String id;
  List<dynamic> attachments;
  Uom uom;
  int price;
  Duration currency;
  bool active;
  Duration productGroup;
  NameEnum name;
  NameEnum name1;
  DescriptionEnum description;
  DescriptionEnum description1;

  factory ProductProduct.fromJson(String str) => ProductProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductProduct.fromMap(Map<String, dynamic> json) => ProductProduct(
    entityName: json["_entityName"] == null ? null : fluffyEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : nameEnumValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    attachments: json["attachments"] == null ? null : List<dynamic>.from(json["attachments"].map((x) => x)),
    uom: json["uom"] == null ? null : Uom.fromMap(json["uom"]),
    price: json["price"] == null ? null : json["price"],
    currency: json["currency"] == null ? null : Duration.fromMap(json["currency"]),
    active: json["active"] == null ? null : json["active"],
    productGroup: json["productGroup"] == null ? null : Duration.fromMap(json["productGroup"]),
    name: json["name"] == null ? null : nameEnumValues.map[json["name"]],
    name1: json["name1"] == null ? null : nameEnumValues.map[json["name1"]],
    description: json["description"] == null ? null : descriptionEnumValues.map[json["description"]],
    description1: json["description1"] == null ? null : descriptionEnumValues.map[json["description1"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : fluffyEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : nameEnumValues.reverse[instanceName],
    "id": id == null ? null : id,
    "attachments": attachments == null ? null : List<dynamic>.from(attachments.map((x) => x)),
    "uom": uom == null ? null : uom.toMap(),
    "price": price == null ? null : price,
    "currency": currency == null ? null : currency.toMap(),
    "active": active == null ? null : active,
    "productGroup": productGroup == null ? null : productGroup.toMap(),
    "name": name == null ? null : nameEnumValues.reverse[name],
    "name1": name1 == null ? null : nameEnumValues.reverse[name1],
    "description": description == null ? null : descriptionEnumValues.reverse[description],
    "description1": description1 == null ? null : descriptionEnumValues.reverse[description1],
  };
}

enum DescriptionEnum { EMPTY }

final descriptionEnumValues = EnumValues({
  "Абон номер": DescriptionEnum.EMPTY
});

enum FluffyEntityName { CRM_PRODUCT }

final fluffyEntityNameValues = EnumValues({
  "crm\u0024Product": FluffyEntityName.CRM_PRODUCT
});

enum NameEnum { THE_12, EMPTY, THE_12099 }

final nameEnumValues = EnumValues({
  "Телефонный номер": NameEnum.EMPTY,
  "Модем А-12": NameEnum.THE_12,
  "Модем 12099": NameEnum.THE_12099
});

class Uom {
  Uom({
    this.entityName,
    this.instanceName,
    this.id,
    this.code,
    this.description1,
    this.rate,
    this.languageValue,
    this.order,
    this.isBasic,
    this.isSystemRecord,
    this.active,
    this.isDefault,
    this.langValue1,
  });

  DurationEntityName entityName;
  InstanceNameEnum instanceName;
  String id;
  String code;
  InstanceNameEnum description1;
  int rate;
  InstanceNameEnum languageValue;
  int order;
  bool isBasic;
  bool isSystemRecord;
  bool active;
  bool isDefault;
  InstanceNameEnum langValue1;

  factory Uom.fromJson(String str) => Uom.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Uom.fromMap(Map<String, dynamic> json) => Uom(
    entityName: json["_entityName"] == null ? null : durationEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : instanceNameEnumValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    description1: json["description1"] == null ? null : instanceNameEnumValues.map[json["description1"]],
    rate: json["rate"] == null ? null : json["rate"],
    languageValue: json["languageValue"] == null ? null : instanceNameEnumValues.map[json["languageValue"]],
    order: json["order"] == null ? null : json["order"],
    isBasic: json["isBasic"] == null ? null : json["isBasic"],
    isSystemRecord: json["isSystemRecord"] == null ? null : json["isSystemRecord"],
    active: json["active"] == null ? null : json["active"],
    isDefault: json["isDefault"] == null ? null : json["isDefault"],
    langValue1: json["langValue1"] == null ? null : instanceNameEnumValues.map[json["langValue1"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : durationEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : instanceNameEnumValues.reverse[instanceName],
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "description1": description1 == null ? null : instanceNameEnumValues.reverse[description1],
    "rate": rate == null ? null : rate,
    "languageValue": languageValue == null ? null : instanceNameEnumValues.reverse[languageValue],
    "order": order == null ? null : order,
    "isBasic": isBasic == null ? null : isBasic,
    "isSystemRecord": isSystemRecord == null ? null : isSystemRecord,
    "active": active == null ? null : active,
    "isDefault": isDefault == null ? null : isDefault,
    "langValue1": langValue1 == null ? null : instanceNameEnumValues.reverse[langValue1],
  };
}

class OpportunityProduct {
  OpportunityProduct({
    this.entityName,
    this.instanceName,
    this.id,
    this.product,
    this.quantity,
    this.opportunity,
    this.total,
    this.productGroup,
    this.price,
    this.currency,
    this.description,
  });

  TentacledEntityName entityName;
  ProductDescription instanceName;
  String id;
  ProductProduct product;
  int quantity;
  Project opportunity;
  int total;
  Currency productGroup;
  int price;
  Currency currency;
  ProductDescription description;

  factory OpportunityProduct.fromJson(String str) => OpportunityProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OpportunityProduct.fromMap(Map<String, dynamic> json) => OpportunityProduct(
    entityName: json["_entityName"] == null ? null : tentacledEntityNameValues.map[json["_entityName"]],
    instanceName: json["_instanceName"] == null ? null : productDescriptionValues.map[json["_instanceName"]],
    id: json["id"] == null ? null : json["id"],
    product: json["product"] == null ? null : ProductProduct.fromMap(json["product"]),
    quantity: json["quantity"] == null ? null : json["quantity"],
    opportunity: json["opportunity"] == null ? null : Project.fromMap(json["opportunity"]),
    total: json["total"] == null ? null : json["total"],
    productGroup: json["productGroup"] == null ? null : Currency.fromMap(json["productGroup"]),
    price: json["price"] == null ? null : json["price"],
    currency: json["currency"] == null ? null : Currency.fromMap(json["currency"]),
    description: json["description"] == null ? null : productDescriptionValues.map[json["description"]],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : tentacledEntityNameValues.reverse[entityName],
    "_instanceName": instanceName == null ? null : productDescriptionValues.reverse[instanceName],
    "id": id == null ? null : id,
    "product": product == null ? null : product.toMap(),
    "quantity": quantity == null ? null : quantity,
    "opportunity": opportunity == null ? null : opportunity.toMap(),
    "total": total == null ? null : total,
    "productGroup": productGroup == null ? null : productGroup.toMap(),
    "price": price == null ? null : price,
    "currency": currency == null ? null : currency.toMap(),
    "description": description == null ? null : productDescriptionValues.reverse[description],
  };
}

enum TentacledEntityName { CRM_OPPORTUNITY_PRODUCT }

final tentacledEntityNameValues = EnumValues({
  "crm\u0024OpportunityProduct": TentacledEntityName.CRM_OPPORTUNITY_PRODUCT
});

class SalesMethod {
  SalesMethod({
    this.entityName,
    this.instanceName,
    this.id,
    this.active,
    this.isDefault,
    this.name,
  });

  String entityName;
  String instanceName;
  String id;
  bool active;
  bool isDefault;
  String name;

  factory SalesMethod.fromJson(String str) => SalesMethod.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SalesMethod.fromMap(Map<String, dynamic> json) => SalesMethod(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    active: json["active"] == null ? null : json["active"],
    isDefault: json["isDefault"] == null ? null : json["isDefault"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "active": active == null ? null : active,
    "isDefault": isDefault == null ? null : isDefault,
    "name": name == null ? null : name,
  };
}

class Stage {
  Stage({
    this.entityName,
    this.instanceName,
    this.id,
    this.probabilityPercent,
    this.durationInDays,
    this.color,
    this.name,
    this.order,
  });

  String entityName;
  String instanceName;
  String id;
  int probabilityPercent;
  int durationInDays;
  String color;
  String name;
  int order;

  factory Stage.fromJson(String str) => Stage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stage.fromMap(Map<String, dynamic> json) => Stage(
    entityName: json["_entityName"] == null ? null : json["_entityName"],
    instanceName: json["_instanceName"] == null ? null : json["_instanceName"],
    id: json["id"] == null ? null : json["id"],
    probabilityPercent: json["probabilityPercent"] == null ? null : json["probabilityPercent"],
    durationInDays: json["durationInDays"] == null ? null : json["durationInDays"],
    color: json["color"] == null ? null : json["color"],
    name: json["name"] == null ? null : json["name"],
    order: json["order"] == null ? null : json["order"],
  );

  Map<String, dynamic> toMap() => {
    "_entityName": entityName == null ? null : entityName,
    "_instanceName": instanceName == null ? null : instanceName,
    "id": id == null ? null : id,
    "probabilityPercent": probabilityPercent == null ? null : probabilityPercent,
    "durationInDays": durationInDays == null ? null : durationInDays,
    "color": color == null ? null : color,
    "name": name == null ? null : name,
    "order": order == null ? null : order,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
