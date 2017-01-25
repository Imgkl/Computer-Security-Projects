.class public Lcom/genie_connect/common/db/model/PermissionGroup;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/PermissionGroup$Properties;,
        Lcom/genie_connect/common/db/model/PermissionGroup$PermissionGroupSyncableFields;,
        Lcom/genie_connect/common/db/model/PermissionGroup$PermissionSetSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "permissiongroups"

.field protected static final PERMISSION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

.field public static final TABLE_NAME:Ljava/lang/String; = "permissionGroups"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public anonymousPermissionSet_canAddToFavourite:Ljava/lang/Boolean;

.field public anonymousPermissionSet_canFavourite:Ljava/lang/Boolean;

.field public anonymousPermissionSet_canOpen:Ljava/lang/Boolean;

.field public anonymousPermissionSet_canView:Ljava/lang/Boolean;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public everyoneElsePermissionSet_canAddToFavourite:Ljava/lang/Boolean;

.field public everyoneElsePermissionSet_canFavourite:Ljava/lang/Boolean;

.field public everyoneElsePermissionSet_canOpen:Ljava/lang/Boolean;

.field public everyoneElsePermissionSet_canView:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public permissionFailureMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x0

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v3, "name"

    sget-object v4, Lcom/genie_connect/common/db/model/PermissionGroup;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "canOpen"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "canView"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "canFavourite"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "canAddToFavourite"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/model/PermissionGroup;->PERMISSION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "anonymousPermissionSet_canFavourite"    # Ljava/lang/Boolean;
    .param p4, "anonymousPermissionSet_canAddToFavourite"    # Ljava/lang/Boolean;
    .param p5, "anonymousPermissionSet_canOpen"    # Ljava/lang/Boolean;
    .param p6, "anonymousPermissionSet_canView"    # Ljava/lang/Boolean;
    .param p7, "modifiedDate"    # Ljava/util/Date;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "_id"    # Ljava/lang/String;
    .param p10, "createdBy"    # Ljava/lang/String;
    .param p11, "name"    # Ljava/lang/String;
    .param p12, "importBatch"    # Ljava/lang/String;
    .param p13, "createdDate"    # Ljava/util/Date;
    .param p14, "permissionFailureMessage"    # Ljava/lang/String;
    .param p15, "everyoneElsePermissionSet_canFavourite"    # Ljava/lang/Boolean;
    .param p16, "everyoneElsePermissionSet_canAddToFavourite"    # Ljava/lang/Boolean;
    .param p17, "everyoneElsePermissionSet_canOpen"    # Ljava/lang/Boolean;
    .param p18, "everyoneElsePermissionSet_canView"    # Ljava/lang/Boolean;
    .param p19, "importKey"    # Ljava/lang/String;
    .param p20, "_namespace"    # Ljava/lang/String;
    .param p21, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedBy:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->importCameFrom:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 149
    iput-object p4, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 150
    iput-object p5, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canOpen:Ljava/lang/Boolean;

    .line 151
    iput-object p6, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canView:Ljava/lang/Boolean;

    .line 152
    iput-object p7, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedDate:Ljava/util/Date;

    .line 153
    iput-object p8, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 154
    iput-object p9, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->_id:Ljava/lang/String;

    .line 155
    iput-object p10, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->createdBy:Ljava/lang/String;

    .line 156
    iput-object p11, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->name:Ljava/lang/String;

    .line 157
    iput-object p12, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->importBatch:Ljava/lang/String;

    .line 158
    iput-object p13, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->createdDate:Ljava/util/Date;

    .line 159
    iput-object p14, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->permissionFailureMessage:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 161
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 162
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canOpen:Ljava/lang/Boolean;

    .line 163
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canView:Ljava/lang/Boolean;

    .line 164
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->importKey:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->_namespace:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->_dataversion:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 7

    .prologue
    .line 75
    sget-object v0, Lcom/genie_connect/common/db/model/PermissionGroup;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "permissionFailureMessage"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "anonymousPermissionSet"

    sget-object v5, Lcom/genie_connect/common/db/model/PermissionGroup;->PERMISSION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "everyoneElsePermissionSet"

    sget-object v5, Lcom/genie_connect/common/db/model/PermissionGroup;->PERMISSION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    const-string/jumbo v4, "visitorGroupPermissionSets"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->PERMISSIONSET_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    sget-object v6, Lcom/genie_connect/common/db/model/PermissionGroup;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/PermissionGroup;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "permissiongroups"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "permissionGroups"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 134
    return-void
.end method
