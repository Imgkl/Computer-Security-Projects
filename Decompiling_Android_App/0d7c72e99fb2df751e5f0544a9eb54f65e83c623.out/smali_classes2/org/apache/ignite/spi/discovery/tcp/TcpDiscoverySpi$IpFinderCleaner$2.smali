.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;
.super Ljava/lang/Object;
.source "TcpDiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


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
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private final pingResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;)V
    .locals 1

    .prologue
    .line 2372
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->pingResMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2372
    check-cast p1, Ljava/net/InetSocketAddress;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->apply(Ljava/net/InetSocketAddress;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/net/InetSocketAddress;)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2377
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->pingResMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2379
    .local v1, "res":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 2381
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/InetSocketAddress;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2391
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->pingResMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    return v2

    :cond_1
    move v4, v3

    .line 2381
    goto :goto_0

    .line 2383
    :catch_0
    move-exception v0

    .line 2384
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2385
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->this$1:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to ping node [addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2388
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2391
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->pingResMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;->pingResMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_3
    move v2, v3

    .line 2395
    goto :goto_2
.end method
