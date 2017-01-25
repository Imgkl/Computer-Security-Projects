.class public Lcom/genie_connect/android/repository/TagsV2Repository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "TagsV2Repository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/TagsV2;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/TagsV2;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/TagsV2;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getAllParentTags()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/genie_connect/common/db/model/TagsV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/TagsV2Repository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    new-instance v3, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v4, " T.id in ( select distinct  case when substr(path, 2, instr(trim(path, \'/\'), \'/\')-1) == \'/\' then id else substr(path, 2, instr(trim(path, \'/\'), \'/\')-1)  end as rootParent  from tagsv2  inner join sessions_relatedTags  on relatedTags == id  group by rootParent)"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/TagsV2;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/model/TagsV2;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    return-object v1
.end method

.method public getLevelOneChildTagsFromParent(Lcom/genie_connect/common/db/model/TagsV2;)Ljava/util/List;
    .locals 5
    .param p1, "parent"    # Lcom/genie_connect/common/db/model/TagsV2;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/model/TagsV2;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/TagsV2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/TagsV2Repository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/TagsV2$Properties;->Parent:Lde/greenrobot/dao/Property;

    iget-object v3, p1, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-instance v3, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v4, " T.id in ( select relatedTags from sessions_relatedTags group by relatedTags)"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->build()Lde/greenrobot/dao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/TagsV2;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/TagsV2;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method
