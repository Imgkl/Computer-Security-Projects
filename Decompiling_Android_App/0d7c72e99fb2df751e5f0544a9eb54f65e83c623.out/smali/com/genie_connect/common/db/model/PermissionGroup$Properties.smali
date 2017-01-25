.class public Lcom/genie_connect/common/db/model/PermissionGroup$Properties;
.super Ljava/lang/Object;
.source "PermissionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/PermissionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AnonymousPermissionSet_canAddToFavourite:Lde/greenrobot/dao/Property;

.field public static final AnonymousPermissionSet_canFavourite:Lde/greenrobot/dao/Property;

.field public static final AnonymousPermissionSet_canOpen:Lde/greenrobot/dao/Property;

.field public static final AnonymousPermissionSet_canView:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final EveryoneElsePermissionSet_canAddToFavourite:Lde/greenrobot/dao/Property;

.field public static final EveryoneElsePermissionSet_canFavourite:Lde/greenrobot/dao/Property;

.field public static final EveryoneElsePermissionSet_canOpen:Lde/greenrobot/dao/Property;

.field public static final EveryoneElsePermissionSet_canView:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final PermissionFailureMessage:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 91
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "modifiedBy"

    const-string v5, "modifiedBy"

    const-string v6, "permissionGroups"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 92
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "permissionGroups"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 93
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "anonymousPermissionSet_canFavourite"

    const-string v7, "anonymousPermissionSet_canFavourite"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->AnonymousPermissionSet_canFavourite:Lde/greenrobot/dao/Property;

    .line 94
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "anonymousPermissionSet_canAddToFavourite"

    const-string v7, "anonymousPermissionSet_canAddToFavourite"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->AnonymousPermissionSet_canAddToFavourite:Lde/greenrobot/dao/Property;

    .line 95
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "anonymousPermissionSet_canOpen"

    const-string v7, "anonymousPermissionSet_canOpen"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->AnonymousPermissionSet_canOpen:Lde/greenrobot/dao/Property;

    .line 96
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "anonymousPermissionSet_canView"

    const-string v7, "anonymousPermissionSet_canView"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->AnonymousPermissionSet_canView:Lde/greenrobot/dao/Property;

    .line 97
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 98
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "permissionGroups"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 99
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 100
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 101
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "name"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 102
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 103
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 104
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "permissionFailureMessage"

    const-string v7, "permissionFailureMessage"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->PermissionFailureMessage:Lde/greenrobot/dao/Property;

    .line 105
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "everyoneElsePermissionSet_canFavourite"

    const-string v7, "everyoneElsePermissionSet_canFavourite"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->EveryoneElsePermissionSet_canFavourite:Lde/greenrobot/dao/Property;

    .line 106
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "everyoneElsePermissionSet_canAddToFavourite"

    const-string v7, "everyoneElsePermissionSet_canAddToFavourite"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->EveryoneElsePermissionSet_canAddToFavourite:Lde/greenrobot/dao/Property;

    .line 107
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "everyoneElsePermissionSet_canOpen"

    const-string v7, "everyoneElsePermissionSet_canOpen"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->EveryoneElsePermissionSet_canOpen:Lde/greenrobot/dao/Property;

    .line 108
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "everyoneElsePermissionSet_canView"

    const-string v7, "everyoneElsePermissionSet_canView"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->EveryoneElsePermissionSet_canView:Lde/greenrobot/dao/Property;

    .line 109
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 110
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 111
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "permissionGroups"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/PermissionGroup$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
