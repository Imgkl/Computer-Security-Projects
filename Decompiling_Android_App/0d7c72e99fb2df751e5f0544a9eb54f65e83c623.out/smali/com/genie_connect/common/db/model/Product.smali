.class public Lcom/genie_connect/common/db/model/Product;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Product.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Product$Properties;,
        Lcom/genie_connect/common/db/model/Product$ProductSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "products"

.field public static final TABLE_NAME:Ljava/lang/String; = "products"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

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

.field public customField1:Ljava/lang/String;

.field public customField2:Ljava/lang/String;

.field public customField3:Ljava/lang/String;

.field public customField4:Ljava/lang/String;

.field public customField5:Ljava/lang/String;

.field public exhibitor:Ljava/lang/Long;

.field public fullDescription:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public mainImage:Ljava/lang/Long;

.field public mainImageUrl:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public survey:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "contact_youtubeUrl"    # Ljava/lang/String;
    .param p3, "contact_twitter"    # Ljava/lang/String;
    .param p4, "contact_linkedIn"    # Ljava/lang/String;
    .param p5, "contact_fax"    # Ljava/lang/String;
    .param p6, "contact_telephone2"    # Ljava/lang/String;
    .param p7, "contact_email"    # Ljava/lang/String;
    .param p8, "contact_facebook"    # Ljava/lang/String;
    .param p9, "contact_www"    # Ljava/lang/String;
    .param p10, "contact_telephone"    # Ljava/lang/String;
    .param p11, "contact_blogUrl"    # Ljava/lang/String;
    .param p12, "mainImage"    # Ljava/lang/Long;
    .param p13, "id"    # Ljava/lang/Long;
    .param p14, "fullDescription"    # Ljava/lang/String;
    .param p15, "_id"    # Ljava/lang/String;
    .param p16, "importBatch"    # Ljava/lang/String;
    .param p17, "name"    # Ljava/lang/String;
    .param p18, "createdDate"    # Ljava/util/Date;
    .param p19, "customField3"    # Ljava/lang/String;
    .param p20, "customField4"    # Ljava/lang/String;
    .param p21, "importCameFrom"    # Ljava/lang/String;
    .param p22, "customField1"    # Ljava/lang/String;
    .param p23, "customField2"    # Ljava/lang/String;
    .param p24, "mainImageUrl"    # Ljava/lang/String;
    .param p25, "customField5"    # Ljava/lang/String;
    .param p26, "modifiedDate"    # Ljava/util/Date;
    .param p27, "createdBy"    # Ljava/lang/String;
    .param p28, "shareUrl"    # Ljava/lang/String;
    .param p29, "exhibitor"    # Ljava/lang/Long;
    .param p30, "importKey"    # Ljava/lang/String;
    .param p31, "_namespace"    # Ljava/lang/String;
    .param p32, "isFavourite"    # Ljava/lang/Boolean;
    .param p33, "hasNote"    # Ljava/lang/Boolean;
    .param p34, "_dataversion"    # Ljava/lang/String;
    .param p35, "survey"    # Ljava/lang/Long;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->modifiedBy:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Product;->contact_youtubeUrl:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Product;->contact_twitter:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Product;->contact_linkedIn:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Product;->contact_fax:Ljava/lang/String;

    .line 188
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone2:Ljava/lang/String;

    .line 189
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Product;->contact_email:Ljava/lang/String;

    .line 190
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Product;->contact_facebook:Ljava/lang/String;

    .line 191
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Product;->contact_www:Ljava/lang/String;

    .line 192
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone:Ljava/lang/String;

    .line 193
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Product;->contact_blogUrl:Ljava/lang/String;

    .line 194
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Product;->mainImage:Ljava/lang/Long;

    .line 195
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    .line 196
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Product;->fullDescription:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->_id:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->importBatch:Ljava/lang/String;

    .line 199
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->name:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->createdDate:Ljava/util/Date;

    .line 201
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->customField3:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->customField4:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->importCameFrom:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->customField1:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->customField2:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->mainImageUrl:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->customField5:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->modifiedDate:Ljava/util/Date;

    .line 209
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->createdBy:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->shareUrl:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->exhibitor:Ljava/lang/Long;

    .line 212
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->importKey:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->_namespace:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->isFavourite:Ljava/lang/Boolean;

    .line 215
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->hasNote:Ljava/lang/Boolean;

    .line 216
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->_dataversion:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Product;->survey:Ljava/lang/Long;

    .line 218
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 86
    sget-object v0, Lcom/genie_connect/common/db/model/Product;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

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

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "customField1"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "customField2"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "customField3"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "customField4"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "customField5"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "mainImageUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "contact"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->CONTACT_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "exhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Product;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "tags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "tags"

    sget-object v7, Lcom/genie_connect/common/db/model/Product;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "imagesUrl"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "imagesUrl"

    sget-object v7, Lcom/genie_connect/common/db/model/Product;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/Product;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "exhibitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "exhibitors"

    sget-object v7, Lcom/genie_connect/common/db/model/Product;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/Product;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "survey"

    sget-object v5, Lcom/genie_connect/common/db/model/Product;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Product;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getContact_blogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_blogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_email()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_email:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_facebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_fax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_fax:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_linkedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_linkedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_telephone2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone2:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_twitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_www()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_www:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_youtubeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->contact_youtubeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "products"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Product;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "products"

    return-object v0
.end method

.method public setContact_blogUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_blogUrl:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setContact_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_email:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setContact_facebook(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_facebook:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setContact_fax(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_fax:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setContact_linkedIn(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_linkedIn:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setContact_telephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setContact_telephone2(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_telephone2:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setContact_twitter(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_twitter:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setContact_www(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_www:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setContact_youtubeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->contact_youtubeUrl:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->hasNote:Ljava/lang/Boolean;

    .line 315
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    .line 171
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Product;->isFavourite:Ljava/lang/Boolean;

    .line 307
    return-void
.end method
