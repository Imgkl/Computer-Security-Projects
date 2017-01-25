.class public Lcom/genie_connect/android/repository/AgendaItemRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "AgendaItemRepository.java"

# interfaces
.implements Lcom/genie_connect/android/repository/base/FavouriteRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/AgendaItem;",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/genie_connect/android/repository/base/FavouriteRepository;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_FIELD:Ljava/lang/String; = "itemTypes"


# instance fields
.field private final mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

.field private final mContext:Landroid/content/Context;

.field private final mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

.field private final mMeetingsDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Meeting;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;Lcom/genie_connect/android/net/providers/NetworkSender;Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 6
    .param p3, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p4, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p5, "notesRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .param p6, "networkSender"    # Lcom/genie_connect/android/net/providers/NetworkSender;
    .param p7, "loginManager"    # Lcom/genie_connect/android/security/VisitorLoginManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/AgendaItem;",
            "Ljava/lang/Long;",
            ">;",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Meeting;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            "Lcom/genie_connect/android/net/providers/NetworkSender;",
            "Lcom/genie_connect/android/security/VisitorLoginManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 99
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/AgendaItem;Ljava/lang/Long;>;"
    .local p2, "meetingsDao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Meeting;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 101
    iput-object p2, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mMeetingsDao:Lde/greenrobot/dao/Dao;

    .line 102
    iput-object p6, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    .line 103
    iput-object p4, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 104
    iput-object p3, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mContext:Landroid/content/Context;

    .line 105
    iput-object p7, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 106
    return-void
.end method


# virtual methods
.method public canRemoveSessionFromAgenda(J)Z
    .locals 5
    .param p1, "sessionId"    # J

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    .local v0, "isDeletable":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public canRemoveSubsessionFromAgenda(J)Z
    .locals 5
    .param p1, "subsessionId"    # J

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsBoolean(Lde/greenrobot/dao/Property;)Ljava/lang/Boolean;

    move-result-object v0

    .line 246
    .local v0, "isDeletable":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public deleteAdhocAgendaItem(J)V
    .locals 5
    .param p1, "agendaItemId"    # J

    .prologue
    .line 252
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/AgendaItem;

    .line 253
    .local v0, "item":Lcom/genie_connect/common/db/model/AgendaItem;
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v1, v0}, Lde/greenrobot/dao/Dao;->delete(Ljava/lang/Object;)V

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/net/container/NetworkResultStringContent;

    .line 261
    return-void

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The AgendaItem for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null. Won\'t call DAO.delete()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAgendaItemsInInterval(Ljava/util/Date;Ljava/util/Date;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 15
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const-class v7, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    sget-object v8, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7, v8}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Lde/greenrobot/dao/Selectable;

    const/4 v8, 0x0

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_from"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_to"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v10, "session"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "itemTypes"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v10, "permissionGroup"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    const-string v10, "isDeletable"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v10, "EXISTS (SELECT * FROM sessions A WHERE (A.id = id AND T.isWaitlisted = 1 ) )"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v10, v10, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lde/greenrobot/dao/Property;->lt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lde/greenrobot/dao/Property;->gt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    .line 190
    .local v3, "sessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const-class v7, Lcom/genie_connect/common/db/model/Subsession;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    sget-object v8, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7, v8}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const-class v7, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v8, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7, v8}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Lde/greenrobot/dao/Selectable;

    const/4 v8, 0x0

    sget-object v9, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_from"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_to"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v10, "subsession"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "itemTypes"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v10, "permissionGroup"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    const-string v10, "isDeletable"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v10, "EXISTS (SELECT * FROM subsessions A WHERE (A.id = id AND T.isWaitlisted = 1 ) )"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v10, v10, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lde/greenrobot/dao/Property;->lt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lde/greenrobot/dao/Property;->gt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 203
    .local v4, "subsessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Lde/greenrobot/dao/Selectable;

    const/4 v8, 0x0

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_from"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_to"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v10, "adhoc"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "itemTypes"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v10, "-1"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "permissionGroup"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    const-string v10, "isDeletable"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    const-string v10, "isWaitlisted"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lde/greenrobot/dao/Property;->lt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lde/greenrobot/dao/Property;->gt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 214
    .local v1, "adhoc":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    iget-object v6, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mMeetingsDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v6}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const-string v7, "meetings"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->masterTablePrefix(Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Lde/greenrobot/dao/Selectable;

    const/4 v8, 0x0

    sget-object v9, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_from"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v10, "runningTime_to"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Lcom/genie_connect/common/db/model/Meeting$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v10, "meeting"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "itemTypes"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v10, "-1"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "permissionGroup"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Lcom/genie_connect/common/db/model/Meeting$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    const-string v10, "isDeletable"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v10, "0"

    invoke-direct {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v10, "isWaitlisted"

    invoke-virtual {v9, v10}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lde/greenrobot/dao/Property;->lt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lde/greenrobot/dao/Property;->gt(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v10, 0x0

    sget-object v11, Lcom/genie_connect/common/db/model/Meeting$Properties;->Status:Lde/greenrobot/dao/Property;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lde/greenrobot/dao/Property;->in([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 227
    .local v2, "meetings":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Meeting;>;"
    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v5

    .line 230
    .local v5, "union":Lde/greenrobot/dao/query/UnionQueryBuilder;
    new-instance v6, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-virtual {v5}, Lde/greenrobot/dao/query/UnionQueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v7

    invoke-direct {v6, v7}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    return-object v6
.end method

.method public getLinkField(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 430
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_0

    .line 431
    const-string v0, "relatedSession"

    .line 438
    :goto_0
    return-object v0

    .line 434
    :cond_0
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p1, v0, :cond_1

    .line 435
    const-string v0, "relatedSubsession"

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 274
    .local p3, "categoryFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-class v8, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-class v8, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v9, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const/16 v8, 0xf

    new-array v8, v8, [Lde/greenrobot/dao/Selectable;

    const/4 v9, 0x0

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v11, "eventDay"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_from"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_to"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v11, "permissionGroup"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    const-string/jumbo v11, "track"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "(SELECT GROUP_CONCAT(locations,\', \') FROM Sessions_Locations L WHERE L.sessions_id = sessions.Id GROUP BY L.sessions_id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x9

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM favouriteSession FS WHERE FS.Session = T.Id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "1"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSession = T.Id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->HasNote:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xc

    sget-object v10, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    const-string v11, "colour"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xd

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "session"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "itemTypes"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM sessions A WHERE (A.id = sessions.Id AND T.isWaitlisted = 1 ) )"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 297
    .local v4, "sessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 298
    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 301
    :cond_0
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 305
    :cond_1
    const-string v7, "Sessions"

    invoke-virtual {p0, p3, v7}, Lcom/genie_connect/android/repository/AgendaItemRepository;->sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v3

    .line 307
    .local v3, "sessionCategoriesWhere":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    if-eqz v3, :cond_2

    .line 308
    const/4 v7, 0x0

    new-array v7, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v3, v7}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-class v8, Lcom/genie_connect/common/db/model/Subsession;

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    sget-object v9, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-class v8, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v9, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-class v8, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v9, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const/16 v8, 0xf

    new-array v8, v8, [Lde/greenrobot/dao/Selectable;

    const/4 v9, 0x0

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v11, "eventDay"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_from"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_to"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v11, "permissionGroup"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    const-string/jumbo v11, "track"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "(SELECT GROUP_CONCAT(locations,\', \') FROM Subsessions_Locations L WHERE L.subsessions_id = subsessions.Id GROUP BY L.subsessions_id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x9

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM favouriteSubSession FSS WHERE FSS.subsession = T.Id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "1"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Subsession$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSubSession = T.Id)"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Subsession$Properties;->HasNote:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xc

    sget-object v10, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    const-string v11, "colour"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xd

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "subsession"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "itemTypes"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "EXISTS (SELECT * FROM subsessions A WHERE (A.id = subsessions.Id AND T.isWaitlisted = 1 ) )"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    .line 337
    .local v6, "subsessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 338
    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    .line 341
    :cond_3
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 342
    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    .line 345
    :cond_4
    const-string v7, "Sessions"

    invoke-virtual {p0, p3, v7}, Lcom/genie_connect/android/repository/AgendaItemRepository;->sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v5

    .line 347
    .local v5, "subsessionCategoriesWhere":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    if-eqz v5, :cond_5

    .line 348
    const/4 v7, 0x0

    new-array v7, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v6, v5, v7}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v6

    .line 351
    :cond_5
    invoke-virtual {v4, v6}, Lde/greenrobot/dao/query/QueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v1

    .line 358
    .local v1, "allResults":Lde/greenrobot/dao/query/UnionQueryBuilder;
    if-eqz p2, :cond_6

    const-string v7, "My Ad hoc Meetings"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 360
    :cond_6
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const/16 v8, 0xf

    new-array v8, v8, [Lde/greenrobot/dao/Selectable;

    const/4 v9, 0x0

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v11, "eventDay"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_from"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_to"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "NULL"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "permissionGroup"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "My Ad hoc Meetings"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "track"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, ""

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x9

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->HasNote:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xc

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "#000000"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "colour"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xd

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "adhoc"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "itemTypes"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    const-string v11, "isWaitlisted"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->Type:Lde/greenrobot/dao/Property;

    const-string v9, "adhoc"

    invoke-virtual {v8, v9}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 381
    .local v0, "adhocItems":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 382
    sget-object v7, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 385
    :cond_7
    invoke-virtual {v1, v0}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v1

    .line 390
    .end local v0    # "adhocItems":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/AgendaItem;>;"
    :cond_8
    if-eqz p2, :cond_9

    const-string v7, "My Meetings"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 392
    :cond_9
    iget-object v7, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mMeetingsDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v7}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const/16 v8, 0xf

    new-array v8, v8, [Lde/greenrobot/dao/Selectable;

    const/4 v9, 0x0

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v11, "_id"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v11, "eventDay"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_from"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v11, "runningTime_to"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "NULL"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "permissionGroup"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "My Meetings"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "track"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    sget-object v10, Lcom/genie_connect/common/db/model/Meeting$Properties;->Location:Lde/greenrobot/dao/Property;

    aput-object v10, v8, v9

    const/16 v9, 0x9

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/Session$Properties;->HasNote:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xc

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "#000000"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "colour"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xd

    new-instance v10, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v11, "meeting"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v11, "itemTypes"

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    new-instance v10, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v11, "0"

    invoke-direct {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v11, v11, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Meeting$Properties;->Status:Lde/greenrobot/dao/Property;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lde/greenrobot/dao/Property;->in([Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 415
    .local v2, "meetings":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Meeting;>;"
    if-eqz p1, :cond_a

    .line 416
    sget-object v7, Lcom/genie_connect/common/db/model/Meeting$Properties;->EventDay:Lde/greenrobot/dao/Property;

    invoke-virtual {v7, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 419
    :cond_a
    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/UnionQueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v1

    .line 422
    .end local v2    # "meetings":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/Meeting;>;"
    :cond_b
    const-string v7, "RunningTime_from, Name COLLATE LOCALIZED"

    invoke-virtual {v1, v7}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lde/greenrobot/dao/query/UnionQueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/genie_connect/android/repository/AgendaItemRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    return-object v7
.end method

.method public hasAgendaClash(Ljava/util/Date;Ljava/util/Date;)Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    .locals 8
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getAgendaItemsInInterval(Ljava/util/Date;Ljava/util/Date;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 124
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 126
    iget-object v5, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    .line 128
    .local v4, "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    const-string v5, "isDeletable"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    sget-object v5, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .end local v4    # "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_1
    :goto_0
    return-object v5

    .line 133
    .restart local v4    # "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_2
    if-eqz v4, :cond_0

    .line 134
    :try_start_1
    const-string v5, "id"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 135
    .local v2, "id":Ljava/lang/Long;
    const-string v5, "permissionGroup"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 137
    .local v3, "permissionGroupId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v5, v3}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v1

    .line 139
    .local v1, "group":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v1, :cond_0

    .line 140
    iget-object v5, p0, Lcom/genie_connect/android/repository/AgendaItemRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v5, v4, v6, v1}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    sget-object v5, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    goto :goto_0

    .line 149
    .end local v1    # "group":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "permissionGroupId":Ljava/lang/Long;
    :cond_3
    :try_start_2
    sget-object v5, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->Clash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    goto :goto_0

    .line 152
    .end local v4    # "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_4
    :try_start_3
    sget-object v5, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 156
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    :cond_5
    throw v5
.end method

.method public isFavourited(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/Long;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

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

.method public isSessionOnWaitList(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/Long;

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method

.method public isSubSessionOnWaitList(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "subSessionId"    # Ljava/lang/Long;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method
