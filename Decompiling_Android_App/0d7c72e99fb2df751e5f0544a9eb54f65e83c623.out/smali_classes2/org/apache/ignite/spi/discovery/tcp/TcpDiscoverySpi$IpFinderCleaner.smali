.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IpFinderCleaner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2311
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 3

    .prologue
    .line 2315
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 2316
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-ip-finder-cleaner"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2318
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->setPriority(I)V

    .line 2319
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;

    .prologue
    .line 2311
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    return-void
.end method

.method private cleanIpFinder()V
    .locals 8

    .prologue
    .line 2349
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v5}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2353
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->allNodes()Ljava/util/Collection;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;

    invoke-direct {v6, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;)V

    const/4 v7, 0x0

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->flatCollections(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 2366
    .local v0, "currAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->registeredAddresses()Ljava/util/Collection;

    move-result-object v3

    .line 2369
    .local v3, "regAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;

    invoke-direct {v7, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner$2;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;)V

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    .line 2401
    .local v4, "rmvAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2402
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v5, v4}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->unregisterAddresses(Ljava/util/Collection;)V

    .line 2404
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2405
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unregistered addresses from IP finder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2409
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->notContains(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    .line 2415
    .local v2, "missingAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2416
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v5, v2}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->registerAddresses(Ljava/util/Collection;)V

    .line 2418
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2419
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered missing addresses in IP finder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    .end local v0    # "currAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v2    # "missingAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v3    # "regAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    .end local v4    # "rmvAddrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    :cond_2
    :goto_0
    return-void

    .line 2422
    :catch_0
    move-exception v1

    .line 2423
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to clean IP finder up."

    invoke-static {v5, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected body()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2324
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "IP finder cleaner has been started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2327
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2328
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2330
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v0, v1, :cond_2

    .line 2334
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2335
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopping IP finder cleaner (SPI is not connected to topology)."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2343
    :cond_1
    return-void

    .line 2340
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    invoke-direct {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$IpFinderCleaner;->cleanIpFinder()V

    goto :goto_0
.end method
