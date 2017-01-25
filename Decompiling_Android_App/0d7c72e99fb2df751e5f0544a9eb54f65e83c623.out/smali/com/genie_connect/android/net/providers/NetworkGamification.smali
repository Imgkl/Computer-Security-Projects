.class public Lcom/genie_connect/android/net/providers/NetworkGamification;
.super Ljava/lang/Object;
.source "NetworkGamification.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mNetDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

.field protected final mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    .line 55
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    .line 56
    return-void
.end method


# virtual methods
.method public getComparison(Ljava/lang/String;JJJ)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 6
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "entityId"    # J
    .param p4, "playerId1"    # J
    .param p6, "playerId2"    # J

    .prologue
    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/secure/rest/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/rpc/progress_comparison"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "url":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_0

    .line 91
    :try_start_0
    const-string v4, "playerone"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    :goto_0
    const-string v4, "playertwo"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    const-string v4, "apps"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v5, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;

    invoke-virtual {v4, v3, v2, v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v4

    .line 103
    :goto_2
    return-object v4

    .line 93
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    .line 94
    .local v0, "id":J
    const-string v4, "playerone"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/genie_connect/android/net/JsonPayloadHelper;->add(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "id":J
    :catch_0
    move-exception v4

    goto :goto_1

    .line 103
    :cond_1
    iget-object v4, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v5, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    invoke-virtual {v4, v3, v2, v5}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v4

    goto :goto_2
.end method

.method public getLeaderboard(Ljava/lang/String;J)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .locals 4
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "entityId"    # J

    .prologue
    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v0, "payload":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/secure/rest/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rpc/game_leaderboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "url":Ljava/lang/String;
    const-string v2, "apps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v3, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;

    invoke-virtual {v2, v1, v0, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .line 71
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/genie_connect/android/net/providers/NetworkGamification;->mNetSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    const-class v3, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    invoke-virtual {v2, v1, v0, v3}, Lcom/genie_connect/android/net/providers/NetworkSender;->postUpdateForGson(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    goto :goto_0
.end method
