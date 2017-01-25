.class public Lcom/genie_connect/android/services/dss/DataInitialisationProvider;
.super Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;
.source "DataInitialisationProvider.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "data_init"


# instance fields
.field private final mCancelReceiver:Landroid/content/BroadcastReceiver;

.field public mOperation:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mProgressMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "progressMax"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;-><init>()V

    .line 53
    new-instance v0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider$1;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider$1;-><init>(Lcom/genie_connect/android/services/dss/DataInitialisationProvider;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput p1, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mProgressMax:I

    .line 63
    invoke-direct {p0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->registerReceiver()V

    .line 64
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.BROADCAST_DSS_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 83
    return-void
.end method


# virtual methods
.method public bridge synthetic getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/genie_connect/android/services/dss/BaseDataSyncServiceProvider;->getPersister()Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v0

    return-object v0
.end method

.method public initialiseDatabase(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)I
    .locals 9
    .param p1, "namespace"    # Ljava/lang/Long;
    .param p2, "types"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "dataVersion"    # Ljava/lang/String;
    .param p4, "isMultievent"    # Z

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_init"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 70
    .local v7, "baseDir":Ljava/io/File;
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mOperation:Lcom/genie_connect/common/services/dss/DataInitialisationOperation;

    const/4 v5, 0x0

    iget v6, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mProgressMax:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation;->initialiseDatabase(Ljava/lang/Long;[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;ZZILjava/io/File;)I
    :try_end_0
    .catch Lcom/genie_connect/common/services/dss/StrategyCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    .end local v7    # "baseDir":Ljava/io/File;
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v8

    .line 73
    .local v8, "ex":Lcom/genie_connect/common/services/dss/StrategyCreationException;
    const-string v0, "Error creating strategy for data initialisation"

    invoke-static {v0, v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/dss/DataInitialisationProvider;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method
