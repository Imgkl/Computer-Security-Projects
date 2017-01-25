.class final Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$2;
.super Ljava/lang/Object;
.source "TcpDiscoveryNodesRing.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/PN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$2;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->isClient()Z

    move-result v0

    return v0
.end method
