.class public Lcom/genie_connect/android/repository/SubsessionRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "SubsessionRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Subsession;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "subsessionRepository"
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
            "Lcom/genie_connect/common/db/model/Subsession;",
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
    .line 79
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Subsession;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 81
    iput-object p4, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    .line 83
    return-void
.end method


# virtual methods
.method public getAgendaItemsClashingWith(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 5
    .param p1, "subsessionid"    # J

    .prologue
    .line 149
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/repository/SubsessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Subsession;

    move-result-object v0

    .line 151
    .local v0, "subsession":Lcom/genie_connect/common/db/model/Subsession;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    iget-object v2, v0, Lcom/genie_connect/common/db/model/Subsession;->runningTime_from:Ljava/util/Date;

    iget-object v3, v0, Lcom/genie_connect/common/db/model/Subsession;->runningTime_to:Ljava/util/Date;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getAgendaItemsInInterval(Ljava/util/Date;Ljava/util/Date;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBookmarkRepository()Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    return-object v0
.end method

.method public bridge synthetic getBookmarkRepository()Lcom/genie_connect/android/repository/base/BookmarkRepository;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SubsessionRepository;->getBookmarkRepository()Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Subsession;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/genie_connect/android/repository/base/BaseRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/Subsession;

    .line 162
    .local v0, "entity":Lcom/genie_connect/common/db/model/Subsession;
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mBookmarkRepository:Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/repository/FavouriteSubSessionRepository;->isBookmarked(Ljava/lang/Long;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/common/db/model/Subsession;->setIsBookmarked(Ljava/lang/Boolean;)V

    .line 167
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getById(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Long;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/SubsessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Subsession;

    move-result-object v0

    return-object v0
.end method

.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/genie_connect/android/repository/SubsessionRepository;->mFavRepo:Lcom/genie_connect/android/repository/AgendaItemRepository;

    return-object v0
.end method

.method protected getLocationSelectable()Lde/greenrobot/dao/Selectable;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v1, "(SELECT GROUP_CONCAT(locations,\', \') FROM Subsessions_Locations L WHERE L.subsessions_id = T.Id GROUP BY L.subsessions_id)"

    invoke-direct {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v0

    return-object v0
.end method

.method public getSubsessionsForSpeaker(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "speakerId"    # J

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/repository/SubsessionRepository;->getSubsessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/SubsessionRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected getSubsessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 11
    .param p1, "speakerId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<",
            "Lcom/genie_connect/common/db/model/Subsession;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXISTS (SELECT * FROM %s A WHERE A.%S = T.id AND A.speakers_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "existsFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SubsessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Lde/greenrobot/dao/Selectable;

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v7

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v8

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    sget-object v4, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/genie_connect/common/db/model/Subsession$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/genie_connect/common/db/model/Subsession$Properties;->CanWaitlist:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v5, v5, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SubsessionRepository;->getLocationSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SubsessionRepository;->getFavouriteSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SubsessionRepository;->getNotesSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    new-instance v2, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "speakers_keySpeakerAtSubSessions"

    aput-object v4, v3, v6

    const-string v4, "keySpeakerAtSubSessions"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-instance v3, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "speakers_speakerAtSubSessions"

    aput-object v5, v4, v6

    const-string v5, "speakerAtSubSessions"

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-array v4, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v9, [Lde/greenrobot/dao/Property;

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->Priority:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v6

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v7

    sget-object v3, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    return-object v1
.end method

.method public speakerHasSubsessions(J)Z
    .locals 1
    .param p1, "speakerId"    # J

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/repository/SubsessionRepository;->getSubsessionsForSpeakerInternal(J)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method
