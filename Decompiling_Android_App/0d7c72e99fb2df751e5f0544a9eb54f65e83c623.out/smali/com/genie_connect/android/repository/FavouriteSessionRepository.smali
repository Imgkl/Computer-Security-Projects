.class public Lcom/genie_connect/android/repository/FavouriteSessionRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "FavouriteSessionRepository.java"

# interfaces
.implements Lcom/genie_connect/android/repository/base/BookmarkRepository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/FavouriteSession;",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/genie_connect/android/repository/base/BookmarkRepository;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_FIELD:Ljava/lang/String; = "itemTypes"


# instance fields
.field mFavouriteSubSessionDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteSubSession;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;)V
    .locals 6
    .param p3, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p4, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/FavouriteSession;",
            "Ljava/lang/Long;",
            ">;",
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
    .line 51
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/FavouriteSession;Ljava/lang/Long;>;"
    .local p2, "favouriteSubSessionDao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/FavouriteSubSession;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 53
    iput-object p2, p0, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->mFavouriteSubSessionDao:Lde/greenrobot/dao/Dao;

    .line 54
    return-void
.end method

.method public static dumpCursorToLog(Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 7
    .param p0, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 134
    const-string v6, "++++++++++ START DUMP CURSOS ++++++++++"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 136
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->getColumnCount()I

    move-result v0

    .line 139
    .local v0, "columnCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v6, "\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 153
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const-string v6, "\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 157
    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->getType(I)I

    move-result v4

    .line 158
    .local v4, "type":I
    invoke-interface {p0, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v6, "\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v4    # "type":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 168
    invoke-interface {p0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    .end local v0    # "columnCount":I
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v6, "++++++++++ END DUMP CURSOS ++++++++++"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 174
    return-void
.end method


# virtual methods
.method public getLinkField(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 63
    const-string v0, "session"

    return-object v0
.end method

.method public getMyBookmarks()Luk/co/alt236/easycursor/EasyCursor;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/FavouriteSession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const/16 v4, 0xe

    new-array v4, v4, [Lde/greenrobot/dao/Selectable;

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v6, "eventDay"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v11

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v6, "runningTime_from"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v7, "runningTime_to"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v7, "permissionGroup"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    const-string/jumbo v7, "track"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM AgendaItems AI WHERE AI.relatedSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "1"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v7, v7, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->HasNote:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "(SELECT GROUP_CONCAT(locations,\', \') FROM Sessions_Locations L WHERE L.sessions_id = sessions.Id GROUP BY L.sessions_id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    const-string v7, "colour"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-instance v6, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v7, "session"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v7, "itemTypes"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    .line 96
    .local v1, "sessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/FavouriteSession;>;"
    iget-object v3, p0, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->mFavouriteSubSessionDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v3}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Subsession;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/FavouriteSubSession$Properties;->Subsession:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Session$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const-class v4, Lcom/genie_connect/common/db/model/Track;

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    sget-object v5, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    const/16 v4, 0xe

    new-array v4, v4, [Lde/greenrobot/dao/Selectable;

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v10

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    const-string v6, "eventDay"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v11

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    const-string v6, "runningTime_from"

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x5

    sget-object v6, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    const-string v7, "runningTime_to"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    const-string v7, "permissionGroup"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/genie_connect/common/db/model/Session$Properties;->Track:Lde/greenrobot/dao/Property;

    const-string/jumbo v7, "track"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM AgendaItems AI WHERE AI.relatedSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "1"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    iget-object v7, v7, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "EXISTS (SELECT * FROM Notes N WHERE N.relatedSubSession = T.Id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession$Properties;->HasNote:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lde/greenrobot/dao/selectable/SqlSelectable;

    const-string v7, "(SELECT GROUP_CONCAT(locations,\', \') FROM subsessions_locations SL WHERE SL.subsessions_id = subsessions.Id GROUP BY SL.subsessions_id)"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    const-string v7, "colour"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/Property;->as(Ljava/lang/String;)Lde/greenrobot/dao/Selectable;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    new-instance v6, Lde/greenrobot/dao/selectable/StringSelectable;

    const-string v7, "subsession"

    invoke-direct {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;-><init>(Ljava/lang/String;)V

    const-string v7, "itemTypes"

    invoke-virtual {v6, v7}, Lde/greenrobot/dao/selectable/StringSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/StringSelectable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v4

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v4, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 118
    .local v2, "subsessions":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<Lcom/genie_connect/common/db/model/FavouriteSubSession;>;"
    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->union(Lde/greenrobot/dao/query/QueryBuilder;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v0

    .line 127
    .local v0, "allResults":Lde/greenrobot/dao/query/UnionQueryBuilder;
    const-string v3, "RunningTime_from, Name COLLATE LOCALIZED"

    invoke-virtual {v0, v3}, Lde/greenrobot/dao/query/UnionQueryBuilder;->orderRaw(Ljava/lang/String;)Lde/greenrobot/dao/query/UnionQueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/UnionQueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public isBookmarked(Ljava/lang/Long;)Z
    .locals 3
    .param p1, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/FavouriteSessionRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/FavouriteSession$Properties;->Session:Lde/greenrobot/dao/Property;

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
