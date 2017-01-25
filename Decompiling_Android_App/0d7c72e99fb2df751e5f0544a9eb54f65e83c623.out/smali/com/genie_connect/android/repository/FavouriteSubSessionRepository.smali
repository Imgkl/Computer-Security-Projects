.class public Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "FavouriteSubSessionRepository.java"

# interfaces
.implements Lcom/genie_connect/android/repository/base/BookmarkRepository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/FavouriteSubSession;",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/genie_connect/android/repository/base/BookmarkRepository;"
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
            "Lcom/genie_connect/common/db/model/FavouriteSubSession;",
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
    .line 31
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/FavouriteSubSession;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getLinkField(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 42
    const-string v0, "subsession"

    return-object v0
.end method

.method public isBookmarked(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/FavouriteSubSession$Properties;->Subsession:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method
