.class public Lcom/genie_connect/android/db/datastore/Datastore;
.super Ljava/lang/Object;
.source "Datastore.java"


# static fields
.field public static final DATA_INSTANCE_PRIMARY:I = 0x0

.field public static final DATA_INSTANCE_SECONDARY:I = 0x1

.field public static final PREF_ACTIVE_INSTANCE_KEY:Ljava/lang/String; = "active_data_instance"


# instance fields
.field private mApplyingUpdate:Z

.field private volatile mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

.field private mContext:Landroid/content/Context;

.field private volatile mCurrentInstance:I

.field private final mDbPrimary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mDbSecondary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private volatile mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mCurrentInstance:I

    .line 90
    iput-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbPrimary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 91
    iput-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbSecondary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
        .annotation runtime Ljavax/inject/Named;
            value = "defaultPrefs"
        .end annotation
    .end param
    .param p3, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v3, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mCurrentInstance:I

    .line 97
    const-string v0, "^ DATA: new Datastore"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 98
    iput-object p1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mPrefs:Landroid/content/SharedPreferences;

    .line 100
    invoke-static {}, Lcom/genie_connect/android/db/datastore/ConfigManagerSingleton;->getInstance()Lcom/genie_connect/android/db/datastore/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    .line 101
    iput-object p3, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 102
    new-instance v0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    const-string v1, "eventgenie.db"

    const-string v2, "eventgenie_s.db"

    invoke-direct {v0, p1, v1, v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbPrimary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 103
    new-instance v0, Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    const-string v1, "eventgenie_secondary.db"

    const-string v2, "eventgenie_secondary_s.db"

    invoke-direct {v0, p1, v1, v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbSecondary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 104
    const-string v0, "active_data_instance"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->setCurrentInstancePointer(I)V

    .line 105
    return-void
.end method

.method private declared-synchronized loadConfig(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ CONFIG: loadConfig() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/genie_connect/android/db/config/AppConfig;->getLocalConfigJSON(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setCurrentInstancePointer(I)V
    .locals 1
    .param p1, "instance"    # I

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mCurrentInstance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static updateBadgeCount(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 239
    return-void
.end method


# virtual methods
.method public declared-synchronized clearTemporaryData()V
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v2, "^ APP: Deleting application cache"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 110
    .local v0, "namespace":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V

    .line 111
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/genie_connect/android/net/providers/DeltaUtils;->clearDeltasDirectory(Landroid/content/Context;Ljava/lang/Long;)Z

    .line 112
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->clearDirectory(Landroid/content/Context;J)V

    .line 113
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "namespace":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getActiveDataInstance()I
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mCurrentInstance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v0

    .line 127
    .local v0, "thisInstance":I
    packed-switch v0, :pswitch_data_0

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Datastore getConfig() requested instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0    # "thisInstance":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 129
    .restart local v0    # "thisInstance":I
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 131
    :goto_0
    monitor-exit p0

    return-object v1

    :pswitch_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/datastore/Datastore;->getSecondaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDataVersion()Lcom/genie_connect/common/services/dss/Version;
    .locals 9

    .prologue
    .line 242
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    sget v8, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "versionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    .line 245
    .local v1, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    const/4 v0, 0x0

    .line 248
    .local v0, "c":Luk/co/alt236/easycursor/EasyCursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDataversions()Lcom/genie_connect/android/db/access/DbDataversions;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/genie_connect/android/db/access/DbDataversions;->getDataVersion(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 249
    new-instance v3, Lcom/genie_connect/common/services/dss/Version;

    const-string/jumbo v5, "timestamp_adjusted"

    invoke-interface {v0, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/services/dss/Version;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v3, "v":Lcom/genie_connect/common/services/dss/Version;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v3    # "v":Lcom/genie_connect/common/services/dss/Version;
    :goto_0
    return-object v3

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 257
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDB(I)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 3
    .param p1, "instance"    # I

    .prologue
    .line 142
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Datastore getDB() requested instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbPrimary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-object v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mDbSecondary:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getMapItemStore()Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 159
    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    .local v0, "thisInstance":I
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigPrimary()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    new-instance v2, Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->loadConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/datastore/ConfigManager;->setConfigPrimary(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigPrimary()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->loadConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->initFromJson(Lorg/json/JSONObject;)V

    .line 167
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/Datastore;->updateBadgeCount(Landroid/content/Context;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigPrimary()Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSecondaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reload"    # Z

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x1

    .line 176
    .local v0, "thisInstance":I
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    new-instance v2, Lcom/genie_connect/android/db/config/AppConfig;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->loadConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/datastore/ConfigManager;->setConfigSecondary(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 180
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->loadConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->initFromJson(Lorg/json/JSONObject;)V

    .line 182
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/Datastore;->updateBadgeCount(Landroid/content/Context;)V

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isApplyingUpdate()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mApplyingUpdate:Z

    return v0
.end method

.method public declared-synchronized isMultiEventActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DATA: isMultieventActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/ConfigManager;->getConfigSecondary()Lcom/genie_connect/android/db/config/AppConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 188
    goto :goto_0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public performPostDeltaApplyJobs(Ljava/lang/String;)V
    .locals 8
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 265
    .local v2, "startTime":J
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->updateCurrentVersion(Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v5, p1, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    iget-object v6, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/genie_connect/android/services/dss/DataSyncService;->performFileUpdates(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/android/db/config/AppConfig;)Z

    .line 273
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/genie_connect/android/db/config/IconManager;->clearIconOverridesCache(Landroid/content/Context;J)V

    .line 276
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 277
    .local v0, "elapsedTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ DSS-D: Finished post Delta Jobs. Estimated Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v0, v1, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getCurrentDataVersion()Lcom/genie_connect/common/services/dss/Version;

    move-result-object v4

    .line 280
    .local v4, "v":Lcom/genie_connect/common/services/dss/Version;
    iget-object v5, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/genie_connect/common/services/dss/Version;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyDataVersionUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    .line 281
    return-void
.end method

.method public declared-synchronized setActiveDataInstance(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # I
    .param p3, "clearSecondEvent"    # Z

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DATA: setActiveInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/eventgenie/android/eventbus/events/AppChangedEvent;

    invoke-direct {v3}, Lcom/eventgenie/android/eventbus/events/AppChangedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 209
    :cond_0
    invoke-direct {p0, p2}, Lcom/genie_connect/android/db/datastore/Datastore;->setCurrentInstancePointer(I)V

    .line 210
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 211
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "active_data_instance"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v2, "data_update_available"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v2, "data_update_version"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v2

    const-class v3, Lcom/genie_connect/android/db/access/DaoProvider;

    invoke-virtual {v2, v3}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/access/DaoProvider;

    invoke-interface {v2}, Lcom/genie_connect/android/db/access/DaoProvider;->refreshDatabase()V

    .line 223
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mConfigManager:Lcom/genie_connect/android/db/datastore/ConfigManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/datastore/ConfigManager;->setConfigSecondary(Lcom/genie_connect/android/db/config/AppConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    monitor-exit p0

    return-void

    .line 203
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setApplyingUpdate(Z)V
    .locals 0
    .param p1, "applyingUpdate"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mApplyingUpdate:Z

    .line 311
    return-void
.end method

.method public declared-synchronized setMapItemStore(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)V
    .locals 1
    .param p1, "store"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCurrentVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v1, "data_update_available"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "data_update_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DSS: UPDATED TO VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public updateLastCheckedPreference(ZLjava/lang/String;)V
    .locals 4
    .param p1, "upToDate"    # Z
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "date":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/db/datastore/Datastore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 298
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_checked"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v3, "data_update_available"

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v2, "data_update_version"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    return-void

    .line 299
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
