.class public final Lcom/genie_connect/android/db/access/Udm;
.super Ljava/lang/Object;
.source "Udm.java"

# interfaces
.implements Lcom/genie_connect/common/db/DatabaseSymbolConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/Udm$1;,
        Lcom/genie_connect/android/db/access/Udm$NoteAction;,
        Lcom/genie_connect/android/db/access/Udm$FavouriteResult;,
        Lcom/genie_connect/android/db/access/Udm$FavouriteAction;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mFavouriteVisitorsCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameStore:Lcom/genie_connect/android/db/access/GameStore;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    .line 94
    new-instance v0, Lcom/genie_connect/android/db/access/GameStore;

    iget-object v1, p0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/genie_connect/android/db/access/GameStore;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    .line 95
    return-void
.end method

.method public static declared-synchronized clearLocalUserStore(Landroid/content/Context;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    const-class v15, Lcom/genie_connect/android/db/access/Udm;

    monitor-enter v15

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    .line 603
    .local v4, "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    .line 605
    .local v10, "namespace":J
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v14

    const-string/jumbo v16, "visitors"

    move-object/from16 v0, v16

    invoke-static {v10, v11, v0}, Lcom/genie_connect/android/db/caching/PSCGroups;->getGroupForEntity(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->deleteGroup(Ljava/lang/String;)V

    .line 606
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/genie_connect/android/db/access/Udm;->setVisitorFavCache(Ljava/util/Set;)V

    .line 608
    new-instance v9, Lcom/genie_connect/common/db/model/Message;

    invoke-direct {v9}, Lcom/genie_connect/common/db/model/Message;-><init>()V

    .line 609
    .local v9, "message":Lcom/genie_connect/common/db/model/Message;
    new-instance v8, Lcom/genie_connect/common/db/model/Meeting;

    invoke-direct {v8}, Lcom/genie_connect/common/db/model/Meeting;-><init>()V

    .line 610
    .local v8, "meeting":Lcom/genie_connect/common/db/model/Meeting;
    new-instance v12, Lcom/genie_connect/common/db/model/Note;

    invoke-direct {v12}, Lcom/genie_connect/common/db/model/Note;-><init>()V

    .line 612
    .local v12, "note":Lcom/genie_connect/common/db/model/Note;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v13

    .line 614
    .local v13, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    const-string/jumbo v14, "type>?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "1"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v9, v13, v14, v0}, Lcom/genie_connect/common/db/model/Message;->doSQLiteDelete(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 615
    invoke-virtual {v8, v13}, Lcom/genie_connect/common/db/model/Meeting;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 616
    invoke-virtual {v12, v13}, Lcom/genie_connect/common/db/model/Note;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 617
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->clearQueue()I

    .line 619
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouritableEntities()[Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "array":[Ljava/lang/String;
    move-object v2, v3

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v2, v6

    .line 621
    .local v5, "entity":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v14

    invoke-direct {v14, v5}, Lcom/genie_connect/android/db/access/Udm;->favouritesDeleteAll(Ljava/lang/String;)Z

    .line 620
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 624
    .end local v5    # "entity":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getNotableEntities()[Ljava/lang/String;

    move-result-object v3

    .line 625
    move-object v2, v3

    array-length v7, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v5, v2, v6

    .line 626
    .restart local v5    # "entity":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v14

    invoke-direct {v14, v5}, Lcom/genie_connect/android/db/access/Udm;->favouritesDeleteAll(Ljava/lang/String;)Z

    .line 625
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 629
    .end local v5    # "entity":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v14

    invoke-direct {v14}, Lcom/genie_connect/android/db/access/Udm;->notesDeleteAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    monitor-exit v15

    return-void

    .line 602
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "array":[Ljava/lang/String;
    .end local v4    # "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "meeting":Lcom/genie_connect/common/db/model/Meeting;
    .end local v9    # "message":Lcom/genie_connect/common/db/model/Message;
    .end local v10    # "namespace":J
    .end local v12    # "note":Lcom/genie_connect/common/db/model/Note;
    .end local v13    # "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method private favouriteApply(Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 22
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "entityId"    # J
    .param p4, "namespace"    # J
    .param p6, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;
    .param p7, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 196
    const-wide/16 v10, 0x0

    cmp-long v4, p2, v10

    if-gtz v4, :cond_0

    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 276
    :goto_0
    return-object v4

    .line 198
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v17

    .line 202
    .local v17, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_2

    .line 203
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "table":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 209
    .local v15, "key":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v15, :cond_3

    .line 210
    :cond_1
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 206
    .end local v5    # "table":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 213
    .restart local v5    # "table":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "id"

    aput-object v7, v6, v4

    .line 214
    .local v6, "cols":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    .line 215
    .local v8, "arg":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p7

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 218
    .local v12, "c":Landroid/database/Cursor;
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$1;->$SwitchMap$com$genie_connect$android$db$access$Udm$FavouriteAction:[I

    invoke-virtual/range {p6 .. p6}, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 256
    :goto_1
    const-string/jumbo v4, "visitors"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "favouritevisitors"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 257
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    monitor-enter v7

    .line 258
    :try_start_0
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_b

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_5
    :goto_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_6
    new-instance v14, Landroid/content/Intent;

    const-string v4, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 270
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 272
    new-instance v20, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/Udm$FavouriteAction;Ljava/lang/String;)V

    .line 273
    .local v20, "task":Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    .end local v20    # "task":Lcom/eventgenie/android/utils/asynctasks/UdmFavouriteTask;
    :cond_7
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    .line 220
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 221
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 222
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    .line 224
    :cond_8
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v13, "cv":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 227
    const-string v4, "agendaitems"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 230
    sget-object v4, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsDeletable:Lde/greenrobot/dao/Property;

    iget-object v4, v4, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v13, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 233
    :cond_9
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 234
    .local v16, "ns":Ljava/lang/String;
    const-string v4, "_namespace"

    move-object/from16 v0, v16

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v4, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 236
    .local v18, "res":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - fav inserted: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ( "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 237
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 241
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v16    # "ns":Ljava/lang/String;
    .end local v18    # "res":J
    :pswitch_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v7, 0x1

    if-ge v4, v7, :cond_a

    .line 242
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 243
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    .line 246
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - fav deleted: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 248
    invoke-static {v12}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 260
    :cond_b
    :try_start_1
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 263
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private favouritesDeleteAll(Ljava/lang/String;)Z
    .locals 6
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-static {p1}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 285
    .local v3, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 286
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, "table":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 301
    .end local v2    # "table":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 297
    .restart local v2    # "table":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "1"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 299
    .local v1, "res":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ UDM: Deleting Favourites for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 301
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbMisc;->getEventFavCriteriaSQL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private noteApply(JLjava/lang/String;JLjava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 21
    .param p1, "noteId"    # J
    .param p3, "kind"    # Ljava/lang/String;
    .param p4, "entityId"    # J
    .param p6, "contents"    # Ljava/lang/String;
    .param p7, "namespace"    # J
    .param p9, "action"    # Lcom/genie_connect/android/db/access/Udm$NoteAction;
    .param p10, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 509
    const-wide/16 v10, 0x0

    cmp-long v4, p4, v10

    if-gtz v4, :cond_0

    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 564
    :goto_0
    return-object v4

    .line 511
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getNotableTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v17

    .line 516
    .local v17, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_2

    .line 517
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 518
    .local v5, "noteTable":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 523
    .local v12, "assocColumn":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-nez v12, :cond_3

    .line 524
    :cond_1
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 520
    .end local v5    # "noteTable":Ljava/lang/String;
    .end local v12    # "assocColumn":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 527
    .restart local v5    # "noteTable":Ljava/lang/String;
    .restart local v12    # "assocColumn":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$NoteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    move-object/from16 v0, p9

    if-ne v0, v4, :cond_7

    .line 528
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "id"

    aput-object v7, v6, v4

    .line 529
    .local v6, "cols":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    .line 530
    .local v8, "arg":[Ljava/lang/String;
    const-string v7, "id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p10

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 531
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 532
    const-string v4, "id=?"

    move-object/from16 v0, p10

    invoke-virtual {v0, v5, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - note deleted: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 536
    :cond_4
    invoke-static {v13}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 555
    .end local v6    # "cols":[Ljava/lang/String;
    .end local v8    # "arg":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    new-instance v15, Landroid/content/Intent;

    const-string v4, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 558
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 560
    new-instance v20, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p9

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/Udm$NoteAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .local v20, "task":Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 564
    .end local v20    # "task":Lcom/eventgenie/android/utils/asynctasks/UdmNoteTask;
    :cond_6
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    .line 537
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_7
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    move-object/from16 v0, p9

    if-ne v0, v4, :cond_5

    .line 539
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 540
    .local v16, "ns":Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v14, "cv":Landroid/content/ContentValues;
    const-wide/16 v10, -0x1

    cmp-long v4, p1, v10

    if-eqz v4, :cond_8

    .line 543
    const-string v4, "id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    :cond_8
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    const-string v4, "note"

    move-object/from16 v0, p6

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v4, "_namespace"

    move-object/from16 v0, v16

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v5, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 551
    .local v18, "res":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - note inserted: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ( "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private notesDeleteAll()V
    .locals 3

    .prologue
    .line 568
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 569
    .local v0, "notes":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    iget-object v1, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 570
    return-void
.end method


# virtual methods
.method public bookmark(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableOrKind"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "namespace"    # J
    .param p7, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 109
    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-gtz v5, :cond_0

    .line 110
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    .line 178
    :goto_0
    return-object v5

    .line 113
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    .line 117
    .local v15, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    .line 118
    iget-object v3, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "table":Ljava/lang/String;
    iget-object v13, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 124
    .local v13, "key":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-nez v13, :cond_3

    .line 125
    :cond_1
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 121
    .end local v3    # "table":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->ERROR:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 128
    .restart local v3    # "table":Ljava/lang/String;
    .restart local v13    # "key":Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 130
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "id"

    aput-object v7, v4, v5

    .line 131
    .local v4, "cols":[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 132
    .local v6, "arg":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "=?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 135
    .local v10, "c":Landroid/database/Cursor;
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$1;->$SwitchMap$com$genie_connect$android$db$access$Udm$FavouriteAction:[I

    invoke-virtual/range {p7 .. p7}, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 175
    :goto_1
    new-instance v12, Landroid/content/Intent;

    const-string v5, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 178
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 137
    .end local v12    # "intent":Landroid/content/Intent;
    :pswitch_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 138
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 140
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto :goto_0

    .line 142
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v11, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "ns":Ljava/lang/String;
    const-string v5, "_namespace"

    invoke-virtual {v11, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 152
    .local v16, "res":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - bookmarked inserted: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 153
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_1

    .line 157
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v14    # "ns":Ljava/lang/String;
    .end local v16    # "res":J
    :pswitch_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_5

    .line 158
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 160
    sget-object v5, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->UNECESSARY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    goto/16 :goto_0

    .line 163
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "=?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ UDM: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " - bookmark deleted: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 165
    invoke-static {v10}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public favorite(Landroid/content/Context;Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "namespace"    # J
    .param p7, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    move-object v2, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/genie_connect/android/db/access/Udm;->favouriteApply(Ljava/lang/String;JJLcom/genie_connect/android/db/access/Udm$FavouriteAction;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v10

    .line 186
    .local v10, "res":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    sget-object v2, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    if-ne v10, v2, :cond_0

    .line 187
    move-object/from16 v0, p7

    invoke-static {p1, p2, v0, p3, p4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityFavouriteChanged(Landroid/content/Context;Ljava/lang/String;Lcom/genie_connect/android/db/access/Udm$FavouriteAction;J)Z

    .line 192
    :goto_0
    return-object v10

    .line 189
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ UDM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - fav inserted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public favouritesGet(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "namespace"    # J

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/genie_connect/android/db/access/Udm;->favouritesGet(Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public favouritesGet(Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "namespace"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_namespace = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' OR _namespace IS NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "sqlWhere":Ljava/lang/String;
    invoke-static {p1}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 316
    .local v10, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    .line 317
    iget-object v9, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 318
    .local v9, "table":Ljava/lang/String;
    iget-object v8, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 323
    .local v8, "key":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 335
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "table":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 327
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "table":Ljava/lang/String;
    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v1, v4

    .line 329
    .local v1, "cols":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 330
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 331
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 332
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 334
    .local v7, "c":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ UDM: Getting Favourites for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move-object v3, v7

    .line 335
    goto :goto_0
.end method

.method public favouritesUpload(Ljava/lang/String;)Z
    .locals 19
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v18

    .line 340
    .local v18, "tableInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Lcom/genie_connect/android/net/providers/NetworkSender;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 342
    .local v15, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    const/16 v17, 0x0

    .line 343
    .local v17, "table":Ljava/lang/String;
    const/4 v14, 0x0

    .line 345
    .local v14, "key":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 346
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "table":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 347
    .restart local v17    # "table":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v14    # "key":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 352
    .restart local v14    # "key":Ljava/lang/String;
    if-eqz v17, :cond_0

    if-nez v14, :cond_2

    .line 353
    :cond_0
    const/4 v5, 0x0

    .line 375
    :goto_0
    return v5

    .line 349
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 357
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 359
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    .line 360
    .local v4, "sqlSelect":[Ljava/lang/String;
    move-object/from16 v16, v17

    .line 362
    .local v16, "sqlTables":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/access/Udm;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND _id IS NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 365
    .local v12, "c":Landroid/database/Cursor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ UDM: Uploading Favourites for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 367
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    .line 369
    .local v13, "hasData":Z
    :goto_1
    if-eqz v13, :cond_3

    .line 370
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 371
    .local v8, "keyValue":J
    sget-object v10, Lcom/genie_connect/android/db/access/Udm$FavouriteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    const/4 v11, 0x1

    move-object v6, v15

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/genie_connect/android/net/providers/NetworkSender;->postFavourite(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;Z)V

    .line 372
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    .line 373
    goto :goto_1

    .line 374
    .end local v8    # "keyValue":J
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public getGameStore()Lcom/genie_connect/android/db/access/GameStore;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    return-object v0
.end method

.method public getMessageLastSyncedTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/access/DbNetworking;->getLatestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfFav(Lcom/genie_connect/android/db/config/GenieWidget;J)I
    .locals 2
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "namespace"    # J

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/genie_connect/android/db/access/DbMisc;->getNumberOfFav(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/android/db/config/GenieWidget;J)I

    move-result v0

    return v0
.end method

.method public getNumberOfFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "namespace"    # J

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/genie_connect/android/db/access/DbMisc;->getNumberOfFav(Landroid/database/sqlite/SQLiteDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    move-result v0

    return v0
.end method

.method public getNumberOfNotes(J)I
    .locals 1
    .param p1, "namespace"    # J

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/genie_connect/android/db/access/DbMisc;->getNumberOfNotes(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    return v0
.end method

.method public isFavouriteDeletable(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "entityId"    # J

    .prologue
    .line 411
    invoke-static {p1}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getFavouriteTableInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v10

    .line 414
    .local v10, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_0

    .line 415
    const/4 v11, 0x1

    .line 432
    .local v11, "res":Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ UDM: Fav for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' isDeletable? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 433
    return v11

    .line 417
    .end local v11    # "res":Z
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "*"

    aput-object v1, v2, v0

    .line 418
    .local v2, "cols":[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 419
    .local v4, "arg":[Ljava/lang/String;
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 420
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v9, v8}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    .line 422
    .local v9, "easy":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v9}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 423
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "isDeletable"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 429
    .restart local v11    # "res":Z
    :goto_1
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 426
    .end local v11    # "res":Z
    :cond_1
    const/4 v11, 0x1

    .restart local v11    # "res":Z
    goto :goto_1
.end method

.method public isVisitorFavourite(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "visitorId"    # Ljava/lang/Long;

    .prologue
    .line 437
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public meetingsGet(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbNetworking;->getMeetings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messageSetRead(JZ)Z
    .locals 3
    .param p1, "id"    # J
    .param p3, "isRead"    # Z

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/genie_connect/android/db/access/DbNetworking;->setMessageRead(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public messagesGet(Ljava/lang/Long;Ljava/lang/Integer;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/Integer;

    .prologue
    .line 455
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/Udm;->messagesGet(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messagesGet(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "sort"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/genie_connect/android/db/access/DbNetworking;->getMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messagesGetForDashboard()Luk/co/alt236/easycursor/EasyCursor;
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/access/DbNetworking;->getMessagesForDashboard(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messagesGetForInbox(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "userId"    # Ljava/lang/Long;

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbNetworking;->getMessagesForInbox(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messagesGetForOutbox(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "userId"    # Ljava/lang/Long;

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbNetworking;->getSentMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public messagesGetUnreadCount(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbNetworking;->getUnreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public notablesUpload()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 479
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v4, p0, Lcom/genie_connect/android/db/access/Udm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    iget-object v4, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v4

    const-wide/16 v10, -0x1

    invoke-virtual {v4, v10, v11, v6, v6}, Lcom/genie_connect/android/db/access/DbNotes;->getNotes(J[Ljava/lang/String;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 481
    .local v7, "c":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ UDM: Uploading Notes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 483
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 484
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v8

    .line 485
    .local v8, "hasData":Z
    :goto_0
    if-eqz v8, :cond_1

    .line 486
    const-string v4, "entityId"

    invoke-interface {v7, v4}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 487
    .local v2, "entityId":J
    const-string v4, "entity"

    invoke-interface {v7, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "entityName":Ljava/lang/String;
    const-string v4, "note"

    invoke-interface {v7, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "note":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-lez v4, :cond_0

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    sget-object v4, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkSender;->note(Ljava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;Ljava/lang/String;Z)V

    .line 493
    :cond_0
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v8

    .line 494
    goto :goto_0

    .line 495
    .end local v1    # "entityName":Ljava/lang/String;
    .end local v2    # "entityId":J
    .end local v5    # "note":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 496
    return-void
.end method

.method public note(Landroid/content/Context;JLjava/lang/String;JLjava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noteId"    # J
    .param p4, "entityType"    # Ljava/lang/String;
    .param p5, "entityId"    # J
    .param p7, "contents"    # Ljava/lang/String;
    .param p8, "namespace"    # J
    .param p10, "action"    # Lcom/genie_connect/android/db/access/Udm$NoteAction;

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object/from16 v13, p7

    move-wide/from16 v14, p8

    move-object/from16 v16, p10

    invoke-direct/range {v7 .. v17}, Lcom/genie_connect/android/db/access/Udm;->noteApply(JLjava/lang/String;JLjava/lang/String;JLcom/genie_connect/android/db/access/Udm$NoteAction;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    move-result-object v6

    .line 501
    .local v6, "res":Lcom/genie_connect/android/db/access/Udm$FavouriteResult;
    sget-object v7, Lcom/genie_connect/android/db/access/Udm$FavouriteResult;->COMPLETED_SUCCESFULLY:Lcom/genie_connect/android/db/access/Udm$FavouriteResult;

    if-ne v6, v7, :cond_0

    .line 502
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p10

    move-wide/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityNoteChanged(Landroid/content/Context;Ljava/lang/String;Lcom/genie_connect/android/db/access/Udm$NoteAction;J)Z

    .line 505
    :cond_0
    return-object v6
.end method

.method public qrCodeAdd(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "namespace"    # J
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "qrType"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/access/DbQrCodes;->saveQRCode(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public qrCodeAdd(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 9
    .param p1, "namespace"    # J
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "qrType"    # Ljava/lang/String;
    .param p5, "entityType"    # Ljava/lang/String;
    .param p6, "entityId"    # Ljava/lang/Long;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/genie_connect/android/db/access/DbQrCodes;->saveQRCode(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public qrCodeDelete(J)Z
    .locals 1
    .param p1, "qrCodeId"    # J

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/genie_connect/android/db/access/DbQrCodes;->deleteMyQRCode(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method public qrCodesGet(Landroid/content/Context;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "namespace"    # J

    .prologue
    .line 585
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mDatabase:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getQrCodes()Lcom/genie_connect/android/db/access/DbQrCodes;

    move-result-object v0

    invoke-direct {p0}, Lcom/genie_connect/android/db/access/Udm;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/genie_connect/android/db/access/DbQrCodes;->getMyQRCodes(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mGameStore:Lcom/genie_connect/android/db/access/GameStore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GameStore;->reload()V

    .line 590
    return-void
.end method

.method public setVisitorFavCache(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "cacheSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    monitor-enter v1

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 595
    if-eqz p1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/genie_connect/android/db/access/Udm;->mFavouriteVisitorsCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_0
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
