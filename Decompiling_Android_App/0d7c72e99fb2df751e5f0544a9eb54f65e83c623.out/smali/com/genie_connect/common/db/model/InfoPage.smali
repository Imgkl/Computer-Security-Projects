.class public Lcom/genie_connect/common/db/model/InfoPage;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "InfoPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/InfoPage$Properties;,
        Lcom/genie_connect/common/db/model/InfoPage$InfoPageSyncableFields;,
        Lcom/genie_connect/common/db/model/InfoPage$InfoPageTypes;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "infopages"

.field public static final TABLE_NAME:Ljava/lang/String; = "infoPages"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public html:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isRootParent:Ljava/lang/Boolean;

.field public isSecure:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public nativeAppSchemaUri:Ljava/lang/String;

.field public noChildren:Ljava/lang/Long;

.field public openEmbedded:Ljava/lang/Boolean;

.field public openNativeAppSchema:Ljava/lang/Boolean;

.field public parent:Ljava/lang/Long;

.field public permissionGroup:Ljava/lang/Long;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InfoPage;->id:Ljava/lang/Long;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "noChildren"    # Ljava/lang/Long;
    .param p4, "isSecure"    # Ljava/lang/Boolean;
    .param p5, "parent"    # Ljava/lang/Long;
    .param p6, "importCameFrom"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "url"    # Ljava/lang/String;
    .param p9, "modifiedDate"    # Ljava/util/Date;
    .param p10, "id"    # Ljava/lang/Long;
    .param p11, "isRootParent"    # Ljava/lang/Boolean;
    .param p12, "_id"    # Ljava/lang/String;
    .param p13, "createdBy"    # Ljava/lang/String;
    .param p14, "name"    # Ljava/lang/String;
    .param p15, "importBatch"    # Ljava/lang/String;
    .param p16, "html"    # Ljava/lang/String;
    .param p17, "createdDate"    # Ljava/util/Date;
    .param p18, "openEmbedded"    # Ljava/lang/Boolean;
    .param p19, "importKey"    # Ljava/lang/String;
    .param p20, "_namespace"    # Ljava/lang/String;
    .param p21, "_dataversion"    # Ljava/lang/String;
    .param p22, "permissionGroup"    # Ljava/lang/Long;
    .param p23, "openNativeAppSchema"    # Ljava/lang/Boolean;
    .param p24, "nativeAppSchemaUri"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InfoPage;->icon:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/genie_connect/common/db/model/InfoPage;->modifiedBy:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/genie_connect/common/db/model/InfoPage;->noChildren:Ljava/lang/Long;

    .line 150
    iput-object p4, p0, Lcom/genie_connect/common/db/model/InfoPage;->isSecure:Ljava/lang/Boolean;

    .line 151
    iput-object p5, p0, Lcom/genie_connect/common/db/model/InfoPage;->parent:Ljava/lang/Long;

    .line 152
    iput-object p6, p0, Lcom/genie_connect/common/db/model/InfoPage;->importCameFrom:Ljava/lang/String;

    .line 153
    iput-object p7, p0, Lcom/genie_connect/common/db/model/InfoPage;->type:Ljava/lang/String;

    .line 154
    iput-object p8, p0, Lcom/genie_connect/common/db/model/InfoPage;->url:Ljava/lang/String;

    .line 155
    iput-object p9, p0, Lcom/genie_connect/common/db/model/InfoPage;->modifiedDate:Ljava/util/Date;

    .line 156
    iput-object p10, p0, Lcom/genie_connect/common/db/model/InfoPage;->id:Ljava/lang/Long;

    .line 157
    iput-object p11, p0, Lcom/genie_connect/common/db/model/InfoPage;->isRootParent:Ljava/lang/Boolean;

    .line 158
    iput-object p12, p0, Lcom/genie_connect/common/db/model/InfoPage;->_id:Ljava/lang/String;

    .line 159
    iput-object p13, p0, Lcom/genie_connect/common/db/model/InfoPage;->createdBy:Ljava/lang/String;

    .line 160
    iput-object p14, p0, Lcom/genie_connect/common/db/model/InfoPage;->name:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->importBatch:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->html:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->createdDate:Ljava/util/Date;

    .line 164
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->openEmbedded:Ljava/lang/Boolean;

    .line 165
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->importKey:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->_namespace:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->_dataversion:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->permissionGroup:Ljava/lang/Long;

    .line 169
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->openNativeAppSchema:Ljava/lang/Boolean;

    .line 170
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->nativeAppSchemaUri:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 70
    sget-object v0, Lcom/genie_connect/common/db/model/InfoPage;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "html"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "url"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "openNativeAppSchema"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "nativeAppSchemaUri"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "permissionGroup"

    sget-object v5, Lcom/genie_connect/common/db/model/InfoPage;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/InfoPage;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "infopages"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/common/db/model/InfoPage;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "infoPages"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InfoPage;->id:Ljava/lang/Long;

    .line 135
    return-void
.end method
