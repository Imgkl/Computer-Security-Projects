.class public Lcom/genie_connect/android/repository/InfoPageRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "InfoPageRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/InfoPage;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

.field private mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "loginManager"    # Lcom/genie_connect/android/security/VisitorLoginManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/InfoPage;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/security/VisitorLoginManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/InfoPage;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 36
    iput-object p3, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 37
    iput-object p4, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 38
    return-void
.end method


# virtual methods
.method public hasPermissionToView(J)Z
    .locals 5
    .param p1, "infoPageId"    # J

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/InfoPageRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/InfoPage$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/InfoPage$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;

    move-result-object v1

    .line 50
    .local v1, "permissionGroupId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v2, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    .line 54
    .local v0, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v3, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v2, v3, v4, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v2

    .line 59
    .end local v0    # "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasPermissionToViewAndOpen(J)Z
    .locals 7
    .param p1, "infoPageId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/InfoPageRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/model/InfoPage$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-array v6, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/model/InfoPage$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;

    move-result-object v1

    .line 67
    .local v1, "permissionGroupId":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 69
    iget-object v4, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v4, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    .line 71
    .local v0, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v0, :cond_0

    .line 72
    iget-object v4, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v5, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v5, v6, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v5, p0, Lcom/genie_connect/android/repository/InfoPageRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v5, v6, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    .end local v0    # "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    :cond_1
    move v2, v3

    .line 72
    goto :goto_0
.end method
