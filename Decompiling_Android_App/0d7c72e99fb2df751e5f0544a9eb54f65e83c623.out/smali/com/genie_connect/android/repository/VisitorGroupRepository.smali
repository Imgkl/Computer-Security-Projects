.class public Lcom/genie_connect/android/repository/VisitorGroupRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "VisitorGroupRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/VisitorGroup;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/VisitorGroup;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/VisitorGroup;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 31
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAllViewRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "viewingVisitorGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/utils/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "visitorGroups_viewingRestrictions"

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v2

    const-string/jumbo v3, "visitorgroups_name"

    sget-object v4, Lcom/genie_connect/common/db/model/VisitorGroup$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "viewingRestrictions_visitorGroup"

    aput-object v4, v3, v5

    const-string/jumbo v4, "viewingRestrictions_visitorAttribute"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/VisitorGroup$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/utils/Pair<Ljava/lang/String;Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Lcom/genie_connect/common/utils/Pair;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/genie_connect/common/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method public getViewingRestrictions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "viewingVisitorGroup"    # Ljava/lang/String;
    .param p2, "viewedVisitorGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    const-string/jumbo v5, "visitorGroups_viewingRestrictions"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v4

    const-string/jumbo v5, "visitorgroups_name"

    sget-object v6, Lcom/genie_connect/common/db/model/VisitorGroup$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v5, v6}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/model/VisitorGroup$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v5

    new-instance v6, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string/jumbo v7, "viewingRestrictions_visitorGroup = \'%s\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-array v7, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v5, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    const-string/jumbo v5, "viewingRestrictions_visitorAttribute"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->listOfFieldAsString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 52
    .local v2, "restrictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v3, "toReturn":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "restriction":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_0
    return-object v3
.end method
