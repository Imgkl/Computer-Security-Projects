.class public Lcom/eventgenie/android/EventGenieApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "EventGenieApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;
    }
.end annotation


# static fields
.field private static final LSS_DELAY:I = 0x493e0

.field private static final LSS_FIRST_RUN_DELAY:I = 0x7530

.field private static _instance:Lcom/eventgenie/android/EventGenieApplication;

.field private static beaconUUIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/services/ibeacon/BeaconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static eventDates:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static sActivityVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sInitialisationsComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sObjectGraph:Ldagger/ObjectGraph;

.field private static sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;


# instance fields
.field private mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

.field private mIsPRNGFixesApplied:Z

.field private final mLssRepeatHandler:Landroid/os/Handler;

.field private mTwitterManager:Lcom/eventgenie/android/utils/managers/TwitterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    .line 120
    sput-object v0, Lcom/eventgenie/android/EventGenieApplication;->beaconUUIDList:Ljava/util/List;

    .line 121
    sput-object v0, Lcom/eventgenie/android/EventGenieApplication;->eventDates:Landroid/util/Pair;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/EventGenieApplication;->sActivityVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/eventgenie/android/EventGenieApplication;->sInitialisationsComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mIsPRNGFixesApplied:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mLssRepeatHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/EventGenieApplication;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/EventGenieApplication;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/eventgenie/android/EventGenieApplication;->setupPushMessagingPrefs(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/EventGenieApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/EventGenieApplication;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mLssRepeatHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 103
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->setThreadPolicy()V

    return-void
.end method

.method public static activityPaused()V
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sActivityVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    return-void
.end method

.method public static activityResumed()V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sActivityVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    return-void
.end method

.method public static addToFFQueue(Landroid/content/Context;Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_PAYLOAD"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    const-string v2, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private doInitiatilisations()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 145
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lcom/genie_connect/android/ioc/AndroidModule;

    invoke-direct {v5}, Lcom/genie_connect/android/ioc/AndroidModule;-><init>()V

    aput-object v5, v3, v4

    invoke-static {v3}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v3

    sput-object v3, Lcom/eventgenie/android/EventGenieApplication;->sObjectGraph:Ldagger/ObjectGraph;

    .line 148
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->Logger()Lcom/eventgenie/android/utils/AndroidLogger;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/common/utils/CommonLog;->init(Lcom/genie_connect/common/platform/ILogger;)V

    .line 153
    :try_start_0
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/PRNGFixes;->apply()V

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/eventgenie/android/EventGenieApplication;->mIsPRNGFixesApplied:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->init()V

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/EventGenieApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/EventGenieApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$bool;->development:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/Log;->init(Ljava/lang/String;Z)V

    .line 166
    new-instance v3, Lcom/eventgenie/android/StaticClassKeeper;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/StaticClassKeeper;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/eventgenie/android/EventGenieApplication;->sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;

    .line 168
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconManager;->init(Landroid/content/Context;)V

    .line 169
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    .line 170
    new-instance v3, Lcom/eventgenie/android/utils/managers/TwitterManager;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/utils/managers/TwitterManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eventgenie/android/EventGenieApplication;->mTwitterManager:Lcom/eventgenie/android/utils/managers/TwitterManager;

    .line 172
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 179
    .local v1, "defaultOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 183
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 185
    sget-object v3, Lcom/eventgenie/android/EventGenieApplication;->sInitialisationsComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    return-void

    .line 155
    .end local v0    # "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .end local v1    # "defaultOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP: We were unable to apply the PRNG security fixes! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getAppContext()Lcom/eventgenie/android/EventGenieApplication;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    return-object v0
.end method

.method public static getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/StaticClassKeeper;->getAssetManager()Lcom/eventgenie/android/utils/managers/GenieAssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getBeaconIdentifierList(Z)Ljava/util/List;
    .locals 5
    .param p0, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/services/ibeacon/BeaconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const-class v3, Lcom/eventgenie/android/EventGenieApplication;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/eventgenie/android/EventGenieApplication;->beaconUUIDList:Ljava/util/List;

    if-eqz v2, :cond_0

    if-eqz p0, :cond_2

    .line 390
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/eventgenie/android/EventGenieApplication;->beaconUUIDList:Ljava/util/List;

    .line 391
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getHotspots()Lcom/genie_connect/android/db/access/DbHotspots;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/DbHotspots;->getAllHotspotIdentifiers()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 394
    .local v1, "ec":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 396
    :cond_1
    new-instance v0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;

    const-string v2, "identifier"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "beaconInfo":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    sget-object v2, Lcom/eventgenie/android/EventGenieApplication;->beaconUUIDList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ BLE add Beacon identifier: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 399
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    .end local v0    # "beaconInfo":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    .end local v1    # "ec":Luk/co/alt236/easycursor/EasyCursor;
    :cond_2
    sget-object v2, Lcom/eventgenie/android/EventGenieApplication;->beaconUUIDList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 389
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 2

    .prologue
    .line 437
    const-class v1, Lcom/eventgenie/android/EventGenieApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/StaticClassKeeper;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/StaticClassKeeper;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getEventStartStopTime(Z)Landroid/util/Pair;
    .locals 11
    .param p0, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const-class v8, Lcom/eventgenie/android/EventGenieApplication;

    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/eventgenie/android/EventGenieApplication;->eventDates:Landroid/util/Pair;

    if-eqz v7, :cond_0

    if-eqz p0, :cond_3

    .line 407
    :cond_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEventDaysDb()Lcom/genie_connect/android/db/access/DbEventDays;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventDays()Ljava/util/List;

    move-result-object v1

    .line 409
    .local v1, "days":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 410
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v3, "fromDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v6, "toDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    .line 413
    .local v0, "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 414
    .local v2, "from":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getTo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 415
    .local v5, "to":Ljava/util/Date;
    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 416
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE FROM: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "TO: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    .end local v0    # "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .end local v1    # "days":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    .end local v2    # "from":Ljava/util/Date;
    .end local v3    # "fromDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "to":Ljava/util/Date;
    .end local v6    # "toDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 421
    .restart local v0    # "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .restart local v1    # "days":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    .restart local v2    # "from":Ljava/util/Date;
    .restart local v3    # "fromDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "to":Ljava/util/Date;
    .restart local v6    # "toDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE FROM: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "TO: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " REJECTED!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v0    # "day":Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;
    .end local v2    # "from":Ljava/util/Date;
    .end local v5    # "to":Ljava/util/Date;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 425
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 426
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE FROM FIRST DATE: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ BLE TO LAST DATE: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 429
    new-instance v7, Landroid/util/Pair;

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v7, Lcom/eventgenie/android/EventGenieApplication;->eventDates:Landroid/util/Pair;

    .line 433
    .end local v1    # "days":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    .end local v3    # "fromDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "toDates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    :cond_3
    sget-object v7, Lcom/eventgenie/android/EventGenieApplication;->eventDates:Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v7
.end method

.method public static declared-synchronized getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 2

    .prologue
    .line 445
    const-class v1, Lcom/eventgenie/android/EventGenieApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sStaticKeeper:Lcom/eventgenie/android/StaticClassKeeper;

    invoke-virtual {v0}, Lcom/eventgenie/android/StaticClassKeeper;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getObjectGraph()Ldagger/ObjectGraph;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sObjectGraph:Ldagger/ObjectGraph;

    return-object v0
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sActivityVisible:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isInitialised()Z
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->sInitialisationsComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static setLaxStrictMode()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ APP: Android Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 465
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 468
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 469
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->setThreadPolicy()V

    goto :goto_0

    .line 472
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/eventgenie/android/EventGenieApplication$2;

    invoke-direct {v1}, Lcom/eventgenie/android/EventGenieApplication$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static setThreadPolicy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 483
    const-string v1, "^ APP: Changing strict mode settings"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 484
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 486
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 487
    return-void
.end method

.method private setupAppX()V
    .locals 5

    .prologue
    .line 267
    const-string v3, "^ APPX: Registering"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 272
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/SetupConfig;->getAppXClientId()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "clientId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/SetupConfig;->getAppXSecretKey()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "secretKey":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ APPX: Has ClientId:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ APPX: Has SecretKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->enableLogs()V

    .line 280
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/eventgenie/android/utils/help/appx/AppXWrapper;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private setupLssSchedule()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mLssRepeatHandler:Landroid/os/Handler;

    new-instance v1, Lcom/eventgenie/android/EventGenieApplication$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/EventGenieApplication$1;-><init>(Lcom/eventgenie/android/EventGenieApplication;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 296
    return-void
.end method

.method private setupPushMessaging()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 299
    const-string v4, "^ APP: Setting up Push Messaging"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 300
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4, p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 305
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getUrbanAirshipKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    invoke-static {p0}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    .line 307
    .local v2, "options":Lcom/urbanairship/AirshipConfigOptions;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getUrbanAirshipKey()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getUrbanAirshipAppSecret()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, "secret":Ljava/lang/String;
    sget v4, Lcom/eventgenie/android/R$string;->urban_airship_in_production:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/EventGenieApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    .line 313
    if-nez v1, :cond_3

    const-string v4, "AAAAA"

    :goto_0
    iput-object v4, v2, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    .line 314
    if-nez v3, :cond_4

    const-string v4, "AAAAA"

    :goto_1
    iput-object v4, v2, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    .line 316
    if-nez v1, :cond_0

    const-string v1, "AAAAA"

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    iput-object v1, v2, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    .line 317
    if-nez v3, :cond_1

    const-string v3, "AAAAA"

    .end local v3    # "secret":Ljava/lang/String;
    :cond_1
    iput-object v3, v2, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    .line 319
    new-array v4, v7, [Ljava/lang/String;

    sget v5, Lcom/eventgenie/android/R$string;->urban_airship_transport_type:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/EventGenieApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, v2, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    .line 320
    sget v4, Lcom/eventgenie/android/R$string;->urban_airship_gcmSender:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/EventGenieApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    .line 321
    iput-boolean v6, v2, Lcom/urbanairship/AirshipConfigOptions;->autoLaunchApplication:Z

    .line 323
    invoke-static {p0, v2}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    .line 325
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/urbanairship/push/PushManager;->setUserNotificationsEnabled(Z)V

    .line 327
    .end local v2    # "options":Lcom/urbanairship/AirshipConfigOptions;
    :cond_2
    return-void

    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "options":Lcom/urbanairship/AirshipConfigOptions;
    .restart local v3    # "secret":Ljava/lang/String;
    :cond_3
    move-object v4, v1

    .line 313
    goto :goto_0

    :cond_4
    move-object v4, v3

    .line 314
    goto :goto_1
.end method

.method private setupPushMessagingPrefs(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "appPrefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x1

    .line 331
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    .line 332
    .local v0, "cfg":Lcom/genie_connect/android/db/config/AppConfig;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getUrbanAirshipKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    .line 336
    .local v1, "manager":Lcom/urbanairship/push/PushManager;
    const-string v3, "enable_sounds"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/PushManager;->setSoundEnabled(Z)V

    .line 337
    const-string v3, "enable_vibration"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/PushManager;->setVibrateEnabled(Z)V

    .line 339
    const-string v3, "allow_push"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 341
    .local v2, "pushEnabled":Z
    if-eqz v2, :cond_1

    .line 342
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->startUrbanAirship(Landroid/content/Context;)V

    .line 348
    .end local v1    # "manager":Lcom/urbanairship/push/PushManager;
    .end local v2    # "pushEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v1    # "manager":Lcom/urbanairship/push/PushManager;
    .restart local v2    # "pushEnabled":Z
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->stopUrbanAirship(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 2

    .prologue
    .line 138
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public declared-synchronized getTwitterManager()Lcom/eventgenie/android/utils/managers/TwitterManager;
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mTwitterManager:Lcom/eventgenie/android/utils/managers/TwitterManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAppEntityFeatureEnabled(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 515
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    if-eqz v0, :cond_0

    .line 516
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    iget-object v0, v0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    if-eqz v0, :cond_1

    .line 517
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    iget-object v0, v0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/config/AppEntity;->isFeatureEnabled(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    .line 525
    :goto_0
    return v0

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/config/AppEntity;->isFeatureEnabled(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    goto :goto_0

    .line 525
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 199
    sput-object p0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    .line 200
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->start(Landroid/content/Context;)V

    .line 203
    invoke-direct {p0}, Lcom/eventgenie/android/EventGenieApplication;->doInitiatilisations()V

    .line 206
    const-string v3, "codeVersion"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->getCodeVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "isPrngFixesApplied"

    iget-boolean v4, p0, Lcom/eventgenie/android/EventGenieApplication;->mIsPRNGFixesApplied:Z

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 208
    const-string v3, "isGooglePlayInstalled"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isGooglePlayInstalled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 211
    const-string v3, "deviceInfo"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "buildInfo"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->setLaxStrictMode()V

    .line 218
    const-string v3, "codeVersion"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->getCodeVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v3, "isPrngFixesApplied"

    iget-boolean v4, p0, Lcom/eventgenie/android/EventGenieApplication;->mIsPRNGFixesApplied:Z

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 220
    const-string v3, "isGooglePlayInstalled"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isGooglePlayInstalled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    .line 223
    const-string v3, "deviceInfo"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v3, "buildInfo"

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/help/BuildInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Lcom/genie_connect/android/prefs/PreferencesManager;->getGlobalPreferences(Landroid/content/Context;)Lcom/genie_connect/android/prefs/GlobalPreferences;

    move-result-object v2

    .line 228
    .local v2, "prefs":Lcom/genie_connect/android/prefs/GlobalPreferences;
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v3

    invoke-virtual {v2, v5}, Lcom/genie_connect/android/prefs/GlobalPreferences;->getCurrentServerSet(I)I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/genie_connect/android/net/ReachabilityManager;->useServerSet(Landroid/content/Context;I)V

    .line 232
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/genie_connect/android/net/providers/DeltaUtils;->clearDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Z

    .line 234
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/GlobalPreferences;->edit()Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    move-result-object v0

    .line 237
    .local v0, "editor":Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isLocalUUIDSet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 238
    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->createUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setLocalUUID(Ljava/lang/String;)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 239
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setFirstRun(Z)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isLocalUUIDSet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    const-string/jumbo v3, "user_session_uid"

    invoke-static {}, Lcom/genie_connect/android/utils/crypt/EgCrypt;->createUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    .line 251
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->apply()V

    .line 253
    invoke-direct {p0}, Lcom/eventgenie/android/EventGenieApplication;->setupLssSchedule()V

    .line 254
    invoke-direct {p0}, Lcom/eventgenie/android/EventGenieApplication;->setupPushMessaging()V

    .line 256
    invoke-direct {p0}, Lcom/eventgenie/android/EventGenieApplication;->setupAppX()V

    .line 257
    new-instance v3, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/EventGenieApplication$AppSetupTask;-><init>(Lcom/eventgenie/android/EventGenieApplication;)V

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 258
    return-void

    .line 241
    :cond_2
    invoke-virtual {v2}, Lcom/genie_connect/android/prefs/GlobalPreferences;->isFirstRun()Z

    move-result v1

    .line 242
    .local v1, "firstRun":Z
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v0, v5}, Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;->setFirstRun(Z)Lcom/genie_connect/android/prefs/GlobalPreferencesEditor;

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 262
    invoke-static {p0}, Lcom/genie_connect/android/notifications/GenieNotificationsManagerFactory;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/genie_connect/android/notifications/IGenieNotificationsManager;->clearNotifications()V

    .line 263
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 264
    return-void
.end method

.method public setAppEntityFeatures(Lcom/genie_connect/common/platform/json/IJsonObject;)V
    .locals 2
    .param p1, "app"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 499
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lcom/eventgenie/android/EventGenieApplication;->_instance:Lcom/eventgenie/android/EventGenieApplication;

    new-instance v1, Lcom/genie_connect/android/db/config/AppEntity;

    invoke-direct {v1, p1}, Lcom/genie_connect/android/db/config/AppEntity;-><init>(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    iput-object v1, v0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/genie_connect/android/db/config/AppEntity;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/config/AppEntity;-><init>(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    iput-object v0, p0, Lcom/eventgenie/android/EventGenieApplication;->mAppEntityObject:Lcom/genie_connect/android/db/config/AppEntity;

    goto :goto_0
.end method
