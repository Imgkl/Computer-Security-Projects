.class Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet$1;
.super Ljava/lang/Object;
.source "TcpDiscoveryHeartbeatMessage.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<[B",
        "Lorg/apache/ignite/internal/util/typedef/T2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/cluster/ClusterMetrics;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet$1;->this$0:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet$1;->apply([B)Lorg/apache/ignite/internal/util/typedef/T2;

    move-result-object v0

    return-object v0
.end method

.method public apply([B)Lorg/apache/ignite/internal/util/typedef/T2;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterMetrics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 269
    .local v0, "nodeId":Ljava/util/UUID;
    new-instance v1, Lorg/apache/ignite/internal/util/typedef/T2;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/ClusterMetricsSnapshot;->deserialize([BI)Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
