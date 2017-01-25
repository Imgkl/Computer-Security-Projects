.class public Lcom/urbanairship/UAirship;
.super Ljava/lang/Object;
.source "UAirship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/UAirship$OnReadyCallback;
    }
.end annotation


# static fields
.field public static final AMAZON_PLATFORM:I = 0x1

.field public static final ANDROID_PLATFORM:I = 0x2

.field private static final LIBRARY_VERSION_KEY:Ljava/lang/String; = "com.urbanairship.application.device.LIBRARY_VERSION"

.field private static final PLATFORM_KEY:Ljava/lang/String; = "com.urbanairship.application.device.PLATFORM"

.field private static final airshipLock:Ljava/lang/Object;

.field static application:Landroid/app/Application;

.field static volatile isFlying:Z

.field static volatile isTakingOff:Z

.field private static pendingAirshipRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/CancelableOperation;",
            ">;"
        }
    .end annotation
.end field

.field static sharedAirship:Lcom/urbanairship/UAirship;


# instance fields
.field actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

.field airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

.field analytics:Lcom/urbanairship/analytics/Analytics;

.field applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

.field inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

.field locationManager:Lcom/urbanairship/location/UALocationManager;

.field preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

.field pushManager:Lcom/urbanairship/push/PushManager;

.field richPushManager:Lcom/urbanairship/richpush/RichPushManager;

.field whitelist:Lcom/urbanairship/js/Whitelist;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    .line 79
    sput-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 80
    sput-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p3, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 107
    iput-object p3, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 109
    new-instance v0, Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v0, p1, p3, p2}, Lcom/urbanairship/analytics/Analytics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/AirshipConfigOptions;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    .line 110
    new-instance v0, Lcom/urbanairship/ApplicationMetrics;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/ApplicationMetrics;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    .line 111
    new-instance v0, Lcom/urbanairship/richpush/RichPushManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    .line 112
    new-instance v0, Lcom/urbanairship/location/UALocationManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/location/UALocationManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    .line 113
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {v0, p3}, Lcom/urbanairship/push/iam/InAppMessageManager;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    .line 114
    new-instance v0, Lcom/urbanairship/push/PushManager;

    invoke-direct {v0, p1, p3}, Lcom/urbanairship/push/PushManager;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    .line 115
    invoke-static {p2}, Lcom/urbanairship/js/Whitelist;->createDefaultWhitelist(Lcom/urbanairship/AirshipConfigOptions;)Lcom/urbanairship/js/Whitelist;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    .line 116
    new-instance v0, Lcom/urbanairship/actions/ActionRegistry;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRegistry;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    .line 117
    return-void
.end method

.method static synthetic access$000(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Application;
    .param p1, "x1"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p2, "x2"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lcom/urbanairship/UAirship;->executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    return-void
.end method

.method private static executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 9
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p2, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    const/4 v8, 0x0

    .line 308
    if-nez p1, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object p1

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 313
    sget-object v7, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v7

    .line 314
    const/4 v6, 0x0

    :try_start_0
    sput-boolean v6, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 315
    sget-object v6, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 316
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    const-string v6, "AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 320
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Application configuration is invalid."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 316
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getLoggerLevel()I

    move-result v6

    sput v6, Lcom/urbanairship/Logger;->logLevel:I

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - UALib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    .line 327
    const-string v6, "Airship taking off!"

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Airship log level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/urbanairship/Logger;->logLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 329
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UA Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / App key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Production = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 331
    new-instance v4, Lcom/urbanairship/PreferenceDataStore;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/urbanairship/PreferenceDataStore;-><init>(Landroid/content/Context;)V

    .line 332
    .local v4, "preferenceDataStore":Lcom/urbanairship/PreferenceDataStore;
    invoke-virtual {v4}, Lcom/urbanairship/PreferenceDataStore;->loadAll()V

    .line 334
    new-instance v6, Lcom/urbanairship/UAirship;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p1, v4}, Lcom/urbanairship/UAirship;-><init>(Landroid/content/Context;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/PreferenceDataStore;)V

    sput-object v6, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 336
    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "currentVersion":Ljava/lang/String;
    const-string v6, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-virtual {v4, v6, v8}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "previousVersion":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Urban Airship library changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 345
    :cond_2
    const-string v6, "com.urbanairship.application.device.LIBRARY_VERSION"

    invoke-static {}, Lcom/urbanairship/UAirship;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    iget-boolean v6, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-nez v6, :cond_3

    .line 349
    sget-object v6, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v6}, Lcom/urbanairship/UAirship;->validateManifest()V

    .line 352
    :cond_3
    sget-object v7, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v7

    .line 356
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 357
    const/4 v6, 0x0

    sput-boolean v6, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 360
    sget-object v6, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v6}, Lcom/urbanairship/UAirship;->init()V

    .line 362
    const-string v6, "Airship ready!"

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 365
    if-eqz p2, :cond_4

    .line 366
    sget-object v6, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-interface {p2, v6}, Lcom/urbanairship/UAirship$OnReadyCallback;->onAirshipReady(Lcom/urbanairship/UAirship;)V

    .line 370
    :cond_4
    sget-object v6, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 371
    new-instance v3, Ljava/util/ArrayList;

    sget-object v6, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 372
    .local v3, "pendingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/CancelableOperation;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 373
    .local v2, "pendingRequest":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 381
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pendingRequest":Ljava/lang/Runnable;
    .end local v3    # "pendingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/CancelableOperation;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 375
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pendingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/CancelableOperation;>;"
    :cond_5
    const/4 v6, 0x0

    :try_start_3
    sput-object v6, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    .line 380
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pendingRequests":Ljava/util/List;, "Ljava/util/List<Lcom/urbanairship/CancelableOperation;>;"
    :cond_6
    sget-object v6, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 381
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    return-void
.end method

.method public static getAppIcon()I
    .locals 2

    .prologue
    .line 492
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 493
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 494
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 496
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 476
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TakeOff must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    sget-object v0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 450
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 453
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1

    .line 451
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 452
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "UAirship - Unable to get package info."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 439
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrbanAirshipPermission()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.UA_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string v0, "6.0.1"

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 547
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 548
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 549
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->init()V

    .line 551
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry;->registerDefaultActions()V

    .line 552
    return-void
.end method

.method public static isFlying()Z
    .locals 1

    .prologue
    .line 520
    sget-boolean v0, Lcom/urbanairship/UAirship;->isFlying:Z

    return v0
.end method

.method public static isTakingOff()Z
    .locals 1

    .prologue
    .line 529
    sget-boolean v0, Lcom/urbanairship/UAirship;->isTakingOff:Z

    return v0
.end method

.method static land()V
    .locals 4

    .prologue
    .line 388
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v2

    .line 389
    :try_start_0
    sget-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v1, :cond_0

    .line 390
    monitor-exit v2

    .line 410
    .local v0, "airship":Lcom/urbanairship/UAirship;
    :goto_0
    return-void

    .line 393
    .end local v0    # "airship":Lcom/urbanairship/UAirship;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_1

    .line 394
    invoke-static {}, Lcom/urbanairship/analytics/Analytics;->unregisterLifeCycleCallbacks()V

    .line 395
    invoke-static {}, Lcom/urbanairship/push/iam/InAppMessageManager;->unregisterLifeCycleCallbacks()V

    .line 399
    :cond_1
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    .line 401
    .restart local v0    # "airship":Lcom/urbanairship/UAirship;
    if-eqz v0, :cond_2

    .line 402
    invoke-direct {v0}, Lcom/urbanairship/UAirship;->tearDown()V

    .line 405
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    .line 406
    const/4 v1, 0x0

    sput-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 407
    const/4 v1, 0x0

    sput-object v1, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    .line 408
    const/4 v1, 0x0

    sput-object v1, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 409
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;)Lcom/urbanairship/Cancelable;
    .locals 1
    .param p0, "callback"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/urbanairship/UAirship;->shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public static shared(Lcom/urbanairship/UAirship$OnReadyCallback;Landroid/os/Looper;)Lcom/urbanairship/Cancelable;
    .locals 3
    .param p0, "callback"    # Lcom/urbanairship/UAirship$OnReadyCallback;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 177
    new-instance v0, Lcom/urbanairship/UAirship$1;

    invoke-direct {v0, p1, p0}, Lcom/urbanairship/UAirship$1;-><init>(Landroid/os/Looper;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 187
    .local v0, "cancelableOperation":Lcom/urbanairship/CancelableOperation;
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v2

    .line 188
    :try_start_0
    sget-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/urbanairship/CancelableOperation;->run()V

    .line 196
    :goto_0
    monitor-exit v2

    .line 198
    return-object v0

    .line 191
    :cond_0
    sget-object v1, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    .line 194
    :cond_1
    sget-object v1, Lcom/urbanairship/UAirship;->pendingAirshipRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static shared()Lcom/urbanairship/UAirship;
    .locals 4

    .prologue
    .line 127
    sget-object v2, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    sget-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    monitor-exit v2

    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v1

    .line 132
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    sget-boolean v1, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Take off must be called before shared()"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v1, :cond_2

    .line 143
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "Failed to wait for UAirship instance."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    :cond_2
    sget-object v1, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static takeOff(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 208
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 233
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "options"    # Lcom/urbanairship/AirshipConfigOptions;
    .param p2, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    .line 249
    if-nez p0, :cond_0

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Application argument must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 255
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 257
    :try_start_0
    const-string v2, "android.os.AsyncTask"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    sget-object v3, Lcom/urbanairship/UAirship;->airshipLock:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_1
    sget-boolean v2, Lcom/urbanairship/UAirship;->isFlying:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/urbanairship/UAirship;->isTakingOff:Z

    if-eqz v2, :cond_4

    .line 272
    :cond_2
    const-string v2, "You can only call takeOff() once."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 273
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "AsyncTask workaround failed."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    const-string/jumbo v2, "takeOff() must be called on the main thread!"

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_4
    :try_start_2
    const-string v2, "Airship taking off!"

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x1

    sput-boolean v2, Lcom/urbanairship/UAirship;->isTakingOff:Z

    .line 280
    sput-object p0, Lcom/urbanairship/UAirship;->application:Landroid/app/Application;

    .line 281
    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->init()V

    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_5

    .line 284
    invoke-static {p0}, Lcom/urbanairship/analytics/Analytics;->registerLifeCycleCallbacks(Landroid/app/Application;)V

    .line 285
    invoke-static {p0}, Lcom/urbanairship/push/iam/InAppMessageManager;->registerLifeCycleCallbacks(Landroid/app/Application;)V

    .line 288
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/urbanairship/UAirship$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/urbanairship/UAirship$2;-><init>(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 296
    monitor-exit v3

    goto :goto_1

    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "readyCallback"    # Lcom/urbanairship/UAirship$OnReadyCallback;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 221
    return-void
.end method

.method private tearDown()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 560
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 561
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 562
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/BaseManager;->tearDown()V

    .line 563
    return-void
.end method

.method private validateManifest()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {v0}, Lcom/urbanairship/util/ManifestUtils;->validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V

    .line 688
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 707
    :goto_0
    return-void

    .line 690
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {v0}, Lcom/urbanairship/google/GCMUtils;->validateManifest(Lcom/urbanairship/AirshipConfigOptions;)V

    goto :goto_0

    .line 693
    :cond_0
    const-string v0, "Android platform detected but GCM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    const-string v1, "ADM"

    invoke-virtual {v0, v1}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->validateManifest()V

    goto :goto_0

    .line 702
    :cond_1
    const-string v0, "Amazon platform detected but ADM transport is disabled. The device will not be able to receive push notifications."

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getActionRegistry()Lcom/urbanairship/actions/ActionRegistry;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/urbanairship/UAirship;->actionRegistry:Lcom/urbanairship/actions/ActionRegistry;

    return-object v0
.end method

.method public getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    return-object v0
.end method

.method public getAnalytics()Lcom/urbanairship/analytics/Analytics;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    return-object v0
.end method

.method public getApplicationMetrics()Lcom/urbanairship/ApplicationMetrics;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/urbanairship/UAirship;->applicationMetrics:Lcom/urbanairship/ApplicationMetrics;

    return-object v0
.end method

.method public getInAppMessageManager()Lcom/urbanairship/push/iam/InAppMessageManager;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/urbanairship/UAirship;->inAppMessageManager:Lcom/urbanairship/push/iam/InAppMessageManager;

    return-object v0
.end method

.method public getLocationManager()Lcom/urbanairship/location/UALocationManager;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/urbanairship/UAirship;->locationManager:Lcom/urbanairship/location/UALocationManager;

    return-object v0
.end method

.method public getPlatformType()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 659
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 661
    .local v0, "platform":I
    if-ne v0, v3, :cond_0

    .line 662
    invoke-static {}, Lcom/urbanairship/amazon/ADMUtils;->isADMAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    const-string v1, "ADM available. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x1

    .line 676
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/UAirship;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v2, "com.urbanairship.application.device.PLATFORM"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    :cond_0
    return v0

    .line 665
    :cond_1
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGooglePlayStoreAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    const-string v1, "Google Play Store available. Setting platform to Android."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x2

    goto :goto_0

    .line 668
    :cond_2
    const-string v1, "amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    const-string v1, "Build.MANUFACTURER is AMAZON. Setting platform to Amazon."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 670
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :cond_3
    const-string v1, "Defaulting platform to Android."

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getPushManager()Lcom/urbanairship/push/PushManager;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/urbanairship/UAirship;->pushManager:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public getRichPushManager()Lcom/urbanairship/richpush/RichPushManager;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/urbanairship/UAirship;->richPushManager:Lcom/urbanairship/richpush/RichPushManager;

    return-object v0
.end method

.method public getWhitelist()Lcom/urbanairship/js/Whitelist;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/urbanairship/UAirship;->whitelist:Lcom/urbanairship/js/Whitelist;

    return-object v0
.end method
