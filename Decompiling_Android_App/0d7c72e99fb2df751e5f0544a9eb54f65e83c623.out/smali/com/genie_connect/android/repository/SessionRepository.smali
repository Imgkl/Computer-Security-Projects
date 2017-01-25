.class public Lcom/genie_connect/android/repository/SessionRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "SessionRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Session;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSessionRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "sessionRepository"
    .end annotation
.end field

.field private mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/AgendaItemRepository;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "favRepo"    # Lcom/genie_connect/android/repository/AgendaItemRepository;
    .param p5, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/AgendaItemRepository;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 76
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Session;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 78
    iput-object p4, p0, Lcom/genie_connect/android/repository/SessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    .line 79
    return-void
.end method

.method private getSessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 11
    .param p1, "speakerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXISTS (SELECT * FROM %s A WHERE A.speakers_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND A.%S = T.id)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "existsFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [Lde/greenrobot/dao/Selectable;

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v9

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v10

    const/4 v3, 0x3

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v5, "(SELECT GROUP_CONCAT(locations,\', \') FROM Sessions_Locations L WHERE L.sessions_id = T.Id GROUP BY L.sessions_id)"

    invoke-direct {v4, v5}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v5, "EXISTS (SELECT * FROM AgendaItems A WHERE (A.RelatedSession = T.Id AND A.isWaitlisted = 1 ) )"

    invoke-direct {v4, v5}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v5, v5, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->LeadChair:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->ShareUrl:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->getFavouriteSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->getNotesSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const-class v2, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    new-instance v2, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "speakers_keySpeakerAtSessions"

    aput-object v4, v3, v8

    const-string v4, "keySpeakerAtSessions"

    aput-object v4, v3, v9

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-instance v3, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "speakers_speakerAtSessions"

    aput-object v5, v4, v8

    const-string v5, "speakerAtSessions"

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-array v4, v10, [Lde/greenrobot/dao/query/WhereCondition;

    new-instance v5, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "speakers_leadChairAtSessions"

    aput-object v7, v6, v8

    const-string v7, "leadChairAtSessions"

    aput-object v7, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v8

    new-instance v5, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "speakers_coChairAtSessions"

    aput-object v7, v6, v8

    const-string v7, "coChairAtSessions"

    aput-object v7, v6, v9

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v2

    new-array v3, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v10, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v8

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAgendaItemsClashingWith(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 5
    .param p1, "sessionid"    # J

    .prologue
    .line 253
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/repository/SessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;

    move-result-object v0

    .line 255
    .local v0, "session":Lcom/genie_connect/common/db/model/Session;
    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/genie_connect/android/repository/SessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v2, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    iget-object v3, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_to:Ljava/util/Date;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getAgendaItemsInInterval(Ljava/util/Date;Ljava/util/Date;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/genie_connect/android/repository/base/BaseRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/Session;

    .line 266
    .local v0, "entity":Lcom/genie_connect/common/db/model/Session;
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/genie_connect/android/repository/SessionRepository;->mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/genie_connect/android/repository/SessionRepository;->mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSessionRepository;

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->isBookmarked(Ljava/lang/Long;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/common/db/model/Session;->setIsBookmarked(Ljava/lang/Boolean;)V

    .line 271
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getById(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/SessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;

    move-result-object v0

    return-object v0
.end method

.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/genie_connect/android/repository/SessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    return-object v0
.end method

.method public getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "otherType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 83
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_0

    .line 84
    const-string v0, "session"

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLocationSelectable()Lde/greenrobot/dao/Selectable;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v1, "(SELECT GROUP_CONCAT(locations,\', \') FROM Sessions_Locations L WHERE L.sessions_id = T.Id GROUP BY L.sessions_id)"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v0

    return-object v0
.end method

.method public getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;
    .param p3, "search"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .local p4, "categoryFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const/16 v4, 0xf

    new-array v4, v4, [Lde/greenrobot/dao/Selectable;

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v9

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v10

    const/4 v5, 0x3

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM AgendaItems A WHERE (A.RelatedSession = T.Id AND A.isWaitlisted = 1 ) )"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v7, v7, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->getLocationSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM AgendaItems A WHERE A.RelatedSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    iget-object v7, v7, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM favouriteSession FS WHERE FS.Session = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v7, v7, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->HasNote:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-instance v6, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v7, "session"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v7, "itemTypes"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v10, [Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v8

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 123
    .local v2, "sessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Session;>;"
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 127
    :cond_0
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v3

    new-array v4, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 133
    invoke-static {p3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "searchPattern":Ljava/lang/String;
    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    invoke-virtual {v4, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    new-array v5, v9, [Lde/greenrobot/dao/query/WhereCondition;

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v1}, Lde/greenrobot/dao/Property;->like(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 141
    .end local v1    # "searchPattern":Ljava/lang/String;
    :cond_2
    const-string v3, "T"

    invoke-virtual {p0, p4, v3}, Lcom/genie_connect/android/repository/SessionRepository;->sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v0

    .line 143
    .local v0, "categoriesWhere":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    if-eqz v0, :cond_3

    .line 144
    new-array v3, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v0, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 147
    :cond_3
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/genie_connect/android/repository/SessionRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public getSessionsForExhibitor(Ljava/lang/Long;)Landroid/database/Cursor;
    .locals 8
    .param p1, "exhibitorId"    # Ljava/lang/Long;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->distinct()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const-string v1, "exhibitors_sessions"

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v2, "sessions"

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const-class v1, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exhibitors_sessions.exhibitors_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v2

    new-array v3, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [Lde/greenrobot/dao/Selectable;

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    aput-object v2, v1, v6

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v2, v1, v7

    const/4 v2, 0x3

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v4, "(SELECT GROUP_CONCAT(locations,\', \') FROM Sessions_Locations L WHERE L.sessions_id = T.Id GROUP BY L.sessions_id)"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->LeadChair:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->ShareUrl:Lde/greenrobot/dao/Property;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v4, "EXISTS (SELECT * FROM AgendaItems A WHERE A.relatedSession = T.Id)"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v4, "isFavourite"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v4, "EXISTS (SELECT * FROM AgendaItems A WHERE (A.RelatedSession = T.Id AND A.isWaitlisted = 1 ) )"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v4, v4, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v4, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSession = T.Id)"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v4, "hasNote"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v4, "session"

    invoke-direct {v3, v4}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v4, "itemTypes"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v7, [Lde/greenrobot/dao/Property;

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v2, v1, v5

    sget-object v2, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSessionsForSpeaker(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "speakerId"    # J

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/repository/SessionRepository;->getSessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/SessionRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public hasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SessionRepository;->getNoteRepository()Lcom/genie_connect/android/repository/NoteRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/repository/NoteRepository;->sessionHasNote(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public hasRelatedDownloadables(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/Long;

    .prologue
    .line 239
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/repository/SessionRepository;->hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public speakerHasSessions(J)Z
    .locals 1
    .param p1, "speakerId"    # J

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/repository/SessionRepository;->getSessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method
