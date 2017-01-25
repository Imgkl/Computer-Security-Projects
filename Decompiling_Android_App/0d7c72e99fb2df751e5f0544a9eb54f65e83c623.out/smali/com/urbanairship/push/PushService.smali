.class public Lcom/urbanairship/push/PushService;
.super Landroid/app/IntentService;
.source "PushService.java"


# static fields
.field static final ACTION_PUSH_RECEIVED:Ljava/lang/String; = "com.urbanairship.push.ACTION_PUSH_RECEIVED"

.field static final ACTION_PUSH_REGISTRATION_FINISHED:Ljava/lang/String; = "com.urbanairship.push.ACTION_PUSH_REGISTRATION_FINISHED"

.field static final ACTION_RETRY_CHANNEL_REGISTRATION:Ljava/lang/String; = "com.urbanairship.push.ACTION_RETRY_CHANNEL_REGISTRATION"

.field static final ACTION_RETRY_PUSH_REGISTRATION:Ljava/lang/String; = "com.urbanairship.push.ACTION_RETRY_PUSH_REGISTRATION"

.field static final ACTION_RETRY_UPDATE_NAMED_USER:Ljava/lang/String; = "com.urbanairship.push.ACTION_RETRY_UPDATE_NAMED_USER"

.field static final ACTION_START_REGISTRATION:Ljava/lang/String; = "com.urbanairship.push.ACTION_START_REGISTRATION"

.field static final ACTION_UPDATE_NAMED_USER:Ljava/lang/String; = "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

.field static final ACTION_UPDATE_REGISTRATION:Ljava/lang/String; = "com.urbanairship.push.ACTION_UPDATE_REGISTRATION"

.field private static final CHANNEL_REREGISTRATION_INTERVAL_MS:J = 0x5265c00L

.field static final EXTRA_BACK_OFF:Ljava/lang/String; = "com.urbanairship.push.EXTRA_BACK_OFF"

.field static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "com.urbanairship.push.EXTRA_WAKE_LOCK_ID"

.field private static final MAX_BACK_OFF_TIME:J = 0x4e2000L

.field private static final STARTING_BACK_OFF_TIME:J = 0x2710L

.field private static final WAKE_LOCK_TIMEOUT_MS:J = 0xea60L

.field private static channelRegistrationBackOff:J

.field private static isPushRegistering:Z

.field private static namedUserBackOff:J

.field private static nextWakeLockID:I

.field private static pushRegistrationBackOff:J

.field private static final wakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelClient:Lcom/urbanairship/push/ChannelAPIClient;

.field private namedUserClient:Lcom/urbanairship/push/NamedUserAPIClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/urbanairship/push/PushService;->wakeLocks:Landroid/util/SparseArray;

    .line 133
    sput-wide v2, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    .line 135
    sput v1, Lcom/urbanairship/push/PushService;->nextWakeLockID:I

    .line 136
    sput-boolean v1, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 138
    sput-wide v2, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    .line 140
    sput-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "PushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/push/ChannelAPIClient;Lcom/urbanairship/push/NamedUserAPIClient;)V
    .locals 1
    .param p1, "client"    # Lcom/urbanairship/push/ChannelAPIClient;
    .param p2, "namedUserClient"    # Lcom/urbanairship/push/NamedUserAPIClient;

    .prologue
    .line 160
    const-string v0, "PushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/urbanairship/push/PushService;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    .line 162
    iput-object p2, p0, Lcom/urbanairship/push/PushService;->namedUserClient:Lcom/urbanairship/push/NamedUserAPIClient;

    .line 163
    return-void
.end method

.method private static declared-synchronized acquireWakeLock()I
    .locals 8

    .prologue
    .line 708
    const-class v4, Lcom/urbanairship/push/PushService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 709
    .local v0, "context":Landroid/content/Context;
    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 711
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v5, "UA_GCM_WAKE_LOCK"

    invoke-virtual {v1, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 712
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 713
    const-wide/32 v6, 0xea60

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 715
    sget-object v3, Lcom/urbanairship/push/PushService;->wakeLocks:Landroid/util/SparseArray;

    sget v5, Lcom/urbanairship/push/PushService;->nextWakeLockID:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/urbanairship/push/PushService;->nextWakeLockID:I

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushService - Acquired wake lock: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/urbanairship/push/PushService;->nextWakeLockID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 719
    sget v3, Lcom/urbanairship/push/PushService;->nextWakeLockID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v3

    .line 708
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private calculateNextBackOff(J)J
    .locals 7
    .param p1, "lastBackOff"    # J

    .prologue
    .line 438
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p1

    const-wide/32 v4, 0x4e2000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 439
    .local v0, "delay":J
    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private createChannel(Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 10
    .param p1, "payload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0xc8

    const/4 v5, 0x0

    .line 342
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    .line 343
    .local v0, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    .line 344
    .local v1, "pushPreferences":Lcom/urbanairship/push/PushPreferences;
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->getChannelClient()Lcom/urbanairship/push/ChannelAPIClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/urbanairship/push/ChannelAPIClient;->createChannelWithPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v2

    .line 346
    .local v2, "response":Lcom/urbanairship/push/ChannelResponse;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    const-string v3, "Channel registration failed, will retry."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 349
    sget-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/PushService;->calculateNextBackOff(J)J

    move-result-wide v4

    sput-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    .line 350
    const-string v3, "com.urbanairship.push.ACTION_RETRY_CHANNEL_REGISTRATION"

    sget-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    invoke-direct {p0, v3, v4, v5}, Lcom/urbanairship/push/PushService;->scheduleRetry(Ljava/lang/String;J)V

    .line 387
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    if-eq v3, v6, :cond_2

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_5

    .line 353
    :cond_2
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel creation succeeded with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " channel ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/urbanairship/push/PushManager;->setChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationTime(J)V

    .line 360
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/PushManager;->sendRegistrationFinishedBroadcast(Z)V

    .line 362
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 364
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v3

    iget-boolean v3, v3, Lcom/urbanairship/AirshipConfigOptions;->clearNamedUser:Z

    if-eqz v3, :cond_3

    .line 366
    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/NamedUser;->disassociateNamedUserIfNull()V

    .line 371
    :cond_3
    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/NamedUser;->startUpdateService()V

    .line 379
    :goto_1
    sput-wide v8, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    goto/16 :goto_0

    .line 374
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register with channel ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " channel location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getChannelLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v5}, Lcom/urbanairship/push/PushManager;->sendRegistrationFinishedBroadcast(Z)V

    goto :goto_1

    .line 382
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel registration failed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v5}, Lcom/urbanairship/push/PushManager;->sendRegistrationFinishedBroadcast(Z)V

    .line 385
    sput-wide v8, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    goto/16 :goto_0
.end method

.method private getChannelClient()Lcom/urbanairship/push/ChannelAPIClient;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/urbanairship/push/PushService;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcom/urbanairship/push/ChannelAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/push/ChannelAPIClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/PushService;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushService;->channelClient:Lcom/urbanairship/push/ChannelAPIClient;

    return-object v0
.end method

.method private getChannelLocationURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getChannelLocation()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "channelLocationString":Ljava/lang/String;
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    return-object v2

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel location from preferences was invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 574
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNamedUserClient()Lcom/urbanairship/push/NamedUserAPIClient;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/urbanairship/push/PushService;->namedUserClient:Lcom/urbanairship/push/NamedUserAPIClient;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/urbanairship/push/NamedUserAPIClient;

    invoke-direct {v0}, Lcom/urbanairship/push/NamedUserAPIClient;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/PushService;->namedUserClient:Lcom/urbanairship/push/NamedUserAPIClient;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/PushService;->namedUserClient:Lcom/urbanairship/push/NamedUserAPIClient;

    return-object v0
.end method

.method private isPushRegistrationAllowed()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 644
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    .line 646
    .local v0, "options":Lcom/urbanairship/AirshipConfigOptions;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 664
    :goto_0
    return v1

    .line 648
    :pswitch_0
    const-string v3, "GCM"

    invoke-virtual {v0, v3}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 649
    const-string v2, "Unable to register for push. GCM transport type is not allowed."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 653
    goto :goto_0

    .line 656
    :pswitch_1
    const-string v3, "ADM"

    invoke-virtual {v0, v3}, Lcom/urbanairship/AirshipConfigOptions;->isTransportAllowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 657
    const-string v2, "Unable to register for push. ADM transport type is not allowed."

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 661
    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private needsPushRegistration()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 599
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    .line 601
    .local v0, "pushPreferences":Lcom/urbanairship/push/PushPreferences;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAppVersionCode()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushService - Version code changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Push re-registration required."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 635
    :cond_0
    :goto_0
    return v3

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/PushManager;->getSecureId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 605
    const-string v4, "PushService - Device ID changed. Push re-registration required."

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 635
    goto :goto_0

    .line 611
    :pswitch_0
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 614
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/AirshipConfigOptions;->getGCMSenderIds()Ljava/util/Set;

    move-result-object v2

    .line 615
    .local v2, "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getRegisteredGcmSenderIds()Ljava/util/Set;

    move-result-object v1

    .line 618
    .local v1, "registeredGcmSenderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 619
    const-string v4, "PushService - GCM sender IDs changed. Push re-registration required."

    invoke-static {v4}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushService - GCM already registered with ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getGcmId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    move v3, v4

    .line 624
    goto :goto_0

    .line 627
    .end local v1    # "registeredGcmSenderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushService - ADM already registered with ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getAdmId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    move v3, v4

    .line 632
    goto/16 :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPushReceived(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    new-instance v0, Lcom/urbanairship/push/PushMessage;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/PushMessage;-><init>(Landroid/os/Bundle;)V

    .line 228
    .local v0, "message":Lcom/urbanairship/push/PushMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received push message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushManager;->deliverPush(Lcom/urbanairship/push/PushMessage;)V

    .line 230
    return-void
.end method

.method private onPushRegistrationFinished()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 269
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    .line 270
    return-void
.end method

.method private onRetryChannelRegistration(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 292
    const-string v0, "com.urbanairship.push.EXTRA_BACK_OFF"

    sget-wide v2, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    .line 293
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    .line 294
    return-void
.end method

.method private onRetryPushRegistration(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const-string v0, "com.urbanairship.push.EXTRA_BACK_OFF"

    sget-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    .line 280
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->isPushRegistrationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->needsPushRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->startPushRegistration()V

    .line 283
    :cond_0
    return-void
.end method

.method private onRetryUpdateNamedUser(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 555
    const-string v0, "com.urbanairship.push.EXTRA_BACK_OFF"

    sget-wide v2, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    .line 556
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->onUpdateNamedUser()V

    .line 557
    return-void
.end method

.method private onStartRegistration()V
    .locals 1

    .prologue
    .line 239
    sget-boolean v0, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->isPushRegistrationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->needsPushRegistration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->startPushRegistration()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    goto :goto_0
.end method

.method private onUpdateNamedUser()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 492
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    .line 493
    .local v4, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getNamedUser()Lcom/urbanairship/push/NamedUser;

    move-result-object v3

    .line 494
    .local v3, "namedUser":Lcom/urbanairship/push/NamedUser;
    invoke-virtual {v3}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "currentId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/urbanairship/push/NamedUser;->getChangeToken()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "changeToken":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/urbanairship/push/NamedUser;->getLastUpdatedToken()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "lastUpdatedToken":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 500
    const-string v6, "PushService - New or re-install. Skipping."

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 504
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 506
    const-string v6, "PushService - named user already updated. Skipping."

    invoke-static {v6}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 511
    const-string v6, "The channel ID does not exist. Will retry when channel ID is available."

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_2
    if-nez v1, :cond_4

    .line 519
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->getNamedUserClient()Lcom/urbanairship/push/NamedUserAPIClient;

    move-result-object v6

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/urbanairship/push/NamedUserAPIClient;->disassociate(Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v5

    .line 525
    .local v5, "response":Lcom/urbanairship/http/Response;
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 528
    :cond_3
    const-string v6, "Update named user failed, will retry."

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 529
    sget-wide v6, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    invoke-direct {p0, v6, v7}, Lcom/urbanairship/push/PushService;->calculateNextBackOff(J)J

    move-result-wide v6

    sput-wide v6, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    .line 530
    const-string v6, "com.urbanairship.push.ACTION_RETRY_UPDATE_NAMED_USER"

    sget-wide v8, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    invoke-direct {p0, v6, v8, v9}, Lcom/urbanairship/push/PushService;->scheduleRetry(Ljava/lang/String;J)V

    goto :goto_0

    .line 522
    .end local v5    # "response":Lcom/urbanairship/http/Response;
    :cond_4
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->getNamedUserClient()Lcom/urbanairship/push/NamedUserAPIClient;

    move-result-object v6

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/urbanairship/push/NamedUserAPIClient;->associate(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/http/Response;

    move-result-object v5

    .restart local v5    # "response":Lcom/urbanairship/http/Response;
    goto :goto_1

    .line 531
    :cond_5
    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v6

    invoke-static {v6}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update named user succeeded with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v3, v0}, Lcom/urbanairship/push/NamedUser;->setLastUpdatedToken(Ljava/lang/String;)V

    .line 537
    sput-wide v8, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    goto/16 :goto_0

    .line 538
    :cond_6
    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_7

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update named user failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " This action is not allowed when the app is in server-only mode."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 541
    sput-wide v8, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    goto/16 :goto_0

    .line 543
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update named user failed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 544
    sput-wide v8, Lcom/urbanairship/push/PushService;->namedUserBackOff:J

    goto/16 :goto_0
.end method

.method private onUpdateRegistration()V
    .locals 1

    .prologue
    .line 255
    sget-boolean v0, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "PushService - Push registration in progress, skipping registration update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    goto :goto_0
.end method

.method private performChannelRegistration()V
    .locals 6

    .prologue
    .line 393
    const-string v5, "PushService - Performing channel registration."

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v3

    .line 395
    .local v3, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v4

    .line 397
    .local v4, "pushPreferences":Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v3}, Lcom/urbanairship/push/PushManager;->getNextChannelRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v2

    .line 398
    .local v2, "payload":Lcom/urbanairship/push/ChannelRegistrationPayload;
    invoke-direct {p0, v2}, Lcom/urbanairship/push/PushService;->shouldUpdateRegistration(Lcom/urbanairship/push/ChannelRegistrationPayload;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 399
    const-string v5, "PushService - Channel already up to date."

    invoke-static {v5}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {v4}, Lcom/urbanairship/push/PushPreferences;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "channelId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->getChannelLocationURL()Ljava/net/URL;

    move-result-object v1

    .line 406
    .local v1, "channelLocation":Ljava/net/URL;
    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 407
    invoke-direct {p0, v1, v2}, Lcom/urbanairship/push/PushService;->updateChannel(Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    goto :goto_0

    .line 409
    :cond_1
    invoke-direct {p0, v2}, Lcom/urbanairship/push/PushService;->createChannel(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    goto :goto_0
.end method

.method private static declared-synchronized releaseWakeLock(I)V
    .locals 4
    .param p0, "wakeLockId"    # I

    .prologue
    .line 689
    const-class v2, Lcom/urbanairship/push/PushService;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushService - Releasing wake lock: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 691
    sget-object v1, Lcom/urbanairship/push/PushService;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 693
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_0

    .line 694
    sget-object v1, Lcom/urbanairship/push/PushService;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 696
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :cond_0
    monitor-exit v2

    return-void

    .line 689
    .end local v0    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private scheduleRetry(Ljava/lang/String;J)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushService - Rescheduling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 422
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/urbanairship/push/PushService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.urbanairship.push.EXTRA_BACK_OFF"

    invoke-virtual {v3, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 426
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 427
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 428
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 429
    return-void
.end method

.method private shouldUpdateRegistration(Lcom/urbanairship/push/ChannelRegistrationPayload;)Z
    .locals 8
    .param p1, "payload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    .line 584
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    .line 587
    .local v1, "pushPreferences":Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getLastRegistrationPayload()Lcom/urbanairship/push/ChannelRegistrationPayload;

    move-result-object v0

    .line 588
    .local v0, "lastSuccessPayload":Lcom/urbanairship/push/ChannelRegistrationPayload;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getLastRegistrationTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 589
    .local v2, "timeSinceLastRegistration":J
    invoke-virtual {p1, v0}, Lcom/urbanairship/push/ChannelRegistrationPayload;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startPushRegistration()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 447
    const/4 v1, 0x1

    sput-boolean v1, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 449
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getPlatformType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 482
    const-string v1, "Unknown platform type. Unable to register for push."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 483
    sput-boolean v2, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 484
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    invoke-static {}, Lcom/urbanairship/google/PlayServicesUtils;->isGoogleCloudMessagingDependencyAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    const-string v1, "GCM is unavailable. Unable to register for push notifications. If using the modular Google Play Services dependencies, make sure the application includes the com.google.android.gms:play-services-gcm dependency."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    goto :goto_0

    .line 458
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/urbanairship/push/GCMRegistrar;->register()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    const-string v1, "GCM registration failed."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    sput-boolean v1, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 461
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    .line 462
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCM registration failed, will retry. GCM error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 466
    sget-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    invoke-direct {p0, v2, v3}, Lcom/urbanairship/push/PushService;->calculateNextBackOff(J)J

    move-result-wide v2

    sput-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    .line 467
    const-string v1, "com.urbanairship.push.ACTION_RETRY_PUSH_REGISTRATION"

    sget-wide v2, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    invoke-direct {p0, v1, v2, v3}, Lcom/urbanairship/push/PushService;->scheduleRetry(Ljava/lang/String;J)V

    goto :goto_0

    .line 473
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_1
    invoke-static {}, Lcom/urbanairship/push/ADMRegistrar;->register()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    const-string v1, "ADM registration failed."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 475
    sput-boolean v2, Lcom/urbanairship/push/PushService;->isPushRegistering:Z

    .line 476
    sput-wide v4, Lcom/urbanairship/push/PushService;->pushRegistrationBackOff:J

    .line 477
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    goto :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static startServiceWithWakeLock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 675
    const-class v0, Lcom/urbanairship/push/PushService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 678
    const-string v0, "com.urbanairship.push.EXTRA_WAKE_LOCK_ID"

    invoke-static {}, Lcom/urbanairship/push/PushService;->acquireWakeLock()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 681
    return-void
.end method

.method private updateChannel(Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)V
    .locals 8
    .param p1, "channelLocation"    # Ljava/net/URL;
    .param p2, "payload"    # Lcom/urbanairship/push/ChannelRegistrationPayload;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 303
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    .line 304
    .local v0, "pushManager":Lcom/urbanairship/push/PushManager;
    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    .line 306
    .local v1, "pushPreferences":Lcom/urbanairship/push/PushPreferences;
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->getChannelClient()Lcom/urbanairship/push/ChannelAPIClient;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/urbanairship/push/ChannelAPIClient;->updateChannelWithPayload(Ljava/net/URL;Lcom/urbanairship/push/ChannelRegistrationPayload;)Lcom/urbanairship/push/ChannelResponse;

    move-result-object v2

    .line 308
    .local v2, "response":Lcom/urbanairship/push/ChannelResponse;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/urbanairship/util/UAHttpStatusUtil;->inServerErrorRange(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    :cond_0
    const-string v3, "Channel registration failed, will retry."

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 311
    sget-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    invoke-direct {p0, v4, v5}, Lcom/urbanairship/push/PushService;->calculateNextBackOff(J)J

    move-result-wide v4

    sput-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    .line 312
    const-string v3, "com.urbanairship.push.ACTION_RETRY_CHANNEL_REGISTRATION"

    sget-wide v4, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    invoke-direct {p0, v3, v4, v5}, Lcom/urbanairship/push/PushService;->scheduleRetry(Ljava/lang/String;J)V

    .line 334
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/urbanairship/util/UAHttpStatusUtil;->inSuccessRange(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel registration succeeded with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, p2}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationTime(J)V

    .line 319
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/PushManager;->sendRegistrationFinishedBroadcast(Z)V

    .line 321
    sput-wide v6, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v3

    const/16 v4, 0x199

    if-ne v3, v4, :cond_3

    .line 324
    invoke-virtual {v0, v5, v5}, Lcom/urbanairship/push/PushManager;->setChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, v5}, Lcom/urbanairship/push/PushPreferences;->setLastRegistrationPayload(Lcom/urbanairship/push/ChannelRegistrationPayload;)V

    .line 326
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->performChannelRegistration()V

    goto :goto_0

    .line 329
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Channel registration failed with status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/urbanairship/push/ChannelResponse;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/urbanairship/push/PushManager;->sendRegistrationFinishedBroadcast(Z)V

    .line 332
    sput-wide v6, Lcom/urbanairship/push/PushService;->channelRegistrationBackOff:J

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 169
    invoke-virtual {p0}, Lcom/urbanairship/push/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->automaticTakeOff(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushService - Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.urbanairship.push.EXTRA_WAKE_LOCK_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 183
    .local v1, "wakeLockId":I
    const-string v3, "com.urbanairship.push.EXTRA_WAKE_LOCK_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 214
    :goto_2
    if-ltz v1, :cond_0

    .line 215
    invoke-static {v1}, Lcom/urbanairship/push/PushService;->releaseWakeLock(I)V

    goto :goto_0

    .line 187
    :sswitch_0
    :try_start_1
    const-string v3, "com.urbanairship.push.ACTION_PUSH_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "com.urbanairship.push.ACTION_PUSH_REGISTRATION_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "com.urbanairship.push.ACTION_UPDATE_REGISTRATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "com.urbanairship.push.ACTION_START_REGISTRATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "com.urbanairship.push.ACTION_RETRY_CHANNEL_REGISTRATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "com.urbanairship.push.ACTION_RETRY_PUSH_REGISTRATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "com.urbanairship.push.ACTION_RETRY_UPDATE_NAMED_USER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    .line 189
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushService;->onPushReceived(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 214
    :catchall_0
    move-exception v2

    if-ltz v1, :cond_3

    .line 215
    invoke-static {v1}, Lcom/urbanairship/push/PushService;->releaseWakeLock(I)V

    :cond_3
    throw v2

    .line 192
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->onPushRegistrationFinished()V

    goto :goto_2

    .line 195
    :pswitch_2
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->onUpdateRegistration()V

    goto :goto_2

    .line 198
    :pswitch_3
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->onStartRegistration()V

    goto :goto_2

    .line 201
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushService;->onRetryChannelRegistration(Landroid/content/Intent;)V

    goto :goto_2

    .line 204
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushService;->onRetryPushRegistration(Landroid/content/Intent;)V

    goto :goto_2

    .line 207
    :pswitch_6
    invoke-direct {p0}, Lcom/urbanairship/push/PushService;->onUpdateNamedUser()V

    goto :goto_2

    .line 210
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/urbanairship/push/PushService;->onRetryUpdateNamedUser(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x541d02fb -> :sswitch_6
        -0x3bd17948 -> :sswitch_3
        -0x31706f72 -> :sswitch_7
        0xb7b64f5 -> :sswitch_1
        0x1301e38d -> :sswitch_2
        0x26ffab0e -> :sswitch_4
        0x2b9237e5 -> :sswitch_5
        0x691df704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
