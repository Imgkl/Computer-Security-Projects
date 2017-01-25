.class public Lcom/genie_connect/common/db/model/Speaker;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Speaker.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Speaker$Properties;,
        Lcom/genie_connect/common/db/model/Speaker$SpeakerSyncableFields;,
        Lcom/genie_connect/common/db/model/Speaker$SpeakerType;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "speakers"

.field static final FULLNAMES_COL:Ljava/lang/String; = "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

.field static final FULL_TITLE_NAME_COL:Ljava/lang/String; = "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

.field public static final TABLE_NAME:Ljava/lang/String; = "speakers"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

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

.field public firstNames:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public gamePersona_nickname:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

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

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public mugShot:Ljava/lang/Long;

.field public mugShotUrl:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalPlayerPoints:Ljava/lang/Long;

.field public userType:Ljava/lang/Long;

.field public username:Ljava/lang/String;

.field public visitor:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 265
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "gamePersona_nickname"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "loginEmailSent"    # Ljava/lang/Boolean;
    .param p5, "activeGamePlayer"    # Ljava/lang/Boolean;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "userType"    # Ljava/lang/Long;
    .param p8, "timezone"    # Ljava/lang/String;
    .param p9, "username"    # Ljava/lang/String;
    .param p10, "mugShotUrl"    # Ljava/lang/String;
    .param p11, "fullDescription"    # Ljava/lang/String;
    .param p12, "lastNames"    # Ljava/lang/String;
    .param p13, "createdDate"    # Ljava/util/Date;
    .param p14, "firstNames"    # Ljava/lang/String;
    .param p15, "totalPlayerPoints"    # Ljava/lang/Long;
    .param p16, "companyName"    # Ljava/lang/String;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "shareUrl"    # Ljava/lang/String;
    .param p19, "importKey"    # Ljava/lang/String;
    .param p20, "department"    # Ljava/lang/String;
    .param p21, "locale"    # Ljava/lang/String;
    .param p22, "mugShot"    # Ljava/lang/Long;
    .param p23, "contact_youtubeUrl"    # Ljava/lang/String;
    .param p24, "contact_twitter"    # Ljava/lang/String;
    .param p25, "contact_linkedIn"    # Ljava/lang/String;
    .param p26, "contact_fax"    # Ljava/lang/String;
    .param p27, "contact_telephone2"    # Ljava/lang/String;
    .param p28, "contact_email"    # Ljava/lang/String;
    .param p29, "contact_facebook"    # Ljava/lang/String;
    .param p30, "contact_www"    # Ljava/lang/String;
    .param p31, "contact_telephone"    # Ljava/lang/String;
    .param p32, "contact_blogUrl"    # Ljava/lang/String;
    .param p33, "id"    # Ljava/lang/Long;
    .param p34, "title"    # Ljava/lang/String;
    .param p35, "_id"    # Ljava/lang/String;
    .param p36, "briefDescription"    # Ljava/lang/String;
    .param p37, "importBatch"    # Ljava/lang/String;
    .param p38, "lastAccessed"    # Ljava/util/Date;
    .param p39, "jobTitle"    # Ljava/lang/String;
    .param p40, "enableGamification"    # Ljava/lang/Boolean;
    .param p41, "importCameFrom"    # Ljava/lang/String;
    .param p42, "visitor"    # Ljava/lang/Long;
    .param p43, "modifiedDate"    # Ljava/util/Date;
    .param p44, "address_county"    # Ljava/lang/String;
    .param p45, "address_postCode"    # Ljava/lang/String;
    .param p46, "address_address1"    # Ljava/lang/String;
    .param p47, "address_address2"    # Ljava/lang/String;
    .param p48, "address_town"    # Ljava/lang/String;
    .param p49, "address_address3"    # Ljava/lang/String;
    .param p50, "address_country"    # Ljava/lang/String;
    .param p51, "_namespace"    # Ljava/lang/String;
    .param p52, "isFavourite"    # Ljava/lang/Boolean;
    .param p53, "hasNote"    # Ljava/lang/Boolean;
    .param p54, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->gamePersona_nickname:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Speaker;->modifiedBy:Ljava/lang/String;

    .line 274
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Speaker;->newPassword:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Speaker;->loginEmailSent:Ljava/lang/Boolean;

    .line 276
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Speaker;->activeGamePlayer:Ljava/lang/Boolean;

    .line 277
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Speaker;->password:Ljava/lang/String;

    .line 278
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Speaker;->userType:Ljava/lang/Long;

    .line 279
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Speaker;->timezone:Ljava/lang/String;

    .line 280
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Speaker;->username:Ljava/lang/String;

    .line 281
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Speaker;->mugShotUrl:Ljava/lang/String;

    .line 282
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    .line 283
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Speaker;->lastNames:Ljava/lang/String;

    .line 284
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Speaker;->createdDate:Ljava/util/Date;

    .line 285
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Speaker;->firstNames:Ljava/lang/String;

    .line 286
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->totalPlayerPoints:Ljava/lang/Long;

    .line 287
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->companyName:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->createdBy:Ljava/lang/String;

    .line 289
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->shareUrl:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->importKey:Ljava/lang/String;

    .line 291
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    .line 292
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->locale:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->mugShot:Ljava/lang/Long;

    .line 294
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_youtubeUrl:Ljava/lang/String;

    .line 295
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_twitter:Ljava/lang/String;

    .line 296
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_linkedIn:Ljava/lang/String;

    .line 297
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_fax:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone2:Ljava/lang/String;

    .line 299
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_email:Ljava/lang/String;

    .line 300
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_facebook:Ljava/lang/String;

    .line 301
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_www:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone:Ljava/lang/String;

    .line 303
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_blogUrl:Ljava/lang/String;

    .line 304
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 305
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->title:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->_id:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->briefDescription:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->importBatch:Ljava/lang/String;

    .line 309
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->lastAccessed:Ljava/util/Date;

    .line 310
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    .line 311
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->enableGamification:Ljava/lang/Boolean;

    .line 312
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->importCameFrom:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->visitor:Ljava/lang/Long;

    .line 314
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->modifiedDate:Ljava/util/Date;

    .line 315
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_county:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_postCode:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address1:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address2:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_town:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address3:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_country:Ljava/lang/String;

    .line 322
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->_namespace:Ljava/lang/String;

    .line 323
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->isFavourite:Ljava/lang/Boolean;

    .line 324
    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->hasNote:Ljava/lang/Boolean;

    .line 325
    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->_dataversion:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public getAddress_address1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address3:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_country()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_county()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_county:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_postCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_postCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_town()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->address_town:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 123
    sget-object v0, Lcom/genie_connect/common/db/model/Speaker;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x13

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

    const-string v4, "department"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "lastNames"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "mugShotUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "title"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "coChairAtSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "coChairAtSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "keySpeakerAtSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "keySpeakerAtSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "keySpeakerAtSubSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "keySpeakerAtSubSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "leadChairAtSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "leadChairAtSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "speakerAtSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "speakerAtSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "speakerAtSubSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "speakerAtSubSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Speaker;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "address"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "contact"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Speaker;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getContact_blogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_email:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_facebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_linkedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_linkedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_twitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_www()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_www:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_youtubeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_youtubeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "speakers"

    return-object v0
.end method

.method public getFullNameWithTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "fullName":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/Speaker;->getFullNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFullNames()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, "fullName":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->firstNames:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->firstNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->lastNames:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/common/utils/string/CommonStringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/genie_connect/common/db/model/Speaker;->lastNames:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Speaker;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "speakers"

    return-object v0
.end method

.method public setAddress_address1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address1:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setAddress_address2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address2:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setAddress_address3(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_address3:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setAddress_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_country:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setAddress_county(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_county:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setAddress_postCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_postCode:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setAddress_town(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->address_town:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setContact_blogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_blogUrl:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setContact_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_email:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setContact_facebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_facebook:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setContact_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_fax:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setContact_linkedIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_linkedIn:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setContact_telephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setContact_telephone2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone2:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setContact_twitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_twitter:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setContact_www(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_www:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setContact_youtubeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->contact_youtubeUrl:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->hasNote:Ljava/lang/Boolean;

    .line 479
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 260
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Speaker;->isFavourite:Ljava/lang/Boolean;

    .line 471
    return-void
.end method
