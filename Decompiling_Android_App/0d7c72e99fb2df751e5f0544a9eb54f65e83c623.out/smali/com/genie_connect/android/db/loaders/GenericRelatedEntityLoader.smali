.class public Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "GenericRelatedEntityLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader$1;
    }
.end annotation


# instance fields
.field private mParentId:Ljava/lang/Long;

.field private mParentType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/Long;
    .param p3, "parentType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentId:Ljava/lang/Long;

    .line 69
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 70
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 71
    return-void
.end method

.method private getOrderByPropertyForEntity()[Lde/greenrobot/dao/Property;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    sget-object v0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    new-array v0, v3, [Lde/greenrobot/dao/Property;

    sget-object v1, Lcom/genie_connect/common/db/model/Product$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v1, v0, v2

    goto :goto_0

    .line 98
    :pswitch_1
    new-array v0, v3, [Lde/greenrobot/dao/Property;

    sget-object v1, Lcom/genie_connect/common/db/model/Downloadable$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v1, v0, v2

    goto :goto_0

    .line 100
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Lde/greenrobot/dao/Property;

    sget-object v1, Lcom/genie_connect/common/db/model/Subsession$Properties;->Priority:Lde/greenrobot/dao/Property;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v2, v0, v1

    goto :goto_0

    .line 102
    :pswitch_3
    new-array v0, v3, [Lde/greenrobot/dao/Property;

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$Properties;->LastNames:Lde/greenrobot/dao/Property;

    aput-object v1, v0, v2

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 76
    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {v3}, Lcom/genie_connect/android/repository/RepositoryLocator;->getRepositoryForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/repository/base/BaseRepository;

    move-result-object v1

    .line 79
    .local v1, "repo":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<**>;"
    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v3, v4, :cond_0

    move-object v2, v1

    .line 80
    check-cast v2, Lcom/genie_connect/android/repository/SessionRepository;

    .line 82
    .local v2, "sessionRepo":Lcom/genie_connect/android/repository/SessionRepository;
    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/repository/SessionRepository;->getSessionsForExhibitor(Ljava/lang/Long;)Landroid/database/Cursor;

    move-result-object v3

    .line 89
    .end local v2    # "sessionRepo":Lcom/genie_connect/android/repository/SessionRepository;
    :goto_0
    return-object v3

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mRelatedType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 89
    .local v0, "doPermissionCheck":Z
    :goto_1
    new-instance v3, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    iget-object v4, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentId:Ljava/lang/Long;

    iget-object v5, p0, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->mParentType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;->getOrderByPropertyForEntity()[Lde/greenrobot/dao/Property;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v0, v6}, Lcom/genie_connect/android/repository/base/BaseRepository;->getCursorForEntitiesRelatedTo(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z[Lde/greenrobot/dao/Property;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    .line 86
    .end local v0    # "doPermissionCheck":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
