.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;
.super Ljava/lang/Object;
.source "TcpDiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->cleanIpFinder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
        "Ljava/util/Collection",
        "<",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;)V
    .locals 0

    .prologue
    .line 2356
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2356
    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;->apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/Collection;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2358
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Ljava/util/LinkedHashSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
