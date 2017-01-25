.class public Lcom/genie_connect/common/db/model/Exhibitor;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Exhibitor.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Exhibitor$Properties;,
        Lcom/genie_connect/common/db/model/Exhibitor$ExhibitorSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "exhibitors"

.field public static final TABLE_NAME:Ljava/lang/String; = "exhibitors"


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

.field public category:Ljava/lang/String;

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

.field public enableGamification:Ljava/lang/Boolean;

.field public exhibitorType:Ljava/lang/String;

.field public featured:Ljava/lang/Long;

.field public fullDescription:Ljava/lang/String;

.field public gamePersona_nickname:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public lastAccessed:Ljava/util/Date;

.field public locale:Ljava/lang/String;

.field public loginEmailSent:Ljava/lang/Boolean;

.field public logo:Ljava/lang/Long;

.field public logoUrl:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public newPassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public seqNo:Ljava/lang/Long;

.field public shareUrl:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public totalPlayerPoints:Ljava/lang/Long;

.field public userType:Ljava/lang/Long;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "seqNo"    # Ljava/lang/Long;
    .param p2, "gamePersona_nickname"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .param p4, "modifiedBy"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;
    .param p6, "loginEmailSent"    # Ljava/lang/Boolean;
    .param p7, "featured"    # Ljava/lang/Long;
    .param p8, "password"    # Ljava/lang/String;
    .param p9, "contact_youtubeUrl"    # Ljava/lang/String;
    .param p10, "contact_twitter"    # Ljava/lang/String;
    .param p11, "contact_linkedIn"    # Ljava/lang/String;
    .param p12, "contact_fax"    # Ljava/lang/String;
    .param p13, "contact_telephone2"    # Ljava/lang/String;
    .param p14, "contact_email"    # Ljava/lang/String;
    .param p15, "contact_facebook"    # Ljava/lang/String;
    .param p16, "contact_www"    # Ljava/lang/String;
    .param p17, "contact_telephone"    # Ljava/lang/String;
    .param p18, "contact_blogUrl"    # Ljava/lang/String;
    .param p19, "activeGamePlayer"    # Ljava/lang/Boolean;
    .param p20, "userType"    # Ljava/lang/Long;
    .param p21, "id"    # Ljava/lang/Long;
    .param p22, "username"    # Ljava/lang/String;
    .param p23, "timezone"    # Ljava/lang/String;
    .param p24, "fullDescription"    # Ljava/lang/String;
    .param p25, "briefDescription"    # Ljava/lang/String;
    .param p26, "_id"    # Ljava/lang/String;
    .param p27, "name"    # Ljava/lang/String;
    .param p28, "importBatch"    # Ljava/lang/String;
    .param p29, "createdDate"    # Ljava/util/Date;
    .param p30, "lastAccessed"    # Ljava/util/Date;
    .param p31, "logo"    # Ljava/lang/Long;
    .param p32, "totalPlayerPoints"    # Ljava/lang/Long;
    .param p33, "logoUrl"    # Ljava/lang/String;
    .param p34, "importCameFrom"    # Ljava/lang/String;
    .param p35, "enableGamification"    # Ljava/lang/Boolean;
    .param p36, "modifiedDate"    # Ljava/util/Date;
    .param p37, "category"    # Ljava/lang/String;
    .param p38, "createdBy"    # Ljava/lang/String;
    .param p39, "address_county"    # Ljava/lang/String;
    .param p40, "address_postCode"    # Ljava/lang/String;
    .param p41, "address_address1"    # Ljava/lang/String;
    .param p42, "address_address2"    # Ljava/lang/String;
    .param p43, "address_town"    # Ljava/lang/String;
    .param p44, "address_address3"    # Ljava/lang/String;
    .param p45, "address_country"    # Ljava/lang/String;
    .param p46, "shareUrl"    # Ljava/lang/String;
    .param p47, "exhibitorType"    # Ljava/lang/String;
    .param p48, "importKey"    # Ljava/lang/String;
    .param p49, "_namespace"    # Ljava/lang/String;
    .param p50, "isFavourite"    # Ljava/lang/Boolean;
    .param p51, "hasNote"    # Ljava/lang/Boolean;
    .param p52, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->seqNo:Ljava/lang/Long;

    .line 216
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Exhibitor;->gamePersona_nickname:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Exhibitor;->newPassword:Ljava/lang/String;

    .line 218
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Exhibitor;->modifiedBy:Ljava/lang/String;

    .line 219
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Exhibitor;->locale:Ljava/lang/String;

    .line 220
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Exhibitor;->loginEmailSent:Ljava/lang/Boolean;

    .line 221
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Exhibitor;->featured:Ljava/lang/Long;

    .line 222
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Exhibitor;->password:Ljava/lang/String;

    .line 223
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_youtubeUrl:Ljava/lang/String;

    .line 224
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_twitter:Ljava/lang/String;

    .line 225
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_linkedIn:Ljava/lang/String;

    .line 226
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_fax:Ljava/lang/String;

    .line 227
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone2:Ljava/lang/String;

    .line 228
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_email:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_facebook:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_www:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_blogUrl:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->activeGamePlayer:Ljava/lang/Boolean;

    .line 234
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->userType:Ljava/lang/Long;

    .line 235
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    .line 236
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->username:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->timezone:Ljava/lang/String;

    .line 238
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->fullDescription:Ljava/lang/String;

    .line 239
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->briefDescription:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->_id:Ljava/lang/String;

    .line 241
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->name:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->importBatch:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->createdDate:Ljava/util/Date;

    .line 244
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->lastAccessed:Ljava/util/Date;

    .line 245
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->logo:Ljava/lang/Long;

    .line 246
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->totalPlayerPoints:Ljava/lang/Long;

    .line 247
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->logoUrl:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->importCameFrom:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->enableGamification:Ljava/lang/Boolean;

    .line 250
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->modifiedDate:Ljava/util/Date;

    .line 251
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->category:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->createdBy:Ljava/lang/String;

    .line 253
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_county:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_postCode:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address1:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address2:Ljava/lang/String;

    .line 257
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_town:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address3:Ljava/lang/String;

    .line 259
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_country:Ljava/lang/String;

    .line 260
    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->shareUrl:Ljava/lang/String;

    .line 261
    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->exhibitorType:Ljava/lang/String;

    .line 262
    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->importKey:Ljava/lang/String;

    .line 263
    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->_namespace:Ljava/lang/String;

    .line 264
    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->isFavourite:Ljava/lang/Boolean;

    .line 265
    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->hasNote:Ljava/lang/Boolean;

    .line 266
    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->_dataversion:Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method public getAddress_address1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address3:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_country()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_county()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_county:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_postCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_postCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_town()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_town:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 82
    sget-object v0, Lcom/genie_connect/common/db/model/Exhibitor;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "featured"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "logoUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "seqNo"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "locations"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "locations"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "products"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "products"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "sessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "sessions"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "visitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "visitors"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "imagesUrl"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "imagesUrl"

    sget-object v7, Lcom/genie_connect/common/db/model/Exhibitor;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "address"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "contact"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "exhibitorType"

    sget-object v5, Lcom/genie_connect/common/db/model/Exhibitor;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Exhibitor;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getContact_blogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_email:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_facebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_linkedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_linkedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_twitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_www()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_www:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_youtubeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_youtubeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "exhibitors"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Exhibitor;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "exhibitors"

    return-object v0
.end method

.method public setAddress_address1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address1:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setAddress_address2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address2:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setAddress_address3(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_address3:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setAddress_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_country:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setAddress_county(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_county:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setAddress_postCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_postCode:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setAddress_town(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->address_town:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setContact_blogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_blogUrl:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setContact_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_email:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setContact_facebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_facebook:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setContact_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_fax:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setContact_linkedIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_linkedIn:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setContact_telephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setContact_telephone2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_telephone2:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setContact_twitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_twitter:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setContact_www(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_www:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setContact_youtubeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->contact_youtubeUrl:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->hasNote:Ljava/lang/Boolean;

    .line 420
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    .line 203
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Exhibitor;->isFavourite:Ljava/lang/Boolean;

    .line 412
    return-void
.end method
