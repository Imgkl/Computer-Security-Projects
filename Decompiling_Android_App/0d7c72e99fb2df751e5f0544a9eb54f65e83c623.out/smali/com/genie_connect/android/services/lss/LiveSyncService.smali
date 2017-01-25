.class public Lcom/genie_connect/android/services/lss/LiveSyncService;
.super Lcom/genie_connect/android/services/BaseDataIntentService;
.source "LiveSyncService.java"


# static fields
.field public static final EXTRA_ENTITIES_TO_SYNC:Ljava/lang/String; = "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

.field public static final LSS_BROADCAST:Ljava/lang/String; = "LSS_BROADCAST"

.field public static final LSS_ENTITY_KEY:Ljava/lang/String; = "LSS_ENTITY_KEY"

.field public static final LSS_RESULT_KEY:Ljava/lang/String; = "LSS_RESULT_KEY"

.field static final REMINDER_TIME_DEFAULT:I = 0xdbba0

.field public static cleanAllNotifications:Z

.field private static isRunning:Z

.field private static sMapOfIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mUserCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sput-boolean v1, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning:Z

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->sMapOfIntents:Ljava/util/Map;

    .line 267
    sput-boolean v1, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "Genie-Connect-LSS"

    invoke-direct {p0, v0}, Lcom/genie_connect/android/services/BaseDataIntentService;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mUserCancelled:Z

    .line 103
    new-instance v0, Lcom/genie_connect/android/services/lss/LiveSyncService$1;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/services/lss/LiveSyncService$1;-><init>(Lcom/genie_connect/android/services/lss/LiveSyncService;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcom/genie_connect/android/services/lss/LiveSyncService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/android/services/lss/LiveSyncService;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mUserCancelled:Z

    return p1
.end method

.method private doAppRefsSync()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 417
    const-string v1, "^ LSS: starting doAppRefsSync..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 421
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 425
    new-instance v7, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Basic YW5vbnltb3VzOmd1ZXN0"

    iget-object v4, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-virtual {v4}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v4

    invoke-direct {v7, v1, v2, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 426
    .local v7, "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7, v1, v9}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntityCollection(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v6

    .line 428
    .local v6, "appRefsRes":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->getRawArray()Lorg/json/JSONArray;

    move-result-object v3

    .line 431
    .local v3, "appRefs":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 434
    :try_start_0
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->persistJsonArray(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lorg/json/JSONArray;ZLjava/lang/Long;)V

    .line 435
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 450
    .end local v3    # "appRefs":Lorg/json/JSONArray;
    .end local v6    # "appRefsRes":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v7    # "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :goto_0
    return-void

    .line 436
    .restart local v3    # "appRefs":Lorg/json/JSONArray;
    .restart local v6    # "appRefsRes":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .restart local v7    # "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :catch_0
    move-exception v8

    .line 437
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ LSS: doAppRefsSync() Transaction Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 442
    :cond_0
    const-string v1, "^ LSS: doAppRefsSync() Transaction Error: JSONArray invalid"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v3    # "appRefs":Lorg/json/JSONArray;
    :cond_1
    const-string v1, "^ LSS: doAppRefsSync() Transaction Error: NetResult invalid"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v6    # "appRefsRes":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .end local v7    # "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :cond_2
    const-string v1, "^ LSS: UpdateAppRefsTask: database locked!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doEntitySync(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)V
    .locals 8
    .param p1, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "latestArticleUpdate"    # Ljava/lang/String;

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LSS: starting sync entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 456
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 460
    if-nez p2, :cond_0

    .line 461
    :try_start_0
    new-instance v0, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v7

    .line 462
    .local v7, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 465
    .end local v7    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Z)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 466
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 474
    :goto_0
    return-void

    .line 468
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 472
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ LSS: Updating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": database locked!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMapOfIntentsForNotifications(Landroid/content/Context;Landroid/app/AlarmManager;I)Ljava/util/Map;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "reminderTimeInMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v6, "mapOfIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v3

    const-class v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {v3, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    .line 316
    .local v2, "agendaItemRepository":Lcom/genie_connect/android/repository/AgendaItemRepository;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v18

    .line 318
    .local v18, "schedule":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static/range {p1 .. p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v7

    .line 319
    .local v7, "eventTimeZone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 320
    .local v16, "nowMillis":J
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v4, v3

    add-long v8, v16, v4

    .line 322
    .local v8, "now":J
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    :cond_0
    const-string v3, "runningTime_from"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "sessionStartTime":Ljava/lang/String;
    const-string v3, "itemTypes"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, "agendaItemType":Ljava/lang/String;
    const-string v3, "id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 329
    .local v11, "entityId":Ljava/lang/Long;
    sget-object v3, Lcom/genie_connect/common/db/model/Session$Properties;->Location:Lde/greenrobot/dao/Property;

    iget-object v3, v3, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 331
    .local v13, "location":Ljava/lang/String;
    const-string v3, "meeting"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v3

    const-class v4, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {v3, v4}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/genie_connect/android/repository/MeetingRepository;

    .line 333
    .local v15, "meetingRepository":Lcom/genie_connect/android/repository/MeetingRepository;
    invoke-virtual {v15, v11}, Lcom/genie_connect/android/repository/MeetingRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/genie_connect/common/db/model/Meeting;

    .line 335
    .local v14, "byId":Lcom/genie_connect/common/db/model/Meeting;
    iget-object v3, v14, Lcom/genie_connect/common/db/model/Meeting;->status:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v20, 0x2

    cmp-long v3, v4, v20

    if-eqz v3, :cond_1

    iget-object v3, v14, Lcom/genie_connect/common/db/model/Meeting;->status:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v20, 0x5

    cmp-long v3, v4, v20

    if-nez v3, :cond_2

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 336
    invoke-direct/range {v3 .. v13}, Lcom/genie_connect/android/services/lss/LiveSyncService;->setNotification(Landroid/app/AlarmManager;ILjava/util/Map;Ljava/util/TimeZone;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v14    # "byId":Lcom/genie_connect/common/db/model/Meeting;
    .end local v15    # "meetingRepository":Lcom/genie_connect/android/repository/MeetingRepository;
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    .end local v10    # "sessionStartTime":Ljava/lang/String;
    .end local v11    # "entityId":Ljava/lang/Long;
    .end local v12    # "agendaItemType":Ljava/lang/String;
    .end local v13    # "location":Ljava/lang/String;
    :cond_3
    return-object v6

    .line 338
    .restart local v10    # "sessionStartTime":Ljava/lang/String;
    .restart local v11    # "entityId":Ljava/lang/Long;
    .restart local v12    # "agendaItemType":Ljava/lang/String;
    .restart local v13    # "location":Ljava/lang/String;
    :cond_4
    const-string v3, "session"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "subsession"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 341
    invoke-direct/range {v3 .. v13}, Lcom/genie_connect/android/services/lss/LiveSyncService;->setNotification(Landroid/app/AlarmManager;ILjava/util/Map;Ljava/util/TimeZone;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPendingIntentLaunchingNotificationForSession(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/Long;
    .param p2, "agendaItemType"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/genie_connect/android/globalreceivers/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    .local v0, "alarmIntent":Landroid/content/Intent;
    const-string v2, "session_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 406
    const-string v2, "agenda_item_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "location"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 412
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private hasUserCancelled()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mUserCancelled:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 492
    sget-boolean v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning:Z

    return v0
.end method

.method private static notifyActivity(ZLjava/lang/String;)V
    .locals 2
    .param p0, "value"    # Z
    .param p1, "entityName"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "LSS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "LSS_ENTITY_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "LSS_RESULT_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 501
    return-void
.end method

.method private resetNotificationsForSessions()V
    .locals 8

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 278
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    sget-object v5, Lcom/genie_connect/android/services/lss/LiveSyncService;->sMapOfIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 279
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 282
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    :cond_0
    sget-object v5, Lcom/genie_connect/android/services/lss/LiveSyncService;->sMapOfIntents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 284
    sget-boolean v5, Lcom/genie_connect/android/services/lss/LiveSyncService;->cleanAllNotifications:Z

    if-eqz v5, :cond_1

    .line 302
    :goto_1
    return-void

    .line 288
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    .line 289
    .local v1, "dataStore":Lcom/genie_connect/android/db/datastore/Datastore;
    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/FeatureConfig;->getMyEventFeatures()Lcom/genie_connect/android/db/config/features/MyEventFeatures;

    move-result-object v4

    .line 292
    .local v4, "myEventFeatures":Lcom/genie_connect/android/db/config/features/MyEventFeatures;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->isEnableSessionReminder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 295
    sget-object v5, Lcom/genie_connect/android/services/lss/LiveSyncService;->sMapOfIntents:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getSessionReminderTime()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    invoke-direct {p0, v6, v0, v7}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getMapOfIntentsForNotifications(Landroid/content/Context;Landroid/app/AlarmManager;I)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LSS: Number of Alarms for notifications: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/services/lss/LiveSyncService;->sMapOfIntents:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_2
    const-string v5, "^ LSS: The Sessions reminder is not enabled at CMS"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNotification(Landroid/app/AlarmManager;ILjava/util/Map;Ljava/util/TimeZone;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;
    .param p2, "reminderTimeInMs"    # I
    .param p4, "eventTimeZone"    # Ljava/util/TimeZone;
    .param p5, "now"    # J
    .param p7, "sessionStartTime"    # Ljava/lang/String;
    .param p8, "sessionId"    # Ljava/lang/Long;
    .param p9, "agendaItemType"    # Ljava/lang/String;
    .param p10, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlarmManager;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/TimeZone;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, "mapOfIntents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/app/PendingIntent;>;"
    invoke-static/range {p7 .. p7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertSqliteStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 362
    .local v4, "eventStartDate":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    int-to-long v14, v9

    sub-long/2addr v12, v14

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 365
    .local v5, "eventStartDateUTC":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v9, v12, p5

    if-lez v9, :cond_0

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/services/lss/LiveSyncService;->getPendingIntentLaunchingNotificationForSession(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 367
    .local v7, "pendingIntentLaunchingNotificationForSession":Landroid/app/PendingIntent;
    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move/from16 v0, p2

    int-to-long v14, v0

    sub-long/2addr v12, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-lez v9, :cond_1

    .line 372
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move/from16 v0, p2

    int-to-long v14, v0

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v12, v13, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ LSS: Set alarm for id "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " at "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " (ms) "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v12, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " , now: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v12, Ljava/util/Date;

    move-wide/from16 v0, p5

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v7    # "pendingIntentLaunchingNotificationForSession":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v7    # "pendingIntentLaunchingNotificationForSession":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    .line 377
    .local v6, "ex":Ljava/lang/SecurityException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Coud not set alarm for id "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :cond_1
    new-instance v8, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    invoke-direct {v8, v12, v13}, Ljava/util/Random;-><init>(J)V

    .line 381
    .local v8, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v14, v9

    add-long v10, v12, v14

    .line 384
    .local v10, "triggerAt":J
    const/4 v9, 0x1

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ LSS:. Set alarm for id "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " at "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " (ms) "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " , now: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 386
    :catch_1
    move-exception v6

    .line 388
    .restart local v6    # "ex":Ljava/lang/SecurityException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Coud not set alarm for id "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 389
    const/4 v9, 0x5

    const-string v12, "^ LSS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Coud not set alarm for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    sput-boolean v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning:Z

    .line 487
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    invoke-super {p0}, Lcom/genie_connect/android/services/BaseDataIntentService;->onDestroy()V

    .line 489
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/config/AppConfig;->hasEventExpired()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 118
    const-string v20, "^ LSS: LiveSyncService not started as the event has expired"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v20, "^ LSS: LiveSyncService started"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 123
    const/16 v20, 0x1

    sput-boolean v20, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning:Z

    .line 124
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v20, "com.eventgenie.android.BROADCAST_LSS_CANCEL"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/genie_connect/android/prefs/GlobalPreferences;->getCurrentServerSet(I)I

    move-result v6

    .line 130
    .local v6, "currentAppServerSet":I
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/net/ReachabilityManager;->getSelectedServerSet()I

    move-result v7

    .line 131
    .local v7, "currentlySelectedServerSet":I
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/net/ReachabilityManager;->tryCurrentServer()Z

    move-result v17

    .line 132
    .local v17, "ready":Z
    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    .line 134
    .local v5, "correctServerSet":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 136
    .local v4, "b":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_11

    if-eqz v17, :cond_11

    if-eqz v5, :cond_11

    .line 139
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v10, "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 142
    const-string v20, "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 147
    .local v9, "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-eqz v9, :cond_10

    .line 148
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ LSS: Number of things to sync: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v9, v0}, Lcom/genie_connect/android/utils/string/StringUtils;->collectionToCSV(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 152
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 153
    .local v11, "entity":Ljava/lang/String;
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getUdmSyncableEntities()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 154
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 132
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v5    # "correctServerSet":Z
    .end local v9    # "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "entity":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 144
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v5    # "correctServerSet":Z
    .restart local v10    # "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 158
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ LSS: Entities to sync via UDM: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v10, v0}, Lcom/genie_connect/android/utils/string/StringUtils;->collectionToCSV(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 160
    const-string v20, "articles"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 161
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 162
    .local v18, "result":Ljava/lang/Boolean;
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->hasUserCancelled()Z

    move-result v20

    if-nez v20, :cond_b

    .line 164
    const/4 v15, 0x0

    .line 170
    .local v15, "latestArticleUpdate":Ljava/lang/String;
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/genie_connect/android/services/lss/LiveSyncService;->doEntitySync(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)V

    .line 171
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 175
    .end local v15    # "latestArticleUpdate":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const-string v21, "articles"

    invoke-static/range {v20 .. v21}, Lcom/genie_connect/android/services/lss/LiveSyncService;->notifyActivity(ZLjava/lang/String;)V

    .line 178
    .end local v18    # "result":Ljava/lang/Boolean;
    :cond_5
    const-string v20, "apprefs"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 179
    const/16 v18, 0x0

    .line 180
    .local v18, "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->hasUserCancelled()Z

    move-result v20

    if-nez v20, :cond_c

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->doAppRefsSync()V

    .line 182
    const/16 v18, 0x1

    .line 186
    :goto_5
    const-string v20, "apprefs"

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/LiveSyncService;->notifyActivity(ZLjava/lang/String;)V

    .line 189
    .end local v18    # "result":Z
    :cond_6
    const-string/jumbo v20, "visitorgroups"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 190
    const/16 v18, 0x0

    .line 191
    .restart local v18    # "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->hasUserCancelled()Z

    move-result v20

    if-nez v20, :cond_d

    .line 192
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/services/lss/LiveSyncService;->doEntitySync(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)V

    .line 193
    const/16 v18, 0x1

    .line 197
    :goto_6
    const-string/jumbo v20, "visitorgroups"

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/LiveSyncService;->notifyActivity(ZLjava/lang/String;)V

    .line 200
    .end local v18    # "result":Z
    :cond_7
    const-string/jumbo v20, "visitorsurveys"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 201
    const/16 v18, 0x0

    .line 202
    .restart local v18    # "result":Z
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->hasUserCancelled()Z

    move-result v20

    if-nez v20, :cond_e

    .line 203
    sget-object v20, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORSURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/services/lss/LiveSyncService;->doEntitySync(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)V

    .line 204
    const/16 v18, 0x1

    .line 208
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/Datastore;->updateBadgeCount(Landroid/content/Context;)V

    .line 210
    const-string/jumbo v20, "visitorsurveys"

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/LiveSyncService;->notifyActivity(ZLjava/lang/String;)V

    .line 213
    .end local v18    # "result":Z
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->hasUserCancelled()Z

    move-result v20

    if-nez v20, :cond_f

    .line 214
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 215
    new-instance v16, Lcom/genie_connect/android/services/lss/UdmSyncManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/services/lss/UdmSyncManager;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    .line 216
    .local v16, "mSyncHelper":Lcom/genie_connect/android/services/lss/UdmSyncManager;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/genie_connect/android/services/lss/UdmSyncManager;->sync(Ljava/util/Set;)V

    .line 229
    .end local v9    # "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "mSyncHelper":Lcom/genie_connect/android/services/lss/UdmSyncManager;
    :cond_9
    :goto_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/services/lss/LiveSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/genie_connect/android/db/access/Udm;->reload()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :goto_9
    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v19, "updateIntent":Landroid/content/Intent;
    if-eqz v4, :cond_a

    .line 245
    const-string v20, "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

    const-string v21, "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 248
    :cond_a
    invoke-static/range {p0 .. p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 250
    const/16 v20, 0x0

    sput-boolean v20, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning:Z

    .line 251
    const-string v20, "^ LSS: LiveSyncService done"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 253
    const-string v20, "^ LSS: Reset the notifications for sessions"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/lss/LiveSyncService;->resetNotificationsForSessions()V

    .line 257
    const-string v20, "^ LSS: Notifications ready!"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    .end local v19    # "updateIntent":Landroid/content/Intent;
    .restart local v9    # "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .local v18, "result":Ljava/lang/Boolean;
    :cond_b
    const-string v20, "^ LSS: Service run has been canceled - skipping ARTICLES"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 184
    .local v18, "result":Z
    :cond_c
    const-string v20, "^ LSS: Service run has been canceled - skipping APPREFS"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 195
    :cond_d
    const-string v20, "^ LSS: Service run has been canceled - skipping VISITOR GROUPS"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 206
    :cond_e
    const-string v20, "^ LSS: Service run has been canceled - skipping VISITOR SURVEYS"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 219
    .end local v18    # "result":Z
    :cond_f
    const-string v20, "^ LSS: Service run has been canceled - skipping FAVOURITES"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_8

    .line 222
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_10
    const-string v20, "^ LSS: Aborting as the list of syncable entities was null!"

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_8

    .line 225
    .end local v9    # "entitiesToSync":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "entitiesToSyncViaUdm":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "^ LSS: Aborting as there is no valid connectivity - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 231
    :catch_0
    move-exception v12

    .line 232
    .local v12, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v20

    const-string v21, "no such table"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 233
    const-string v20, "^ LSS : Did not found a table : "

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 235
    :cond_12
    throw v12

    .line 237
    .end local v12    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 238
    .local v8, "e":Ljava/lang/Exception;
    throw v8
.end method
