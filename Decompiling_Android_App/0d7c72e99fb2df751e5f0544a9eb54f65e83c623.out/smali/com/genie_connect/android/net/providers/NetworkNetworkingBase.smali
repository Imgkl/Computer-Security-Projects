.class public abstract Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;
.super Ljava/lang/Object;
.source "NetworkNetworkingBase.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mNetDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

.field protected final mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

.field private mVisitorId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    .line 49
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mNetDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    .line 50
    return-void
.end method


# virtual methods
.method protected getNamespace()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/providers/NetworkSender;->getNamespace()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getVersion()I
.end method

.method protected declared-synchronized getVisitorId()J
    .locals 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mVisitorId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 62
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-nez v0, :cond_1

    .line 63
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mVisitorId:Ljava/lang/Long;

    .line 69
    .end local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mVisitorId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 65
    .restart local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/net/providers/NetworkNetworkingBase;->mVisitorId:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
