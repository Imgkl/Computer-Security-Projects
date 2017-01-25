.class Lcom/genie_connect/android/services/dss/DeltaV1Provider;
.super Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;
.source "DeltaV1Provider.java"


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/services/dss/DataSyncService;Landroid/app/NotificationManager;)V
    .locals 0
    .param p1, "service"    # Lcom/genie_connect/android/services/dss/DataSyncService;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;-><init>(Lcom/genie_connect/android/services/dss/DataSyncService;Landroid/app/NotificationManager;)V

    .line 66
    return-void
.end method

.method private apply(Ljava/util/List;Ljava/util/List;ILandroid/app/Notification;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I
    .locals 8
    .param p3, "progressMax"    # I
    .param p4, "note"    # Landroid/app/Notification;
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p6, "progressStart"    # I
    .param p7, "dataVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">;I",
            "Landroid/app/Notification;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    .local p2, "deletes":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    move v0, p6

    .line 79
    .local v0, "count":I
    new-instance v3, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v3, p5}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    .local v3, "wrapper":Lcom/genie_connect/android/platform/DatabaseWrapper;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 83
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 84
    .local v1, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-virtual {v1, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeletes(Lcom/genie_connect/common/platform/db/IDatabase;)V

    .line 86
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_0

    .line 87
    iget-object v4, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/eventgenie/android/R$id;->progress:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p3, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 88
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const/16 v5, 0x53a

    invoke-virtual {v4, v5, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 89
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, p3, v6}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->sendSyncUpdateBroacast(IIILjava/lang/String;)V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 95
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/EGEntity;

    .line 96
    .restart local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v1, v3, p7, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 98
    rem-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_2

    .line 99
    iget-object v4, p4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/eventgenie/android/R$id;->progress:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p3, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 100
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const/16 v5, 0x53a

    invoke-virtual {v4, v5, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 101
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, p3, v6}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->sendSyncUpdateBroacast(IIILjava/lang/String;)V

    .line 104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_3
    return v0
.end method

.method private static getEntities(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "deltas"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/genie_connect/common/db/entityfactory/EGEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 203
    .local v10, "types":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "attr":Ljava/lang/String;
    new-instance v11, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v11}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v4

    .line 207
    .local v4, "factoryEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v4, :cond_0

    .line 208
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 210
    .local v7, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 211
    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 212
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 213
    .local v9, "o":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 214
    new-instance v11, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v11}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v12

    invoke-static {v9}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v3

    .line 218
    .local v3, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    if-eqz v3, :cond_2

    .line 219
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .restart local v3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ DSS: +++ unknown entity for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v4    # "factoryEntity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .end local v5    # "i":I
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "length":I
    .end local v9    # "o":Lorg/json/JSONObject;
    .end local v10    # "types":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    .end local v1    # "e1":Lorg/json/JSONException;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public parse(Landroid/app/Notification;Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;I)V
    .locals 28
    .param p1, "note"    # Landroid/app/Notification;
    .param p2, "ret"    # Lcom/genie_connect/android/net/container/DeltaReturn;
    .param p3, "newVersion"    # Ljava/lang/String;
    .param p4, "progressMax"    # I

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v26

    .line 117
    .local v26, "startTime":J
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/net/container/DeltaReturn;->getDeltas()Ljava/util/List;

    move-result-object v15

    .line 118
    .local v15, "allDeltas":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v19

    .line 119
    .local v19, "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual/range {v19 .. v19}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 124
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v16, 0x0

    .line 126
    .local v16, "count":I
    if-nez v15, :cond_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v5, 0x53a

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$string;->notify_fail_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-static {v2, v5, v6, v0}, Lcom/genie_connect/android/services/SyncUpdateCheckHandler;->notifyUpdateAvailable(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 139
    .local v17, "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: Parsing delta \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' which is v"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/FileIoUtil;->readFileAsJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 144
    .local v23, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 145
    .local v24, "jsonDelta":Lorg/json/JSONObject;
    const-string v2, "deletes"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getEntities(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 146
    .local v4, "deletes":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    const-string/jumbo v2, "updates"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getEntities(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 147
    .local v3, "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    add-int v16, v16, v2

    .line 148
    goto/16 :goto_1

    .line 150
    .end local v3    # "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    .end local v4    # "deletes":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    .end local v17    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "jsonArray":Lorg/json/JSONArray;
    .end local v24    # "jsonDelta":Lorg/json/JSONObject;
    :cond_1
    const/16 v24, 0x0

    .line 152
    .restart local v24    # "jsonDelta":Lorg/json/JSONObject;
    if-lez v16, :cond_3

    .line 153
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 155
    move/from16 p4, v16

    .line 156
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/eventgenie/android/R$id;->progress:I

    const/4 v6, 0x1

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v2, v5, v0, v6, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v5, 0x53a

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 159
    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v2, v5, v1, v6}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->sendSyncUpdateBroacast(IIILjava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 163
    const/4 v8, 0x1

    .line 166
    .local v8, "i":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/Pair;

    .line 167
    .restart local v17    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/genie_connect/android/net/providers/DeltaUtils;->getFullDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 168
    .local v18, "deltaPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: Parsing delta "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 169
    invoke-static/range {v18 .. v18}, Lcom/eventgenie/android/utils/FileIoUtil;->readFileAsJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 170
    .restart local v23    # "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 171
    const-string v2, "deletes"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getEntities(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 172
    .restart local v4    # "deletes":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    const-string/jumbo v2, "updates"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getEntities(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    move-object/from16 v2, p0

    move/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    .line 173
    invoke-direct/range {v2 .. v9}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->apply(Ljava/util/List;Ljava/util/List;ILandroid/app/Notification;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v8

    .line 174
    goto :goto_2

    .line 176
    .end local v3    # "updates":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    .end local v4    # "deletes":Ljava/util/List;, "Ljava/util/List<+Lcom/genie_connect/common/db/entityfactory/EGEntity;>;"
    .end local v17    # "deltaPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "deltaPath":Ljava/lang/String;
    .end local v23    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 177
    invoke-static {v7}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v20, v10, v26

    .line 180
    .local v20, "elapsedTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS-DV1: Finished Delta update. Total entities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " estimated Time: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v10

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->performPostDeltaApplyJobs(Landroid/app/NotificationManager;Landroid/app/Notification;Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 184
    .end local v8    # "i":I
    .end local v20    # "elapsedTime":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v20, v10, v26

    .line 185
    .restart local v20    # "elapsedTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS-DV1: Finished Delta update. Total entities: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " estimated Time: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v10

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v9 .. v14}, Lcom/genie_connect/android/services/dss/DeltaV1Provider;->performPostDeltaApplyJobs(Landroid/app/NotificationManager;Landroid/app/Notification;Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
