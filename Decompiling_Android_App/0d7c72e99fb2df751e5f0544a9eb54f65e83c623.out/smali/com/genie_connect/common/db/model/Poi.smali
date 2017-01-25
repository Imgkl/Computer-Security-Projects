.class public Lcom/genie_connect/common/db/model/Poi;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Poi.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Poi$Properties;,
        Lcom/genie_connect/common/db/model/Poi$PoiSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "poi"

.field public static final TABLE_NAME:Ljava/lang/String; = "poi"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public address_address1:Ljava/lang/String;

.field public address_address2:Ljava/lang/String;

.field public address_address3:Ljava/lang/String;

.field public address_country:Ljava/lang/String;

.field public address_county:Ljava/lang/String;

.field public address_postCode:Ljava/lang/String;

.field public address_town:Ljava/lang/String;

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

.field public fullDescription:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public thumb:Ljava/lang/Long;

.field public thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->id:Ljava/lang/Long;

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "contact_youtubeUrl"    # Ljava/lang/String;
    .param p4, "contact_twitter"    # Ljava/lang/String;
    .param p5, "contact_linkedIn"    # Ljava/lang/String;
    .param p6, "contact_fax"    # Ljava/lang/String;
    .param p7, "contact_telephone2"    # Ljava/lang/String;
    .param p8, "contact_email"    # Ljava/lang/String;
    .param p9, "contact_facebook"    # Ljava/lang/String;
    .param p10, "contact_www"    # Ljava/lang/String;
    .param p11, "contact_telephone"    # Ljava/lang/String;
    .param p12, "contact_blogUrl"    # Ljava/lang/String;
    .param p13, "modifiedDate"    # Ljava/util/Date;
    .param p14, "id"    # Ljava/lang/Long;
    .param p15, "fullDescription"    # Ljava/lang/String;
    .param p16, "_id"    # Ljava/lang/String;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "address_county"    # Ljava/lang/String;
    .param p19, "address_postCode"    # Ljava/lang/String;
    .param p20, "address_address1"    # Ljava/lang/String;
    .param p21, "address_address2"    # Ljava/lang/String;
    .param p22, "address_town"    # Ljava/lang/String;
    .param p23, "address_address3"    # Ljava/lang/String;
    .param p24, "address_country"    # Ljava/lang/String;
    .param p25, "name"    # Ljava/lang/String;
    .param p26, "importBatch"    # Ljava/lang/String;
    .param p27, "thumbUrl"    # Ljava/lang/String;
    .param p28, "shareUrl"    # Ljava/lang/String;
    .param p29, "thumb"    # Ljava/lang/Long;
    .param p30, "createdDate"    # Ljava/util/Date;
    .param p31, "importKey"    # Ljava/lang/String;
    .param p32, "_namespace"    # Ljava/lang/String;
    .param p33, "isFavourite"    # Ljava/lang/Boolean;
    .param p34, "hasNote"    # Ljava/lang/Boolean;
    .param p35, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->modifiedBy:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Poi;->importCameFrom:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Poi;->contact_youtubeUrl:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Poi;->contact_twitter:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Poi;->contact_linkedIn:Ljava/lang/String;

    .line 175
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Poi;->contact_fax:Ljava/lang/String;

    .line 176
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone2:Ljava/lang/String;

    .line 177
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Poi;->contact_email:Ljava/lang/String;

    .line 178
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Poi;->contact_facebook:Ljava/lang/String;

    .line 179
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Poi;->contact_www:Ljava/lang/String;

    .line 180
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone:Ljava/lang/String;

    .line 181
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Poi;->contact_blogUrl:Ljava/lang/String;

    .line 182
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Poi;->modifiedDate:Ljava/util/Date;

    .line 183
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Poi;->id:Ljava/lang/Long;

    .line 184
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->fullDescription:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->_id:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->createdBy:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_county:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_postCode:Ljava/lang/String;

    .line 189
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address1:Ljava/lang/String;

    .line 190
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address2:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_town:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address3:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_country:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->name:Ljava/lang/String;

    .line 195
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->importBatch:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->thumbUrl:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->shareUrl:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->thumb:Ljava/lang/Long;

    .line 199
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->createdDate:Ljava/util/Date;

    .line 200
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->importKey:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->_namespace:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->isFavourite:Ljava/lang/Boolean;

    .line 203
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->hasNote:Ljava/lang/Boolean;

    .line 204
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->_dataversion:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method public getAddress_address1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address2:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_address3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_address3:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_country()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_country:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_county()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_county:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_postCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_postCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_town()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->address_town:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 80
    sget-object v0, Lcom/genie_connect/common/db/model/Poi;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "address"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->ADDRESS_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "contact"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "thumbUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "tags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "tags"

    sget-object v7, Lcom/genie_connect/common/db/model/Poi;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/Poi;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Poi;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getContact_blogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_email:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_facebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_linkedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_linkedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_twitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_www()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_www:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_youtubeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->contact_youtubeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "poi"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Poi;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "poi"

    return-object v0
.end method

.method public setAddress_address1(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_address1:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setAddress_address2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_address2:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setAddress_address3(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_address3:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setAddress_country(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_country:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setAddress_county(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_county:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setAddress_postCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_postCode:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setAddress_town(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->address_town:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setContact_blogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_blogUrl:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setContact_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_email:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setContact_facebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_facebook:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setContact_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_fax:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setContact_linkedIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_linkedIn:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setContact_telephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setContact_telephone2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_telephone2:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setContact_twitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_twitter:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setContact_www(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_www:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setContact_youtubeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->contact_youtubeUrl:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->hasNote:Ljava/lang/Boolean;

    .line 358
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->id:Ljava/lang/Long;

    .line 158
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Poi;->isFavourite:Ljava/lang/Boolean;

    .line 350
    return-void
.end method
