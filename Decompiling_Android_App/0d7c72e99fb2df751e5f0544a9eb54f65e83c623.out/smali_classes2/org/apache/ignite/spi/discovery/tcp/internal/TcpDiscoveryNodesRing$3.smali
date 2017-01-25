.class Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;
.super Ljava/lang/Object;
.source "TcpDiscoveryNodesRing.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->serverNodes(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

.field final synthetic val$excluded:Ljava/util/Collection;

.field final synthetic val$excludedEmpty:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;ZLjava/util/Collection;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->this$0:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    iput-boolean p2, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->val$excludedEmpty:Z

    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->val$excluded:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 624
    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 626
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->val$excludedEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$3;->val$excluded:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
