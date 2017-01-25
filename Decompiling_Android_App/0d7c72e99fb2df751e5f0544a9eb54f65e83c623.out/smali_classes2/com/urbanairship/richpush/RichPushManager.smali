.class public Lcom/urbanairship/richpush/RichPushManager;
.super Lcom/urbanairship/BaseManager;
.source "RichPushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;,
        Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;,
        Lcom/urbanairship/richpush/RichPushManager$Listener;
    }
.end annotation


# static fields
.field public static final RICH_PUSH_KEY:Ljava/lang/String; = "_uamid"

.field static final USER_UPDATE_INTERVAL_MS:J = 0x5265c00L


# instance fields
.field private foregroundReceiver:Landroid/content/BroadcastReceiver;

.field private final inbox:Lcom/urbanairship/richpush/RichPushInbox;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final user:Lcom/urbanairship/richpush/RichPushUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 81
    new-instance v0, Lcom/urbanairship/richpush/RichPushUser;

    invoke-direct {v0, p2}, Lcom/urbanairship/richpush/RichPushUser;-><init>(Lcom/urbanairship/PreferenceDataStore;)V

    new-instance v1, Lcom/urbanairship/richpush/RichPushInbox;

    invoke-direct {v1, p1}, Lcom/urbanairship/richpush/RichPushInbox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;-><init>(Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushInbox;)V

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/urbanairship/richpush/RichPushUser;Lcom/urbanairship/richpush/RichPushInbox;)V
    .locals 1
    .param p1, "user"    # Lcom/urbanairship/richpush/RichPushUser;
    .param p2, "inbox"    # Lcom/urbanairship/richpush/RichPushInbox;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/urbanairship/BaseManager;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    .line 91
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;

    .line 92
    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushManager;->onMessagesUpdate(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/richpush/RichPushManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/urbanairship/richpush/RichPushManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/urbanairship/richpush/RichPushManager;->onUserUpdate(Z)V

    return-void
.end method

.method private getListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/richpush/RichPushManager$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 320
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isRichPushMessage(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 375
    const-string v0, "_uamid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRichPushMessage(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "_uamid"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onMessagesUpdate(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/richpush/RichPushManager$Listener;

    .line 347
    .local v2, "l":Lcom/urbanairship/richpush/RichPushManager$Listener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/urbanairship/richpush/RichPushManager$Listener;->onUpdateMessages(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RichPushManager - Unable to complete onUpdateMessages() callback."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "l":Lcom/urbanairship/richpush/RichPushManager$Listener;
    :cond_0
    return-void
.end method

.method private onUserUpdate(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/urbanairship/richpush/RichPushManager$Listener;

    .line 332
    .local v2, "l":Lcom/urbanairship/richpush/RichPushManager$Listener;
    :try_start_0
    invoke-interface {v2, p1}, Lcom/urbanairship/richpush/RichPushManager$Listener;->onUpdateUser(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RichPushManager - Unable to complete onUpdateUser() callback."

    invoke-static {v3, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "l":Lcom/urbanairship/richpush/RichPushManager$Listener;
    :cond_0
    return-void
.end method

.method private refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 3
    .param p1, "force"    # Z
    .param p2, "callback"    # Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->isRefreshingMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 247
    const-string v1, "Skipping refresh messages, messages are already refreshing. Callback will not be triggered."

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 253
    .local v0, "requestNumber":I
    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    new-instance v2, Lcom/urbanairship/richpush/RichPushManager$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/urbanairship/richpush/RichPushManager$2;-><init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    invoke-direct {p0, v1, v2}, Lcom/urbanairship/richpush/RichPushManager;->startUpdateService(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method private startUpdateService(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 301
    const-string v2, "RichPushManager - Starting update service."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    if-eqz p2, :cond_0

    .line 307
    const-string v2, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushManager$Listener;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRichPushInbox()Lcom/urbanairship/richpush/RichPushInbox;
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->user:Lcom/urbanairship/richpush/RichPushUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->inbox:Lcom/urbanairship/richpush/RichPushInbox;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushInbox;->updateCache()V

    .line 98
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->updateUserIfNecessary()V

    .line 100
    new-instance v2, Lcom/urbanairship/richpush/RichPushManager$1;

    invoke-direct {v2, p0}, Lcom/urbanairship/richpush/RichPushManager$1;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    iput-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 109
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.urbanairship.analytics.APP_FOREGROUND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public isRefreshingMessages()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->refreshMessageRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshMessages()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(Z)V

    .line 201
    return-void
.end method

.method public refreshMessages(Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 229
    return-void
.end method

.method public refreshMessages(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushManager;->refreshMessages(ZLcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V

    .line 213
    return-void
.end method

.method public removeListener(Lcom/urbanairship/richpush/RichPushManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/urbanairship/richpush/RichPushManager$Listener;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected tearDown()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushManager;->foregroundReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    :cond_0
    return-void
.end method

.method public updateUser()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "com.urbanairship.richpush.USER_UPDATE"

    new-instance v1, Lcom/urbanairship/richpush/RichPushManager$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/richpush/RichPushManager$3;-><init>(Lcom/urbanairship/richpush/RichPushManager;)V

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/richpush/RichPushManager;->startUpdateService(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 280
    return-void
.end method

.method public updateUserIfNecessary()V
    .locals 6

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->getRichPushUser()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/richpush/RichPushUser;->getLastUpdateTime()J

    move-result-wide v0

    .line 288
    .local v0, "lastUpdateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    .local v2, "now":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushManager;->updateUser()V

    .line 292
    :cond_1
    return-void
.end method
