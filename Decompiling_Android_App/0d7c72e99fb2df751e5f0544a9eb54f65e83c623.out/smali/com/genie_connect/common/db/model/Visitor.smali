.class public Lcom/genie_connect/common/db/model/Visitor;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Visitor.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Visitor$Properties;,
        Lcom/genie_connect/common/db/model/Visitor$VisitorSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "visitors"

.field public static final TABLE_NAME:Ljava/lang/String; = "visitors"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public actionTypesLastRanOn:Ljava/lang/String;

.field public activeGamePlayer:Ljava/lang/Boolean;

.field public address_address1:Ljava/lang/String;

.field public address_address2:Ljava/lang/String;

.field public address_address3:Ljava/lang/String;

.field public address_country:Ljava/lang/String;

.field public address_county:Ljava/lang/String;

.field public address_postCode:Ljava/lang/String;

.field public address_town:Ljava/lang/String;

.field public briefDescription:Ljava/lang/String;

.field public companyName:Ljava/lang/String;

.field public contact_blogUrl:Ljava/lang/String;

.field public contact_email:Ljava/lang/String;

.field public contact_facebook:Ljava/lang/String;

.field public contact_fax:Ljava/lang/String;

.field public contact_linkedIn:Ljava/lang/String;

.field public contact_telephone:Ljava/lang/String;

.field public contact_telephone2:Ljava/lang/String;

.field public contact_twitter:Ljava/lang/String;

.field public contact_www:Ljava/lang/String;

.field public contact_youtubeUrl:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public department:Ljava/lang/String;

.field public enableGamification:Ljava/lang/Boolean;

.field public exhibitor:Ljava/lang/Long;

.field public firstNames:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public gamePersona_nickname:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public hasSetProfile:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public jobTitle:Ljava/lang/String;

.field public lastAccessed:Ljava/util/Date;

.field public lastNames:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public loginEmailSent:Ljava/lang/Boolean;

.field public meetingCredits:Ljava/lang/Long;

.field public meetingDebits:Ljava/lang/Long;

.field public meetingsTarget:Ljava/lang/Long;

.field public messageCredits:Ljava/lang/Long;

.field public messageDebits:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public mugShot:Ljava/lang/Long;

.field public mugShotUrl:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public privateKey:Ljava/lang/String;

.field public qrCodeGenerated:Ljava/lang/Boolean;

.field public reasonForAttending:Ljava/lang/String;

.field public showAddress:Ljava/lang/Boolean;

.field public showBlogUrl:Ljava/lang/Boolean;

.field public showBriefDescription:Ljava/lang/Boolean;

.field public showCompanyName:Ljava/lang/Boolean;

.field public showDepartment:Ljava/lang/Boolean;

.field public showEmail:Ljava/lang/Boolean;

.field public showFacebook:Ljava/lang/Boolean;

.field public showFax:Ljava/lang/Boolean;

.field public showFullDescription:Ljava/lang/Boolean;

.field public showInterests:Ljava/lang/Boolean;

.field public showJobTitle:Ljava/lang/Boolean;

.field public showLinkedIn:Ljava/lang/Boolean;

.field public showMe:Ljava/lang/Boolean;

.field public showMugShot:Ljava/lang/Boolean;

.field public showName:Ljava/lang/Boolean;

.field public showReasonForAttending:Ljava/lang/Boolean;

.field public showTelephone:Ljava/lang/Boolean;

.field public showTelephone2:Ljava/lang/Boolean;

.field public showTwitter:Ljava/lang/Boolean;

.field public showVisitorType:Ljava/lang/Boolean;

.field public showWww:Ljava/lang/Boolean;

.field public showYouTubeUrl:Ljava/lang/Boolean;

.field public timezone:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalPlayerPoints:Ljava/lang/Long;

.field public userType:Ljava/lang/Long;

.field public username:Ljava/lang/String;

.field public visitorGroup:Ljava/lang/String;

.field public visitorType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "meetingsTarget"    # Ljava/lang/Long;
    .param p2, "gamePersona_nickname"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;
    .param p5, "loginEmailSent"    # Ljava/lang/Boolean;
    .param p6, "activeGamePlayer"    # Ljava/lang/Boolean;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "userType"    # Ljava/lang/Long;
    .param p9, "timezone"    # Ljava/lang/String;
    .param p10, "username"    # Ljava/lang/String;
    .param p11, "mugShotUrl"    # Ljava/lang/String;
    .param p12, "showEmail"    # Ljava/lang/Boolean;
    .param p13, "fullDescription"    # Ljava/lang/String;
    .param p14, "showTwitter"    # Ljava/lang/Boolean;
    .param p15, "messageDebits"    # Ljava/lang/Long;
    .param p16, "lastNames"    # Ljava/lang/String;
    .param p17, "createdDate"    # Ljava/util/Date;
    .param p18, "firstNames"    # Ljava/lang/String;
    .param p19, "meetingDebits"    # Ljava/lang/Long;
    .param p20, "privateKey"    # Ljava/lang/String;
    .param p21, "totalPlayerPoints"    # Ljava/lang/Long;
    .param p22, "showYouTubeUrl"    # Ljava/lang/Boolean;
    .param p23, "companyName"    # Ljava/lang/String;
    .param p24, "showBriefDescription"    # Ljava/lang/Boolean;
    .param p25, "createdBy"    # Ljava/lang/String;
    .param p26, "showBlogUrl"    # Ljava/lang/Boolean;
    .param p27, "actionTypesLastRanOn"    # Ljava/lang/String;
    .param p28, "showReasonForAttending"    # Ljava/lang/Boolean;
    .param p29, "showVisitorType"    # Ljava/lang/Boolean;
    .param p30, "showFullDescription"    # Ljava/lang/Boolean;
    .param p31, "messageCredits"    # Ljava/lang/Long;
    .param p32, "importKey"    # Ljava/lang/String;
    .param p33, "showJobTitle"    # Ljava/lang/Boolean;
    .param p34, "hasSetProfile"    # Ljava/lang/Boolean;
    .param p35, "meetingCredits"    # Ljava/lang/Long;
    .param p36, "department"    # Ljava/lang/String;
    .param p37, "locale"    # Ljava/lang/String;
    .param p38, "reasonForAttending"    # Ljava/lang/String;
    .param p39, "showInterests"    # Ljava/lang/Boolean;
    .param p40, "mugShot"    # Ljava/lang/Long;
    .param p41, "contact_youtubeUrl"    # Ljava/lang/String;
    .param p42, "contact_twitter"    # Ljava/lang/String;
    .param p43, "contact_linkedIn"    # Ljava/lang/String;
    .param p44, "contact_fax"    # Ljava/lang/String;
    .param p45, "contact_telephone2"    # Ljava/lang/String;
    .param p46, "contact_email"    # Ljava/lang/String;
    .param p47, "contact_facebook"    # Ljava/lang/String;
    .param p48, "contact_www"    # Ljava/lang/String;
    .param p49, "contact_telephone"    # Ljava/lang/String;
    .param p50, "contact_blogUrl"    # Ljava/lang/String;
    .param p51, "id"    # Ljava/lang/Long;
    .param p52, "showLinkedIn"    # Ljava/lang/Boolean;
    .param p53, "showDepartment"    # Ljava/lang/Boolean;
    .param p54, "showFax"    # Ljava/lang/Boolean;
    .param p55, "title"    # Ljava/lang/String;
    .param p56, "showTelephone2"    # Ljava/lang/Boolean;
    .param p57, "showName"    # Ljava/lang/Boolean;
    .param p58, "_id"    # Ljava/lang/String;
    .param p59, "briefDescription"    # Ljava/lang/String;
    .param p60, "importBatch"    # Ljava/lang/String;
    .param p61, "showAddress"    # Ljava/lang/Boolean;
    .param p62, "showCompanyName"    # Ljava/lang/Boolean;
    .param p63, "lastAccessed"    # Ljava/util/Date;
    .param p64, "jobTitle"    # Ljava/lang/String;
    .param p65, "showMugShot"    # Ljava/lang/Boolean;
    .param p66, "enableGamification"    # Ljava/lang/Boolean;
    .param p67, "importCameFrom"    # Ljava/lang/String;
    .param p68, "showWww"    # Ljava/lang/Boolean;
    .param p69, "modifiedDate"    # Ljava/util/Date;
    .param p70, "showTelephone"    # Ljava/lang/Boolean;
    .param p71, "visitorGroup"    # Ljava/lang/String;
    .param p72, "showFacebook"    # Ljava/lang/Boolean;
    .param p73, "address_county"    # Ljava/lang/String;
    .param p74, "address_postCode"    # Ljava/lang/String;
    .param p75, "address_address1"    # Ljava/lang/String;
    .param p76, "address_address2"    # Ljava/lang/String;
    .param p77, "address_town"    # Ljava/lang/String;
    .param p78, "address_address3"    # Ljava/lang/String;
    .param p79, "address_country"    # Ljava/lang/String;
    .param p80, "visitorType"    # Ljava/lang/String;
    .param p81, "qrCodeGenerated"    # Ljava/lang/Boolean;
    .param p82, "showMe"    # Ljava/lang/Boolean;
    .param p83, "exhibitor"    # Ljava/lang/Long;
    .param p84, "_namespace"    # Ljava/lang/String;
    .param p85, "isFavourite"    # Ljava/lang/Boolean;
    .param p86, "hasNote"    # Ljava/lang/Boolean;
    .param p87, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->meetingsTarget:Ljava/lang/Long;

    .line 275
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Visitor;->gamePersona_nickname:Ljava/lang/String;

    .line 276
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Visitor;->modifiedBy:Ljava/lang/String;

    .line 277
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Visitor;->newPassword:Ljava/lang/String;

    .line 278
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Visitor;->loginEmailSent:Ljava/lang/Boolean;

    .line 279
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Visitor;->activeGamePlayer:Ljava/lang/Boolean;

    .line 280
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Visitor;->password:Ljava/lang/String;

    .line 281
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Visitor;->userType:Ljava/lang/Long;

    .line 282
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Visitor;->timezone:Ljava/lang/String;

    .line 283
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Visitor;->username:Ljava/lang/String;

    .line 284
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Visitor;->mugShotUrl:Ljava/lang/String;

    .line 285
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Visitor;->showEmail:Ljava/lang/Boolean;

    .line 286
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Visitor;->fullDescription:Ljava/lang/String;

    .line 287
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Visitor;->showTwitter:Ljava/lang/Boolean;

    .line 288
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->messageDebits:Ljava/lang/Long;

    .line 289
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->lastNames:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->createdDate:Ljava/util/Date;

    .line 291
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->firstNames:Ljava/lang/String;

    .line 292
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->meetingDebits:Ljava/lang/Long;

    .line 293
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->privateKey:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->totalPlayerPoints:Ljava/lang/Long;

    .line 295
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showYouTubeUrl:Ljava/lang/Boolean;

    .line 296
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->companyName:Ljava/lang/String;

    .line 297
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showBriefDescription:Ljava/lang/Boolean;

    .line 298
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->createdBy:Ljava/lang/String;

    .line 299
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showBlogUrl:Ljava/lang/Boolean;

    .line 300
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->actionTypesLastRanOn:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showReasonForAttending:Ljava/lang/Boolean;

    .line 302
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showVisitorType:Ljava/lang/Boolean;

    .line 303
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showFullDescription:Ljava/lang/Boolean;

    .line 304
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->messageCredits:Ljava/lang/Long;

    .line 305
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->importKey:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showJobTitle:Ljava/lang/Boolean;

    .line 307
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->hasSetProfile:Ljava/lang/Boolean;

    .line 308
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->meetingCredits:Ljava/lang/Long;

    .line 309
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->department:Ljava/lang/String;

    .line 310
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->locale:Ljava/lang/String;

    .line 311
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->reasonForAttending:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showInterests:Ljava/lang/Boolean;

    .line 313
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->mugShot:Ljava/lang/Long;

    .line 314
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_youtubeUrl:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_twitter:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_linkedIn:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_fax:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone2:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_email:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_facebook:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_www:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone:Ljava/lang/String;

    .line 323
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_blogUrl:Ljava/lang/String;

    .line 324
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 325
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showLinkedIn:Ljava/lang/Boolean;

    .line 326
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showDepartment:Ljava/lang/Boolean;

    .line 327
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showFax:Ljava/lang/Boolean;

    .line 328
    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->title:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showTelephone2:Ljava/lang/Boolean;

    .line 330
    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showName:Ljava/lang/Boolean;

    .line 331
    move-object/from16 v0, p58

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->_id:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p59

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->briefDescription:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p60

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->importBatch:Ljava/lang/String;

    .line 334
    move-object/from16 v0, p61

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showAddress:Ljava/lang/Boolean;

    .line 335
    move-object/from16 v0, p62

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showCompanyName:Ljava/lang/Boolean;

    .line 336
    move-object/from16 v0, p63

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->lastAccessed:Ljava/util/Date;

    .line 337
    move-object/from16 v0, p64

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->jobTitle:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p65

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showMugShot:Ljava/lang/Boolean;

    .line 339
    move-object/from16 v0, p66

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->enableGamification:Ljava/lang/Boolean;

    .line 340
    move-object/from16 v0, p67

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->importCameFrom:Ljava/lang/String;

    .line 341
    move-object/from16 v0, p68

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showWww:Ljava/lang/Boolean;

    .line 342
    move-object/from16 v0, p69

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->modifiedDate:Ljava/util/Date;

    .line 343
    move-object/from16 v0, p70

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showTelephone:Ljava/lang/Boolean;

    .line 344
    move-object/from16 v0, p71

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->visitorGroup:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p72

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showFacebook:Ljava/lang/Boolean;

    .line 346
    move-object/from16 v0, p73

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_county:Ljava/lang/String;

    .line 347
    move-object/from16 v0, p74

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_postCode:Ljava/lang/String;

    .line 348
    move-object/from16 v0, p75

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address1:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p76

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address2:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p77

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_town:Ljava/lang/String;

    .line 351
    move-object/from16 v0, p78

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address3:Ljava/lang/String;

    .line 352
    move-object/from16 v0, p79

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_country:Ljava/lang/String;

    .line 353
    move-object/from16 v0, p80

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->visitorType:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p81

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->qrCodeGenerated:Ljava/lang/Boolean;

    .line 355
    move-object/from16 v0, p82

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->showMe:Ljava/lang/Boolean;

    .line 356
    move-object/from16 v0, p83

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->exhibitor:Ljava/lang/Long;

    .line 357
    move-object/from16 v0, p84

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->_namespace:Ljava/lang/String;

    .line 358
    move-object/from16 v0, p85

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->isFavourite:Ljava/lang/Boolean;

    .line 359
    move-object/from16 v0, p86

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->hasNote:Ljava/lang/Boolean;

    .line 360
    move-object/from16 v0, p87

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->_dataversion:Ljava/lang/String;

    .line 361
    return-void
.end method


# virtual methods
.method public getAddress_address1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address3:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_country()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_county()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_county:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_postCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_postCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_town()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->address_town:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 132
    sget-object v0, Lcom/genie_connect/common/db/model/Visitor;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "companyName"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "firstNames"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "jobTitle"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "lastNames"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "mugShotUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "title"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "visitorGroup"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEntity;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "address"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "contact"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Visitor;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getContact_blogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_email:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_facebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_linkedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_linkedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_twitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_www()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_www:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_youtubeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_youtubeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, "visitors"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitor;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, "visitors"

    return-object v0
.end method

.method public setAddress_address1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address1:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setAddress_address2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address2:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setAddress_address3(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_address3:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setAddress_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_country:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setAddress_county(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_county:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setAddress_postCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_postCode:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setAddress_town(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->address_town:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setContact_blogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_blogUrl:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setContact_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_email:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setContact_facebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_facebook:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setContact_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_fax:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setContact_linkedIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_linkedIn:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setContact_telephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setContact_telephone2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone2:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setContact_twitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_twitter:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setContact_www(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_www:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setContact_youtubeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->contact_youtubeUrl:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->hasNote:Ljava/lang/Boolean;

    .line 514
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 262
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitor;->isFavourite:Ljava/lang/Boolean;

    .line 506
    return-void
.end method
