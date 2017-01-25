.class final Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$1;
.super Ljava/lang/Object;
.source "TcpDiscoveryNodesRing.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing$1;->apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 37
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v0

    return v0
.end method
