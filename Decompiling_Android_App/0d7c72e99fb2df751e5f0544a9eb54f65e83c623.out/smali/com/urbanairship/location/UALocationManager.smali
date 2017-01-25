.class public Lcom/urbanairship/location/UALocationManager;
.super Lcom/urbanairship/BaseManager;
.source "UALocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;,
        Lcom/urbanairship/location/UALocationManager$IncomingHandler;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isBound:Z

.field private isSubscribed:Z

.field private final locationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final messenger:Landroid/os/Messenger;

.field private nextSingleLocationRequestId:I

.field preferences:Lcom/urbanairship/location/LocationPreferences;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;

.field private final singleLocationRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/urbanairship/location/UALocationManager$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/location/UALocationManager$1;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    .line 108
    new-instance v0, Lcom/urbanairship/location/LocationPreferences;

    invoke-direct {v0, p2}, Lcom/urbanairship/location/LocationPreferences;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    .line 109
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$IncomingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/location/UALocationManager$IncomingHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    .line 117
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    new-instance v1, Lcom/urbanairship/location/UALocationManager$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/UALocationManager$2;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/location/LocationPreferences;->setListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/UALocationManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/urbanairship/location/UALocationManager;->onServiceConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unbindService()V

    return-void
.end method

.method static synthetic access$1100(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/UALocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/urbanairship/location/UALocationManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/urbanairship/location/UALocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    return v0
.end method

.method static synthetic access$600(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->subscribeUpdates()V

    return-void
.end method

.method static synthetic access$700(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    return-void
.end method

.method static synthetic access$800(Lcom/urbanairship/location/UALocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->unsubscribeUpdates()V

    return-void
.end method

.method static synthetic access$900(Lcom/urbanairship/location/UALocationManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/UALocationManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    return-object v0
.end method

.method private declared-synchronized bindService()V
    .locals 4

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v2, :cond_0

    .line 364
    const-string v2, "UALocationManager - Binding to location service."

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v2, "Unable to bind to location service. Check that the location service is added to the manifest."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static isAppForegrounded()Z
    .locals 2

    .prologue
    .line 470
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    .line 471
    .local v0, "analytics":Lcom/urbanairship/analytics/Analytics;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onServiceConnected(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 419
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 416
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onServiceDisconnected()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMessage(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_0

    .line 460
    :goto_0
    return v2

    .line 447
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 448
    .local v1, "message":Landroid/os/Message;
    if-eqz p3, :cond_1

    .line 449
    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->messenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    const/4 v2, 0x1

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "UALocationManager - Remote exception when sending message to location service"

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized subscribeUpdates()V
    .locals 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "Subscribing to continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unbindService()V
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "UALocationManager - Unbinding to location service."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unsubscribeUpdates()V
    .locals 3

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Unsubscribing from continuous location updates."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/urbanairship/location/UALocationManager;->sendMessage(IILandroid/os/Bundle;)Z

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/location/UALocationManager;->isSubscribed:Z

    .line 396
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    monitor-exit p0

    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateServiceConnection()V
    .locals 5

    .prologue
    .line 316
    new-instance v1, Lcom/urbanairship/location/UALocationManager$4;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/urbanairship/location/UALocationManager$4;-><init>(Lcom/urbanairship/location/UALocationManager;Landroid/os/Handler;)V

    .line 350
    .local v1, "resultReceiver":Landroid/os/ResultReceiver;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    const-class v4, Lcom/urbanairship/location/LocationService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 355
    const-string v2, "Unable to start location service. Check that the location service is added to the manifest."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public addLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/location/LocationListener;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 223
    .local v0, "options":Lcom/urbanairship/location/LocationRequestOptions;
    if-nez v0, :cond_0

    .line 224
    new-instance v1, Lcom/urbanairship/location/LocationRequestOptions$Builder;

    invoke-direct {v1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->create()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 226
    :cond_0
    return-object v0
.end method

.method getPreferences()Lcom/urbanairship/location/LocationPreferences;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/urbanairship/location/UALocationManager$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/location/UALocationManager$3;-><init>(Lcom/urbanairship/location/UALocationManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method

.method public isBackgroundLocationAllowed()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isBackgroundLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isLocationUpdatesEnabled()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/location/LocationPreferences;->isLocationUpdatesEnabled()Z

    move-result v0

    return v0
.end method

.method isLocationUpdatesNeeded()Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/location/UALocationManager;->isAppForegrounded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLocationListener(Lcom/urbanairship/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/location/LocationListener;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->updateServiceConnection()V

    .line 251
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestSingleLocation()Lcom/urbanairship/PendingResult;
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/location/UALocationManager;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;
    .locals 4
    .param p1, "requestOptions"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Location request options cannot be null or invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    monitor-enter v3

    .line 275
    :try_start_0
    iget v0, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/urbanairship/location/UALocationManager;->nextSingleLocationRequestId:I

    .line 276
    .local v0, "id":I
    new-instance v1, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;-><init>(Lcom/urbanairship/location/UALocationManager;ILcom/urbanairship/location/LocationRequestOptions;)V

    .line 277
    .local v1, "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    iget-object v2, p0, Lcom/urbanairship/location/UALocationManager;->singleLocationRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-enter p0

    .line 281
    :try_start_1
    iget-boolean v2, p0, Lcom/urbanairship/location/UALocationManager;->isBound:Z

    if-nez v2, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/urbanairship/location/UALocationManager;->bindService()V

    .line 286
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    return-object v1

    .line 278
    .end local v0    # "id":I
    .end local v1    # "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 284
    .restart local v0    # "id":I
    .restart local v1    # "request":Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager$SingleLocationRequest;->sendLocationRequest()V

    goto :goto_0

    .line 286
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public setBackgroundLocationAllowed(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setBackgroundLocationAllowed(Z)V

    .line 203
    return-void
.end method

.method public setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setLocationRequestOptions(Lcom/urbanairship/location/LocationRequestOptions;)V

    .line 213
    return-void
.end method

.method public setLocationUpdatesEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/urbanairship/location/UALocationManager;->preferences:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/location/LocationPreferences;->setLocationUpdatesEnabled(Z)V

    .line 182
    return-void
.end method
