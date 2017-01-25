.class public Lcom/genie_connect/android/services/dss/DataSyncService;
.super Lcom/genie_connect/android/services/BaseDataIntentService;
.source "DataSyncService.java"

# interfaces
.implements Lcom/genie_connect/common/services/dss/DataSyncServiceFields;


# static fields
.field public static final ACTION_APPLY:I = 0x4

.field public static final ACTION_CHECK:I = 0x0

.field public static final ACTION_INIT:I = 0x2

.field public static final ACTION_INIT_SPECIFIC_ENTITIES:I = 0x3

.field public static final ACTION_NONE:I = -0x1

.field public static final ACTION_SYNC:I = 0x1

.field private static final BUILD_FLAG_FILE:Ljava/lang/String; = ".data_populated"

.field private static final ENTITIES_TO_INITIALISE:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.eventgenie.android.EXTRA_ACTION"

.field public static final EXTRA_ENTITIES_TO_INITIALISE:Ljava/lang/String; = "com.eventgenie.android.EXTRA_ENTITIES_TO_INITIALISE"

.field public static final EXTRA_IS_BACKGROUND_UPDARE:Ljava/lang/String; = "com.eventgenie.android.IS_BACKGROUND_UPDATE"

.field public static final EXTRA_IS_MULTI_EVENT_SELECT:Ljava/lang/String; = "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

.field public static final EXTRA_VERSION:Ljava/lang/String; = "com.eventgenie.android.EXTRA_VERSION"

.field public static final PROOFER_APP_ID:J = 0x1L


# instance fields
.field private isRunning:Z

.field public mDeltaV2Provider:Lcom/genie_connect/android/services/dss/DeltaV2Provider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->getEntitiesToSync()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/services/dss/DataSyncService;->ENTITIES_TO_INITIALISE:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "Genie-Connect-DSS"

    invoke-direct {p0, v0}, Lcom/genie_connect/android/services/BaseDataIntentService;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning:Z

    .line 119
    return-void
.end method

.method private doLiveUpdate(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "newVersion"    # Ljava/lang/String;
    .param p2, "isBackgroundUpdate"    # Z
    .param p3, "isMultiEventSelect"    # Z

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/genie_connect/android/services/dss/DataSyncService;->ENTITIES_TO_INITIALISE:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/genie_connect/android/services/dss/DataSyncService;->performInitAction([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZ)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    invoke-direct {v1}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static downloadImages(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 398
    new-instance v1, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 399
    .local v1, "loader":Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getArtworkUrlSet()Ljava/util/Set;

    move-result-object v3

    .line 400
    .local v3, "urlSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 401
    .local v2, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: Downloading image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/eventgenie/android/utils/help/UrlUtils;->sanitiseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 404
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getEntitiesToInitialiseArray()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/genie_connect/android/services/dss/DataSyncService;->ENTITIES_TO_INITIALISE:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method private static getEntitiesToSync()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 6

    .prologue
    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 413
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->isLiveSyncable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->isVersioned()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v5
.end method

.method private getLatestDataVersion()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 361
    const-string v3, "2011-01-01T00:00:00Z"

    .line 362
    .local v3, "timestamp":Ljava/lang/String;
    iget-object v4, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getCurrentDataVersion()Lcom/genie_connect/common/services/dss/Version;

    move-result-object v0

    .line 364
    .local v0, "currentVersion":Lcom/genie_connect/common/services/dss/Version;
    iget-object v4, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    move-object v2, v5

    .line 382
    :cond_0
    :goto_0
    return-object v2

    .line 367
    :cond_1
    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    :cond_2
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 373
    .local v1, "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    invoke-virtual {v1, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getLatestDataVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "latestVersionName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS: current_version="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " latest_version="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 378
    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .end local v2    # "latestVersionName":Ljava/lang/String;
    :cond_3
    move-object v2, v5

    .line 382
    goto :goto_0

    .restart local v1    # "downloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .restart local v2    # "latestVersionName":Ljava/lang/String;
    :cond_4
    move-object v4, v2

    .line 375
    goto :goto_1
.end method

.method public static isRunning()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized performApplyAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->hotSwapTempSlaveDatabase()V

    .line 179
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteTempSlaveDatabase()V

    .line 180
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->performPostDeltaApplyJobs(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    invoke-direct {v2}, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;

    invoke-direct {v2, v0}, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private performCheckAction()V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->getLatestDataVersion()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "newVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DSS: posting  DataUpdateAvailableEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;

    invoke-direct {v2, v0}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string v1, "^ DSS: DataUpToDateEvent, because newVersion is NULL"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;

    invoke-direct {v2}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static performFileUpdates(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/android/db/config/AppConfig;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "egdb"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 425
    const-string v2, "^ DSS: performFileUpdates() START"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "res":Z
    const-string v2, "Downloading Navigation"

    invoke-static {p0, v4, v3, v3, v2}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 430
    new-instance v1, Lcom/genie_connect/android/net/updaters/NavigationUpdater;

    invoke-direct {v1, p0, p2}, Lcom/genie_connect/android/net/updaters/NavigationUpdater;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 431
    .local v1, "updater":Lcom/genie_connect/android/net/updaters/BaseUpdater;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/updaters/BaseUpdater;->doUpdate()Z

    move-result v2

    or-int/2addr v0, v2

    .line 433
    const-string v2, "Downloading Offline Feedback"

    invoke-static {p0, v4, v3, v3, v2}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 434
    new-instance v1, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;

    .end local v1    # "updater":Lcom/genie_connect/android/net/updaters/BaseUpdater;
    invoke-direct {v1, p0, p2}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 435
    .restart local v1    # "updater":Lcom/genie_connect/android/net/updaters/BaseUpdater;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/updaters/BaseUpdater;->doUpdate()Z

    move-result v2

    or-int/2addr v0, v2

    .line 437
    const-string v2, "Downloading Image Assets"

    invoke-static {p0, v4, v3, v3, v2}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 438
    invoke-static {p0, p2}, Lcom/genie_connect/android/services/dss/DataSyncService;->downloadImages(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 440
    const-string v2, "Rebuilding Cache"

    invoke-static {p0, v4, v3, v3, v2}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 442
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->initialiseCaches()V

    .line 444
    const-string v2, "^ DSS: performFileUpdates() STOP"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 445
    return v0
.end method

.method private performInitAction([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZ)V
    .locals 20
    .param p1, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "initialVersion"    # Ljava/lang/String;
    .param p3, "isBackgroundUpdate"    # Z
    .param p4, "isMultiEventSelect"    # Z

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    .line 209
    .local v18, "startTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: performInitAction() START \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/dataupdate/InitStartEvent;

    invoke-direct {v5}, Lcom/eventgenie/android/eventbus/events/dataupdate/InitStartEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->clearTemporaryData()V

    .line 213
    const-string v4, "^ DSS: performInitAction() Cleared temporary data"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 215
    if-nez p2, :cond_0

    .line 216
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    sget v4, Lcom/eventgenie/android/R$string;->event_initial_data_version:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/services/dss/DataSyncService;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 221
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v12

    .line 222
    .local v12, "egdb":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    if-eqz p3, :cond_3

    invoke-virtual {v12}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 224
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    const/16 v16, 0x5

    .line 226
    .local v16, "progressMax":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v6, v0}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 228
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v4, v5, v1, v6}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 230
    const/16 v17, 0x4

    .line 232
    .local v17, "resultStatus":I
    move-object/from16 v0, p1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 233
    move-object/from16 v0, p1

    array-length v4, v0

    mul-int/lit8 v16, v4, 0x2

    .line 235
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 237
    new-instance v11, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;

    move/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;-><init>(I)V

    .line 238
    .local v11, "dataInitializer":Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v11, v4, v0, v1, v2}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->initialiseDatabase(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)I

    move-result v17

    .line 240
    packed-switch v17, :pswitch_data_0

    .line 291
    :goto_1
    invoke-virtual {v11}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->unRegisterReceiver()V

    .line 293
    .end local v11    # "dataInitializer":Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-direct {v5, v0, v1}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 295
    const/4 v4, 0x4

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: performInitAction() finished with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;

    invoke-direct {v5}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 303
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyDataVersionUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    .line 307
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v18

    .line 308
    .local v14, "elapsedTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: performInitAction() STOP \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' - Time elapsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v14, v15, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 309
    return-void

    .line 222
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v14    # "elapsedTime":J
    .end local v16    # "progressMax":I
    .end local v17    # "resultStatus":I
    :cond_3
    invoke-virtual {v12}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    goto/16 :goto_0

    .line 244
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "dataInitializer":Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
    .restart local v16    # "progressMax":I
    .restart local v17    # "resultStatus":I
    :pswitch_0
    if-eqz p4, :cond_4

    .line 246
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 250
    :cond_4
    :pswitch_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 253
    :pswitch_2
    new-instance v13, Lcom/genie_connect/common/db/model/App;

    invoke-direct {v13}, Lcom/genie_connect/common/db/model/App;-><init>()V

    .line 254
    .local v13, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    new-instance v4, Lcom/genie_connect/android/platform/DatabaseWrapper;

    invoke-direct {v4, v9}, Lcom/genie_connect/android/platform/DatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v13, v4}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteDeleteAll(Lcom/genie_connect/common/platform/db/IDatabase;)J

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v10

    .line 257
    .local v10, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v10}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->updateCurrentVersion(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 261
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 264
    invoke-virtual {v10}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 269
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v4}, Lcom/genie_connect/android/services/dss/DataSyncService;->performFileUpdates(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/android/db/config/AppConfig;)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/genie_connect/android/db/config/IconManager;->clearIconOverridesCache(Landroid/content/Context;J)V

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->writeBuildInitFlagFile()V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->edit()Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->setDataDownloadRequired(Z)Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/prefs/NamespacedPreferencesEditor;->commit()Z

    .line 284
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/eventgenie/android/EventGenieApplication;->getBeaconIdentifierList(Z)Ljava/util/List;

    .line 285
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/eventgenie/android/EventGenieApplication;->getEventStartStopTime(Z)Landroid/util/Pair;

    .line 288
    const-string v4, "App Init"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/eventgenie/android/push/UrbanAirshipControl;->updateUrbanAirshipAlias(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 299
    .end local v10    # "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    .end local v11    # "dataInitializer":Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
    .end local v13    # "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DSS: performInitAction() finished with status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v5, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    invoke-direct {v5}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;-><init>()V

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 240
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private performInitSpecificEntitiesAction(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 170
    const-string v2, "com.eventgenie.android.EXTRA_ENTITIES_TO_INITIALISE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 171
    .local v1, "objectArray":[Ljava/lang/Object;
    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromArray([Ljava/lang/Object;)[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 172
    .local v0, "entitiesToInit":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS: About to initialise:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->toString([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 173
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4, v4}, Lcom/genie_connect/android/services/dss/DataSyncService;->performInitAction([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZ)V

    .line 174
    return-void
.end method

.method private performOperations()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 130
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning:Z

    .line 131
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    iget-object v6, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 133
    .local v1, "currentIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v7, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;

    invoke-direct {v7}, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;-><init>()V

    invoke-virtual {v6, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 135
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 136
    const-string v6, "com.eventgenie.android.EXTRA_ACTION"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "currentActionType":I
    const-string v6, "com.eventgenie.android.IS_BACKGROUND_UPDATE"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 138
    .local v3, "isBackgroundUpdate":Z
    const-string v6, "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 139
    .local v4, "isMultiEventSelect":Z
    const-string v6, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "newVersion":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 163
    const-string v6, "Wrong action type."

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_0
    const-string v6, "^ DSS : Action ACTION_CHECK"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->performCheckAction()V

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v6, "^ DSS : Action ACTION_SYNC"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v5, v3, v4}, Lcom/genie_connect/android/services/dss/DataSyncService;->performSyncAction(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 151
    :pswitch_2
    const-string v6, "^ DSS : Action ACTION_APPLY"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v5}, Lcom/genie_connect/android/services/dss/DataSyncService;->performApplyAction(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_3
    const-string v6, "^ DSS : Action ACTION_INIT"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 156
    sget-object v6, Lcom/genie_connect/android/services/dss/DataSyncService;->ENTITIES_TO_INITIALISE:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, v6, v5, v3, v4}, Lcom/genie_connect/android/services/dss/DataSyncService;->performInitAction([Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 159
    :pswitch_4
    const-string v6, "^ DSS : Action ACTION_INIT_SPECIFIC_ENTITIES"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v2}, Lcom/genie_connect/android/services/dss/DataSyncService;->performInitSpecificEntitiesAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    .end local v0    # "currentActionType":I
    .end local v1    # "currentIntent":Landroid/content/Intent;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "isBackgroundUpdate":Z
    .end local v4    # "isMultiEventSelect":Z
    .end local v5    # "newVersion":Ljava/lang/String;
    :cond_1
    iput-boolean v8, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning:Z

    .line 167
    return-void

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private performSyncAction(Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "newVersion"    # Ljava/lang/String;
    .param p2, "isBackgroundUpdate"    # Z
    .param p3, "isMultiEventSelect"    # Z

    .prologue
    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ DSS: performSyncAction() START \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 313
    const/4 v3, 0x5

    .line 314
    .local v3, "progressMax":I
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v8, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v3}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 316
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getCurrentDataVersion()Lcom/genie_connect/common/services/dss/Version;

    move-result-object v0

    .line 317
    .local v0, "currentVersion":Lcom/genie_connect/common/services/dss/Version;
    const-string v6, "2001-01-01T00:00:00Z"

    .line 318
    .local v6, "timestamp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getTimestamp()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/genie_connect/common/services/dss/Version;->getTimestamp()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    :cond_0
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->clearTemporaryData()V

    .line 322
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteTempSlaveDatabase()V

    .line 324
    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTempSlaveDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 328
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-virtual {v7, v6, v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadDeltasSince(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/android/net/container/DeltaReturn;

    move-result-object v4

    .line 329
    .local v4, "ret":Lcom/genie_connect/android/net/container/DeltaReturn;
    if-nez v4, :cond_2

    .line 330
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v8, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    invoke-direct {v8}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;-><init>()V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 357
    :goto_1
    return-void

    .line 324
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "ret":Lcom/genie_connect/android/net/container/DeltaReturn;
    :cond_1
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_0

    .line 334
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "ret":Lcom/genie_connect/android/net/container/DeltaReturn;
    :cond_2
    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/DeltaReturn;->getDeltaParserVersion()I

    move-result v2

    .line 335
    .local v2, "parserToUse":I
    const/4 v5, 0x1

    .line 337
    .local v5, "syncResultSuccess":Z
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 338
    const-string v7, "^ DSS: Parser: V2"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 339
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDeltaV2Provider:Lcom/genie_connect/android/services/dss/DeltaV2Provider;

    invoke-virtual {v7, v4, p1, v1}, Lcom/genie_connect/android/services/dss/DeltaV2Provider;->parse(Lcom/genie_connect/android/net/container/DeltaReturn;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    .line 348
    :goto_2
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-virtual {v7}, Lcom/genie_connect/android/net/providers/NetworkPersister;->getNamespace()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/genie_connect/android/net/providers/DeltaUtils;->clearDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Z

    .line 349
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v8, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    invoke-direct {v8, v3, v3}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v7, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 351
    iget-object v8, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mEventBus:Lde/greenrobot/event/EventBus;

    if-eqz v5, :cond_6

    new-instance v7, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;

    invoke-direct {v7}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;-><init>()V

    :goto_3
    invoke-virtual {v8, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 353
    if-nez v5, :cond_3

    .line 354
    iget-object v7, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->mDatastore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteTempSlaveDatabase()V

    .line 356
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SyncResult is OK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_4
    if-nez v2, :cond_5

    .line 341
    const-string v7, "^ DSS: Parser: Live"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/genie_connect/android/services/dss/DataSyncService;->doLiveUpdate(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 344
    :cond_5
    const-string v7, "^ DSS: Parser: WILL NOT PARSE!"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 345
    const/4 v5, 0x0

    goto :goto_2

    .line 351
    :cond_6
    new-instance v7, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    invoke-direct {v7}, Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;-><init>()V

    goto :goto_3
.end method

.method public static sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageType"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 449
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v1, "broadcast":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DSS: Progress Update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 451
    const-string v2, "com.eventgenie.android.BROADCAST_SYNC_PROGRESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.SYNC_PROGRESS"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    const-string v2, "com.eventgenie.android.SYNC_MAX"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string v2, "com.eventgenie.android.SYNC_DESCRIPTION"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "com.eventgenie.android.SYNC_MESSAGE_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 460
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 461
    return-void
.end method

.method private writeBuildInitFlagFile()V
    .locals 4

    .prologue
    .line 386
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data_populated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "^ DSS: ERROR WRITING BUILD FLAG!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 124
    iget-boolean v0, p0, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning:Z

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/DataSyncService;->performOperations()V

    .line 127
    :cond_0
    return-void
.end method
