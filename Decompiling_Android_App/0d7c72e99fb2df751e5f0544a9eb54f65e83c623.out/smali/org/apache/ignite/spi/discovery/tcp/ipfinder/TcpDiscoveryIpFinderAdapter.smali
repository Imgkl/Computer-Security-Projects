.class public abstract Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;
.super Ljava/lang/Object;
.source "TcpDiscoveryIpFinderAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;


# instance fields
.field private shared:Z

.field private volatile spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public initializeLocalAddresses(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->registerAddresses(Ljava/util/Collection;)V

    .line 51
    return-void
.end method

.method public isShared()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->shared:Z

    return v0
.end method

.method public onSpiContextDestroyed()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 46
    return-void
.end method

.method public onSpiContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 0
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 41
    return-void
.end method

.method public setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 66
    iput-boolean p1, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->shared:Z

    .line 67
    return-void
.end method

.method protected spiContext()Lorg/apache/ignite/spi/IgniteSpiContext;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinderAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
