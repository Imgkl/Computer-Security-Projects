.class public Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
.super Ljava/lang/Object;
.source "GridClientTopology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final attrCache:Z

.field private final exec:Ljava/util/concurrent/ExecutorService;

.field private lastError:Lorg/apache/ignite/internal/client/GridClientException;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final metricsCache:Z

.field private nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final prot:Lorg/apache/ignite/internal/client/GridClientProtocol;

.field private final routerAddrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topLsnrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientTopologyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->$assertionsDisabled:Z

    .line 39
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->log:Ljava/util/logging/Logger;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/client/GridClientConfiguration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;

    .line 70
    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;

    const-string v1, "top-lsnr"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/impl/GridClientThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->exec:Ljava/util/concurrent/ExecutorService;

    .line 79
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableMetricsCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->metricsCache:Z

    .line 80
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->isEnableAttributesCache()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->attrCache:Z

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prot:Lorg/apache/ignite/internal/client/GridClientProtocol;

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getRouters()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getServers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getRouters()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .param p1, "x1"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prepareNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;

    return-object v0
.end method

.method private notifyEvents(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "evts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->exec:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$2;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Iterable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to notify event listeners on topology change since client is shutting down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .locals 11
    .param p1, "node"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 358
    iget-boolean v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->metricsCache:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->attrCache:Z

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attributes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->metrics()Lorg/apache/ignite/internal/client/GridClientNodeMetrics;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    move v2, v7

    .line 362
    .local v2, "noAttrsAndMetrics":Z
    :goto_0
    if-eqz v2, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->connectable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 383
    .end local p1    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :goto_1
    return-object p1

    .end local v2    # "noAttrsAndMetrics":Z
    .restart local p1    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :cond_2
    move v2, v8

    .line 358
    goto :goto_0

    .line 366
    .restart local v2    # "noAttrsAndMetrics":Z
    :cond_3
    iget-boolean v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->attrCache:Z

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iget-boolean v9, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->metricsCache:Z

    if-nez v9, :cond_9

    move v9, v7

    :goto_3
    invoke-static {p1, v6, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->builder(Lorg/apache/ignite/internal/client/GridClientNode;ZZ)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    move-result-object v3

    .line 368
    .local v3, "nodeBuilder":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prot:Lorg/apache/ignite/internal/client/GridClientProtocol;

    invoke-virtual {p1, v6, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 369
    .local v0, "addr":Ljava/net/InetSocketAddress;
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_5
    move v5, v7

    .line 373
    .local v5, "router":Z
    :goto_4
    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->allLocalMACs()Ljava/util/Collection;

    move-result-object v6

    const-string v9, "org.apache.ignite.macs"

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lorg/apache/ignite/internal/util/typedef/F;->containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_6
    move v4, v7

    .line 376
    .local v4, "reachable":Z
    :goto_5
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 377
    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->connectable(Z)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;

    .line 383
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v4    # "reachable":Z
    .end local v5    # "router":Z
    :cond_7
    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;->build()Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object p1

    goto/16 :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "nodeBuilder":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    :cond_8
    move v6, v8

    .line 366
    goto/16 :goto_2

    :cond_9
    move v9, v8

    goto/16 :goto_3

    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nodeBuilder":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl$Builder;
    :cond_a
    move v5, v8

    .line 369
    goto :goto_4

    .restart local v5    # "router":Z
    :cond_b
    move v4, v8

    .line 373
    goto :goto_5
.end method


# virtual methods
.method public addTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public fail(Lorg/apache/ignite/internal/client/GridClientException;)V
    .locals 5
    .param p1, "cause"    # Lorg/apache/ignite/internal/client/GridClientException;

    .prologue
    .line 203
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    .line 208
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 209
    .local v1, "n":Lorg/apache/ignite/internal/client/GridClientNode;
    new-instance v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->notifyEvents(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "n":Lorg/apache/ignite/internal/client/GridClientNode;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 211
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 216
    return-void
.end method

.method public failed()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 338
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 3
    .param p1, "id"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 258
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Topology is failed [protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prot:Lorg/apache/ignite/internal/client/GridClientProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", routers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->routerAddrs:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientException;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 267
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public nodeFailed(Ljava/util/UUID;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 224
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 229
    .local v1, "nodeDeleted":Z
    const/4 v0, 0x0

    .line 232
    .local v0, "deleted":Lorg/apache/ignite/internal/client/GridClientNode;
    if-eqz v1, :cond_0

    .line 233
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 235
    .local v2, "updatedTop":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deleted":Lorg/apache/ignite/internal/client/GridClientNode;
    check-cast v0, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 239
    .restart local v0    # "deleted":Lorg/apache/ignite/internal/client/GridClientNode;
    iput-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    .line 242
    .end local v2    # "updatedTop":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    :cond_0
    if-eqz v1, :cond_1

    .line 243
    new-instance v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->notifyEvents(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 248
    return-void

    .line 246
    .end local v0    # "deleted":Lorg/apache/ignite/internal/client/GridClientNode;
    .end local v1    # "nodeDeleted":Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public nodes()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 317
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;

    const-string v1, "Latest topology update failed."

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientException;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 324
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public nodes(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/UUID;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 284
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 286
    .local v3, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 289
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    if-eqz v4, :cond_1

    .line 290
    new-instance v4, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;

    const-string v5, "Latest topology update failed."

    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    invoke-direct {v4, v5, v6}, Lorg/apache/ignite/internal/client/GridClientDisconnectedException;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/client/GridClientException;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 293
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 294
    .local v1, "id":Ljava/util/UUID;
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 296
    .local v2, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    if-eqz v2, :cond_2

    .line 297
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v1    # "id":Ljava/util/UUID;
    .end local v2    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3
.end method

.method public removeTopologyListener(Lorg/apache/ignite/internal/client/GridClientTopologyListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/client/GridClientTopologyListener;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 346
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->exec:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->log:Ljava/util/logging/Logger;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;)V

    .line 347
    return-void
.end method

.method public topologyListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientTopologyListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->topLsnrs:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public updateNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 6
    .param p1, "node"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 123
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    .local v0, "newNode":Z
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->prepareNode(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    move-result-object v1

    .line 128
    .local v1, "preparedNode":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    if-nez v0, :cond_0

    iget-boolean v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->metricsCache:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->attrCache:Z

    if-eqz v3, :cond_1

    .line 129
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 131
    .local v2, "updatedTop":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iput-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    .line 136
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    .line 139
    .end local v2    # "updatedTop":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 140
    new-instance v3, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->notifyEvents(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 123
    .end local v0    # "newNode":Z
    .end local v1    # "preparedNode":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public updateTopology(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "nodeList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 158
    .local v1, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 161
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v5, "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    new-instance v6, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;)V

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v4

    .line 170
    .local v4, "preparedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .line 171
    .local v3, "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;->nodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    new-instance v6, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v7, v3, v8}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "node":Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;
    .end local v4    # "preparedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    .end local v5    # "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 178
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "preparedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    .restart local v5    # "updated":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 180
    new-instance v7, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/client/GridClientNode;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v6, v9}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;>;"
    :cond_3
    iput-object v5, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->nodes:Ljava/util/Map;

    .line 184
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lastError:Lorg/apache/ignite/internal/client/GridClientException;

    .line 186
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 187
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->notifyEvents(Ljava/lang/Iterable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4
.end method
