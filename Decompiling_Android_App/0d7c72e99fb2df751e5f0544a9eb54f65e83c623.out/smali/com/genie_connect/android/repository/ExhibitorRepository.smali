.class public Lcom/genie_connect/android/repository/ExhibitorRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "ExhibitorRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Exhibitor;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mFavRepo:Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "favRepo"    # Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;
    .param p5, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Exhibitor;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 65
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Exhibitor;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 67
    iput-object p4, p0, Lcom/genie_connect/android/repository/ExhibitorRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;

    .line 68
    return-void
.end method


# virtual methods
.method public exhibitorHasLocations(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/ExhibitorRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const-string v1, "exhibitors_locations"

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v2, "exhibitors_id"

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Id:Lde/greenrobot/dao/Property;

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

.method public getExhibitorLocations(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/ExhibitorRepository;->getLocations(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/genie_connect/android/repository/ExhibitorRepository;->mFavRepo:Lcom/genie_connect/android/repository/FavouriteExhibitorRepository;

    return-object v0
.end method

.method public getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "otherType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 72
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_0

    .line 73
    const-string v0, "exhibitor"

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLocationSelectable()Lde/greenrobot/dao/Selectable;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v1, "(SELECT GROUP_CONCAT(locations,\', \') FROM Exhibitors_Locations L WHERE L.exhibitors_id = T.Id GROUP BY L.exhibitors_id)"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v1, "multilocations"

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v0

    return-object v0
.end method

.method public hasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/ExhibitorRepository;->getNoteRepository()Lcom/genie_connect/android/repository/NoteRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/repository/NoteRepository;->exhibitorHasNote(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public hasRelatedDownloadables(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "exhibitorId"    # Ljava/lang/Long;

    .prologue
    .line 121
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/repository/ExhibitorRepository;->hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public hasRelatedSessions(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "exhibitorId"    # Ljava/lang/Long;

    .prologue
    .line 117
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/repository/ExhibitorRepository;->hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method
