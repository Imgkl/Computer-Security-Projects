.class public Lcom/genie_connect/android/repository/TrackRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "TrackRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Track;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAgendaItemDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/AgendaItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubsessionDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Subsession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 6
    .param p5, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p6, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p7, "noteRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Track;",
            "Ljava/lang/Long;",
            ">;",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/AgendaItem;",
            "Ljava/lang/Long;",
            ">;",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Session;",
            "Ljava/lang/Long;",
            ">;",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Subsession;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 42
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Track;Ljava/lang/Long;>;"
    .local p2, "agendaItemDao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/AgendaItem;Ljava/lang/Long;>;"
    .local p3, "sessionDao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Session;Ljava/lang/Long;>;"
    .local p4, "subsessionDao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Subsession;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TRACK:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 44
    iput-object p2, p0, Lcom/genie_connect/android/repository/TrackRepository;->mAgendaItemDao:Lde/greenrobot/dao/Dao;

    .line 45
    iput-object p3, p0, Lcom/genie_connect/android/repository/TrackRepository;->mSessionDao:Lde/greenrobot/dao/Dao;

    .line 46
    iput-object p4, p0, Lcom/genie_connect/android/repository/TrackRepository;->mSubsessionDao:Lde/greenrobot/dao/Dao;

    .line 47
    return-void
.end method


# virtual methods
.method public getTracks(Ljava/lang/String;ZLjava/util/List;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "favourite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "filterCategory":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 65
    iget-object v5, p0, Lcom/genie_connect/android/repository/TrackRepository;->mAgendaItemDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v5}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-instance v7, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v8, "Sessions.Track = T.Name"

    invoke-direct {v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v9, 0x0

    const-string v10, "Sessions"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/repository/TrackRepository;->permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 76
    .local v2, "sessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    iget-object v5, p0, Lcom/genie_connect/android/repository/TrackRepository;->mAgendaItemDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v5}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/model/Subsession;

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-instance v7, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v8, "Sessions.Track = T.Name"

    invoke-direct {v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v9, 0x0

    const-string v10, "Sessions"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/repository/TrackRepository;->permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    .line 110
    .local v3, "subsessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 112
    const-string v5, "S"

    invoke-virtual {p0, p3, v5}, Lcom/genie_connect/android/repository/TrackRepository;->sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v1

    .line 113
    .local v1, "sessionCategoryFilterWhere":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    const/4 v5, 0x0

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v1, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 115
    const-string v5, "Sessions"

    invoke-virtual {p0, p3, v5}, Lcom/genie_connect/android/repository/TrackRepository;->sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v1

    .line 116
    const/4 v5, 0x0

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v1, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 119
    .end local v1    # "sessionCategoryFilterWhere":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/TrackRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Lde/greenrobot/dao/Selectable;

    const/4 v7, 0x0

    new-instance v8, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v9, "0"

    invoke-direct {v8, v9}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string/jumbo v9, "track"

    invoke-virtual {v8, v9}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/genie_connect/common/db/model/Track$Properties;->Priority:Lde/greenrobot/dao/Property;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    new-instance v6, Lde/greenrobot/dao/query/ExistsCondition;

    invoke-direct {v6, v2}, Lde/greenrobot/dao/query/ExistsCondition;-><init>(Lde/greenrobot/dao/query/QueryBuilder;)V

    new-instance v7, Lde/greenrobot/dao/query/ExistsCondition;

    invoke-direct {v7, v3}, Lde/greenrobot/dao/query/ExistsCondition;-><init>(Lde/greenrobot/dao/query/QueryBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 130
    .local v4, "tracks":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Track;>;"
    if-eqz p2, :cond_3

    .line 131
    const-string v5, "SELECT DISTINCT 0 as _id, \'%s\' as track, \'%s\' as colour, %s as priority FROM Meetings"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "My Meetings"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "#000000"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "meetingTrackSql":Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE eventDay = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_1
    invoke-virtual {v4, v0}, Lde/greenrobot/dao/query/QueryBuilder;->union(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v5

    const-string v6, "priority"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/UnionQueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/repository/TrackRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 143
    .end local v0    # "meetingTrackSql":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 89
    .end local v2    # "sessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    .end local v3    # "subsessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    .end local v4    # "tracks":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Track;>;"
    :cond_2
    iget-object v5, p0, Lcom/genie_connect/android/repository/TrackRepository;->mSessionDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v5}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-instance v7, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v8, "S.Track = T.Name"

    invoke-direct {v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v9, 0x0

    const-string v10, "S"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/repository/TrackRepository;->permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 97
    .restart local v2    # "sessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    iget-object v5, p0, Lcom/genie_connect/android/repository/TrackRepository;->mSubsessionDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v5}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const-class v6, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v6

    new-instance v7, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v8, "Sessions.Track = T.Name"

    invoke-direct {v7, v8}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v9, 0x0

    const-string v10, "Sessions"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/repository/TrackRepository;->permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    .restart local v3    # "subsessionsExistWhere":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<*>;"
    goto/16 :goto_0

    .line 143
    .restart local v4    # "tracks":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Track;>;"
    :cond_3
    const-string v5, "priority"

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/repository/TrackRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    goto :goto_1
.end method
