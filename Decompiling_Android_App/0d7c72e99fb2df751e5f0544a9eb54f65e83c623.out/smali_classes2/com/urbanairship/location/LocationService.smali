.class public Lcom/urbanairship/location/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationService$IncomingHandler;
    }
.end annotation


# static fields
.field static final ACTION_CHECK_LOCATION_UPDATES:Ljava/lang/String; = "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

.field static final ACTION_LOCATION_UPDATE:Ljava/lang/String; = "com.urbanairship.location.ACTION_LOCATION_UPDATE"

.field static final EXTRA_MIN_DISTANCE:Ljava/lang/String; = "com.urbanairship.location.EXTRA_MIN_DISTANCE"

.field static final EXTRA_MIN_TIME:Ljava/lang/String; = "com.urbanairship.location.EXTRA_MIN_TIME"

.field static final EXTRA_PRIORITY:Ljava/lang/String; = "com.urbanairship.location.EXTRA_PRIORITY"

.field static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

.field static final MSG_CANCEL_SINGLE_LOCATION_REQUEST:I = 0x6

.field private static final MSG_HANDLE_INTENT:I = 0x7

.field static final MSG_NEW_LOCATION_UPDATE:I = 0x3

.field static final MSG_REQUEST_SINGLE_LOCATION:I = 0x5

.field static final MSG_SINGLE_REQUEST_RESULT:I = 0x4

.field static final MSG_SUBSCRIBE_UPDATES:I = 0x1

.field static final MSG_UNSUBSCRIBE_UPDATES:I = 0x2

.field static RESULT_LOCATION_UPDATES_STARTED:I

.field static areUpdatesStopped:Z

.field static lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;


# instance fields
.field handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

.field locationProvider:Lcom/urbanairship/location/UALocationProvider;

.field looper:Landroid/os/Looper;

.field private messenger:Landroid/os/Messenger;

.field private final pendingResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private subscribedClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    sput v0, Lcom/urbanairship/location/LocationService;->RESULT_LOCATION_UPDATES_STARTED:I

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    .line 570
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;IILjava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/location/LocationService;->removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onUnsubscribeUpdates(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onSubscribeUpdates(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onRequestSingleUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/urbanairship/location/LocationService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onCancelSingleUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/urbanairship/location/LocationService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/location/LocationService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private addPendingResult(Landroid/os/Messenger;ILcom/urbanairship/PendingResult;)V
    .locals 3
    .param p1, "client"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p3, "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Landroid/location/Location;>;"
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 439
    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    :cond_1
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 546
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/urbanairship/location/LocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 549
    invoke-static {p1}, Lcom/urbanairship/location/LocationService;->createRequestOptionsBundle(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createRequestOptionsBundle(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/os/Bundle;
    .locals 4
    .param p0, "options"    # Lcom/urbanairship/location/LocationRequestOptions;

    .prologue
    .line 509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.urbanairship.location.EXTRA_PRIORITY"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 511
    const-string v1, "com.urbanairship.location.EXTRA_MIN_DISTANCE"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 512
    const-string v1, "com.urbanairship.location.EXTRA_MIN_TIME"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 513
    return-object v0
.end method

.method private isContinuousLocationUpdatesAllowed()Z
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v1

    .line 563
    .local v1, "locationManager":Lcom/urbanairship/location/UALocationManager;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    .line 564
    .local v0, "analytics":Lcom/urbanairship/analytics/Analytics;
    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager;->isLocationUpdatesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/urbanairship/location/UALocationManager;->isBackgroundLocationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/Analytics;->isAppInForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCancelSingleUpdate(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 313
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 314
    .local v2, "requestId":I
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 316
    .local v0, "client":Landroid/os/Messenger;
    invoke-direct {p0, v0, v2}, Lcom/urbanairship/location/LocationService;->removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;

    move-result-object v1

    .line 317
    .local v1, "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Landroid/location/Location;>;"
    if-eqz v1, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationService - Canceled single request for client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 319
    invoke-interface {v1}, Lcom/urbanairship/PendingResult;->cancel()V

    .line 321
    :cond_0
    return-void
.end method

.method private onCheckLocationUpdates(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "resultCode":I
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->isContinuousLocationUpdatesAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    sget v2, Lcom/urbanairship/location/LocationService;->RESULT_LOCATION_UPDATES_STARTED:I

    .line 397
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v0

    .line 403
    .local v0, "options":Lcom/urbanairship/location/LocationRequestOptions;
    sget-object v4, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    invoke-virtual {v4, v0}, Lcom/urbanairship/location/LocationRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 404
    :cond_0
    const-string v4, "LocationService - Starting updates."

    invoke-static {v4}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 406
    sput-object v0, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 407
    const/4 v4, 0x0

    sput-boolean v4, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    .line 409
    invoke-direct {p0, v0}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 411
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v4}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 412
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v4, v1}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 414
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v4, v0, v1}, Lcom/urbanairship/location/UALocationProvider;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    .line 424
    .end local v0    # "options":Lcom/urbanairship/location/LocationRequestOptions;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    const-string v4, "com.urbanairship.location.EXTRA_RESULT_RECEIVER"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 425
    .local v3, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz v3, :cond_2

    .line 426
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 428
    :cond_2
    return-void

    .line 417
    .end local v3    # "resultReceiver":Landroid/os/ResultReceiver;
    :cond_3
    sget-boolean v4, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    if-nez v4, :cond_1

    .line 418
    const-string v4, "LocationService - Stopping updates."

    invoke-static {v4}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 419
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-direct {p0, v6}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 420
    sput-object v6, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 421
    const/4 v4, 0x1

    sput-boolean v4, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Received intent with action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onCheckLocationUpdates(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :sswitch_0
    const-string v2, "com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "com.urbanairship.location.ACTION_LOCATION_UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    .line 230
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationService;->onLocationUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        -0x355d426c -> :sswitch_0
        0x21f7aa36 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onLocationUpdate(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/urbanairship/location/LocationService;->isContinuousLocationUpdatesAllowed()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/urbanairship/location/LocationService;->areUpdatesStopped:Z

    if-eqz v7, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/location/LocationService;->parseRequestOptions(Landroid/os/Bundle;)Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v6

    .line 343
    .local v6, "updateOptions":Lcom/urbanairship/location/LocationRequestOptions;
    sget-object v7, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v7, :cond_2

    .line 344
    sput-object v6, Lcom/urbanairship/location/LocationService;->lastUpdateOptions:Lcom/urbanairship/location/LocationRequestOptions;

    .line 352
    :cond_2
    const-string v7, "providerEnabled"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 353
    const-string v7, "LocationService - Restarting location updates. One of the location providers was enabled or disabled."

    invoke-static {v7}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getLocationManager()Lcom/urbanairship/location/UALocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/location/UALocationManager;->getLocationRequestOptions()Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v4

    .line 357
    .local v4, "options":Lcom/urbanairship/location/LocationRequestOptions;
    invoke-direct {p0, v4}, Lcom/urbanairship/location/LocationService;->createLocationUpdateIntent(Lcom/urbanairship/location/LocationRequestOptions;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 359
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v7}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 360
    iget-object v7, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v7, v5}, Lcom/urbanairship/location/UALocationProvider;->cancelRequests(Landroid/app/PendingIntent;)V

    .line 361
    iget-object v7, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v7, v4, v5}, Lcom/urbanairship/location/UALocationProvider;->requestLocationUpdates(Lcom/urbanairship/location/LocationRequestOptions;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 366
    .end local v4    # "options":Lcom/urbanairship/location/LocationRequestOptions;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string v7, "location"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "location"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    :goto_1
    check-cast v7, Landroid/location/Location;

    move-object v3, v7

    check-cast v3, Landroid/location/Location;

    .line 370
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received location update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v7

    invoke-virtual {v7}, Lcom/urbanairship/UAirship;->getAnalytics()Lcom/urbanairship/analytics/Analytics;

    move-result-object v7

    sget-object v8, Lcom/urbanairship/analytics/LocationEvent$UpdateType;->CONTINUOUS:Lcom/urbanairship/analytics/LocationEvent$UpdateType;

    invoke-virtual {v7, v3, v6, v8}, Lcom/urbanairship/analytics/Analytics;->recordLocation(Landroid/location/Location;Lcom/urbanairship/location/LocationRequestOptions;Lcom/urbanairship/analytics/LocationEvent$UpdateType;)V

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    .local v1, "clientCopy":Ljava/util/List;, "Ljava/util/List<Landroid/os/Messenger;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 378
    .local v0, "client":Landroid/os/Messenger;
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v8, v3}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 380
    iget-object v7, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 366
    .end local v0    # "client":Landroid/os/Messenger;
    .end local v1    # "clientCopy":Ljava/util/List;, "Ljava/util/List<Landroid/os/Messenger;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "location":Landroid/location/Location;
    :cond_5
    const-string v7, "com.google.android.location.LOCATION"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    goto :goto_1
.end method

.method private onRequestSingleUpdate(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 264
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 265
    .local v3, "requestId":I
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 267
    .local v0, "client":Landroid/os/Messenger;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/location/LocationService;->parseRequestOptions(Landroid/os/Bundle;)Lcom/urbanairship/location/LocationRequestOptions;

    move-result-object v1

    .line 268
    .local v1, "options":Lcom/urbanairship/location/LocationRequestOptions;
    if-nez v1, :cond_0

    .line 269
    const-string v4, "Location service unable to perform single location request. Invalid request options."

    invoke-static {v4}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v0, v6, v3, v7}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    .line 305
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocationService - Single location request for client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting single location update with request options: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 278
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v4}, Lcom/urbanairship/location/UALocationProvider;->connect()V

    .line 279
    iget-object v4, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v4, v1}, Lcom/urbanairship/location/UALocationProvider;->requestSingleLocation(Lcom/urbanairship/location/LocationRequestOptions;)Lcom/urbanairship/PendingResult;

    move-result-object v2

    .line 281
    .local v2, "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Landroid/location/Location;>;"
    if-nez v2, :cond_1

    .line 282
    const-string v4, "Location service unable to perform single location request. UALocationProvider failed to request a location."

    invoke-static {v4}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, v0, v6, v3, v7}, Lcom/urbanairship/location/LocationService;->sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, v0, v3, v2}, Lcom/urbanairship/location/LocationService;->addPendingResult(Landroid/os/Messenger;ILcom/urbanairship/PendingResult;)V

    .line 290
    new-instance v4, Lcom/urbanairship/location/LocationService$1;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/urbanairship/location/LocationService$1;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Messenger;ILcom/urbanairship/location/LocationRequestOptions;)V

    invoke-interface {v2, v4}, Lcom/urbanairship/PendingResult;->onResult(Lcom/urbanairship/PendingResult$ResultCallback;)V

    goto :goto_0
.end method

.method private onSubscribeUpdates(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 241
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Client subscribed for updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_0
    return-void
.end method

.method private onUnsubscribeUpdates(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->subscribedClients:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService - Client unsubscribed from updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method private static parseRequestOptions(Landroid/os/Bundle;)Lcom/urbanairship/location/LocationRequestOptions;
    .locals 6
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 486
    if-nez p0, :cond_0

    .line 498
    :goto_0
    return-object v1

    .line 491
    :cond_0
    :try_start_0
    new-instance v2, Lcom/urbanairship/location/LocationRequestOptions$Builder;

    invoke-direct {v2}, Lcom/urbanairship/location/LocationRequestOptions$Builder;-><init>()V

    const-string v3, "com.urbanairship.location.EXTRA_PRIORITY"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setPriority(I)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v2

    const-string v3, "com.urbanairship.location.EXTRA_MIN_DISTANCE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setMinDistance(F)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v2

    const-string v3, "com.urbanairship.location.EXTRA_MIN_TIME"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->setMinTime(JLjava/util/concurrent/TimeUnit;)Lcom/urbanairship/location/LocationRequestOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->create()Lcom/urbanairship/location/LocationRequestOptions;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationService - Invalid LocationRequestOptions from Bundle. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized removePendingResult(Landroid/os/Messenger;I)Lcom/urbanairship/PendingResult;
    .locals 4
    .param p1, "client"    # Landroid/os/Messenger;
    .param p2, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I)",
            "Lcom/urbanairship/PendingResult",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :goto_0
    monitor-exit p0

    return-object v0

    .line 461
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 462
    .local v1, "providerSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/urbanairship/PendingResult<Landroid/location/Location;>;>;"
    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PendingResult;

    .line 465
    .local v0, "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Landroid/location/Location;>;"
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 466
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->pendingResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 473
    .end local v0    # "pendingResult":Lcom/urbanairship/PendingResult;, "Lcom/urbanairship/PendingResult<Landroid/location/Location;>;"
    .end local v1    # "providerSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/urbanairship/PendingResult<Landroid/location/Location;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 473
    .restart local v1    # "providerSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/urbanairship/PendingResult<Landroid/location/Location;>;>;"
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private sendClientMessage(Landroid/os/Messenger;IILjava/lang/Object;)Z
    .locals 4
    .param p1, "client"    # Landroid/os/Messenger;
    .param p2, "what"    # I
    .param p3, "arg1"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 528
    if-nez p1, :cond_0

    .line 535
    :goto_0
    return v1

    .line 532
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, p2, p3, v3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    const/4 v1, 0x1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 191
    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 193
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    .line 197
    new-instance v1, Lcom/urbanairship/location/LocationService$IncomingHandler;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/urbanairship/location/LocationService$IncomingHandler;-><init>(Lcom/urbanairship/location/LocationService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    .line 198
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->messenger:Landroid/os/Messenger;

    .line 200
    new-instance v1, Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/location/UALocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    .line 202
    const-string v1, "LocationService - Service created."

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->locationProvider:Lcom/urbanairship/location/UALocationProvider;

    invoke-virtual {v0}, Lcom/urbanairship/location/UALocationProvider;->disconnect()V

    .line 183
    iget-object v0, p0, Lcom/urbanairship/location/LocationService;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 185
    const-string v0, "LocationService - Service destroyed."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 207
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationService$IncomingHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 209
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 210
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    iget-object v1, p0, Lcom/urbanairship/location/LocationService;->handler:Lcom/urbanairship/location/LocationService$IncomingHandler;

    invoke-virtual {v1, v0}, Lcom/urbanairship/location/LocationService$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    const/4 v1, 0x2

    return v1
.end method
