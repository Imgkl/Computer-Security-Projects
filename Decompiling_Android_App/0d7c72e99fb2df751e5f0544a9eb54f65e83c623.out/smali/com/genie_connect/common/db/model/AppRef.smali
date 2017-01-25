.class public Lcom/genie_connect/common/db/model/AppRef;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "AppRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/AppRef$Properties;,
        Lcom/genie_connect/common/db/model/AppRef$AppRefSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "apprefs"

.field public static final TABLE_NAME:Ljava/lang/String; = "appRefs"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public app:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public eventEndDate:Ljava/util/Date;

.field public eventLocation:Ljava/lang/String;

.field public eventStartDate:Ljava/util/Date;

.field public holdingPageHTML:Ljava/lang/String;

.field public icon:Ljava/lang/Long;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isAvailable:Ljava/lang/Boolean;

.field public isFeatured:Ljava/lang/Boolean;

.field public isUsingHoldingPage:Ljava/lang/Boolean;

.field public liveStatus:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public permissionGroup:Ljava/lang/Long;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public strapLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AppRef;->id:Ljava/lang/Long;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "isUsingHoldingPage"    # Ljava/lang/Boolean;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "isFeatured"    # Ljava/lang/Boolean;
    .param p5, "iconUrl"    # Ljava/lang/String;
    .param p6, "eventEndDate"    # Ljava/util/Date;
    .param p7, "isAvailable"    # Ljava/lang/Boolean;
    .param p8, "scheduledDate"    # Ljava/util/Date;
    .param p9, "id"    # Ljava/lang/Long;
    .param p10, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p11, "_id"    # Ljava/lang/String;
    .param p12, "importBatch"    # Ljava/lang/String;
    .param p13, "name"    # Ljava/lang/String;
    .param p14, "createdDate"    # Ljava/util/Date;
    .param p15, "app"    # Ljava/lang/Long;
    .param p16, "icon"    # Ljava/lang/Long;
    .param p17, "scheduledTaskName"    # Ljava/lang/String;
    .param p18, "eventLocation"    # Ljava/lang/String;
    .param p19, "strapLine"    # Ljava/lang/String;
    .param p20, "eventStartDate"    # Ljava/util/Date;
    .param p21, "importCameFrom"    # Ljava/lang/String;
    .param p22, "modifiedDate"    # Ljava/util/Date;
    .param p23, "createdBy"    # Ljava/lang/String;
    .param p24, "permissionGroup"    # Ljava/lang/Long;
    .param p25, "holdingPageHTML"    # Ljava/lang/String;
    .param p26, "importKey"    # Ljava/lang/String;
    .param p27, "_namespace"    # Ljava/lang/String;
    .param p28, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AppRef;->liveStatus:Ljava/lang/Long;

    .line 162
    iput-object p2, p0, Lcom/genie_connect/common/db/model/AppRef;->isUsingHoldingPage:Ljava/lang/Boolean;

    .line 163
    iput-object p3, p0, Lcom/genie_connect/common/db/model/AppRef;->modifiedBy:Ljava/lang/String;

    .line 164
    iput-object p4, p0, Lcom/genie_connect/common/db/model/AppRef;->isFeatured:Ljava/lang/Boolean;

    .line 165
    iput-object p5, p0, Lcom/genie_connect/common/db/model/AppRef;->iconUrl:Ljava/lang/String;

    .line 166
    iput-object p6, p0, Lcom/genie_connect/common/db/model/AppRef;->eventEndDate:Ljava/util/Date;

    .line 167
    iput-object p7, p0, Lcom/genie_connect/common/db/model/AppRef;->isAvailable:Ljava/lang/Boolean;

    .line 168
    iput-object p8, p0, Lcom/genie_connect/common/db/model/AppRef;->scheduledDate:Ljava/util/Date;

    .line 169
    iput-object p9, p0, Lcom/genie_connect/common/db/model/AppRef;->id:Ljava/lang/Long;

    .line 170
    iput-object p10, p0, Lcom/genie_connect/common/db/model/AppRef;->scheduledLiveStatus:Ljava/lang/Long;

    .line 171
    iput-object p11, p0, Lcom/genie_connect/common/db/model/AppRef;->_id:Ljava/lang/String;

    .line 172
    iput-object p12, p0, Lcom/genie_connect/common/db/model/AppRef;->importBatch:Ljava/lang/String;

    .line 173
    iput-object p13, p0, Lcom/genie_connect/common/db/model/AppRef;->name:Ljava/lang/String;

    .line 174
    iput-object p14, p0, Lcom/genie_connect/common/db/model/AppRef;->createdDate:Ljava/util/Date;

    .line 175
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->app:Ljava/lang/Long;

    .line 176
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->icon:Ljava/lang/Long;

    .line 177
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->scheduledTaskName:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->eventLocation:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->strapLine:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->eventStartDate:Ljava/util/Date;

    .line 181
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->importCameFrom:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->modifiedDate:Ljava/util/Date;

    .line 183
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->createdBy:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->permissionGroup:Ljava/lang/Long;

    .line 185
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->holdingPageHTML:Ljava/lang/String;

    .line 186
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->importKey:Ljava/lang/String;

    .line 187
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->_namespace:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->_dataversion:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 72
    sget-object v0, Lcom/genie_connect/common/db/model/AppRef;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "eventEndDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "eventStartDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "eventLocation"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "strapLine"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "iconUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isFeatured"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isAvailable"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "app"

    sget-object v5, Lcom/genie_connect/common/db/model/AppRef;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/AppRef;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "strapLine"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "permissionGroup"

    sget-object v5, Lcom/genie_connect/common/db/model/AppRef;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "categories"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "categories"

    sget-object v7, Lcom/genie_connect/common/db/model/AppRef;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isUsingHoldingPage"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "holdingPageHTML"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/AppRef;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "apprefs"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/genie_connect/common/db/model/AppRef;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "appRefs"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AppRef;->id:Ljava/lang/Long;

    .line 149
    return-void
.end method
