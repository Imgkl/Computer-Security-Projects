.class public Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;
.super Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;
.source "IgniteClusterImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/cluster/IgniteClusterEx;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

.field private nodeLoc:Ljava/util/concurrent/ConcurrentMap;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/4 v1, 0x0

    .line 67
    move-object v0, v1

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 69
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/cluster/ClusterNodeLocalMapImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodeLoc:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;
    .param p1, "x1"    # Ljava/util/concurrent/ConcurrentLinkedQueue;
    .param p2, "x2"    # Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
    .param p3, "x3"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->runNextNodeCallable(Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method private neighbors()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v3, "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const-string v5, "org.apache.ignite.macs"

    invoke-interface {v4, v5}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
    .local v1, "macs":Ljava/lang/String;
    sget-boolean v4, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 458
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forOthers(Lorg/apache/ignite/cluster/ClusterNode;[Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 459
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v4, "org.apache.ignite.macs"

    invoke-interface {v2, v4}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v3
.end method

.method private runNextNodeCallable(Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 4
    .param p3, "cnt"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;",
            ">;",
            "Lorg/apache/ignite/internal/util/future/GridCompoundFuture",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    .local p2, "comp":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;>;>;"
    const/4 v2, 0x1

    .line 479
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;

    .line 481
    .local v0, "call":Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;
    if-nez v0, :cond_0

    .line 482
    const/4 v2, 0x0

    .line 497
    :goto_0
    return v2

    .line 484
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 486
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;>;"
    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 488
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    .line 489
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 491
    :cond_1
    new-instance v3, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl$1;-><init>(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v1, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method


# virtual methods
.method public clearNodeMap()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodeLoc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 505
    return-void
.end method

.method public forLocal()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 79
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/cluster/ClusterGroupAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public future()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asynchronous mode is not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAsync()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 93
    .local v0, "node":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v1, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v1

    .restart local v0    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-object v0
.end method

.method public mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v1, "key"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v1
.end method

.method public mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v1
.end method

.method public nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodeLoc:Ljava/util/concurrent/ConcurrentMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 117
    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridKernalContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 510
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    return-object v0
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->jobMetric()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->reset()V

    .line 276
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->resetMetrics()V

    .line 277
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resetMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .line 282
    return-void

    .line 280
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public restartNodes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 251
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public restartNodes(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public startNodes(Ljava/io/File;ZII)Ljava/util/Collection;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "restart"    # Z
    .param p3, "timeout"    # I
    .param p4, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZII)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->startNodesAsync(Ljava/io/File;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public startNodes(Ljava/util/Collection;Ljava/util/Map;ZII)Ljava/util/Collection;
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "restart"    # Z
    .param p4, "timeout"    # I
    .param p5, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZII)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->startNodesAsync(Ljava/util/Collection;Ljava/util/Map;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method startNodesAsync(Ljava/io/File;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "restart"    # Z
    .param p3, "timeout"    # I
    .param p4, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZII)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "file"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "file doesn\'t exist."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "file is a directory."

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 317
    :try_start_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->parseFile(Ljava/io/File;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v7

    .line 319
    .local v7, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v7}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->startNodesAsync(Ljava/util/Collection;Ljava/util/Map;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    .end local v7    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method startNodesAsync(Ljava/util/Collection;Ljava/util/Map;ZII)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 25
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "restart"    # Z
    .param p4, "timeout"    # I
    .param p5, "maxConn"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZII)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "hosts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "dflts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v22, "hosts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 347
    :try_start_0
    sget-object v22, Lorg/apache/ignite/internal/IgniteComponentType;->SSH:Lorg/apache/ignite/internal/IgniteComponentType;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;

    .line 349
    .local v20, "sshHelper":Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;
    invoke-static/range {p1 .. p2}, Lorg/apache/ignite/internal/util/nodestart/IgniteNodeStartUtils;->specifications(Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    .line 351
    .local v19, "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v17, "runMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;>;"
    const/4 v13, 0x0

    .line 355
    .local v13, "nodeCallCnt":I
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .local v7, "host":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 365
    .local v3, "addr":Ljava/net/InetAddress;
    const/4 v11, 0x0

    .line 367
    .local v11, "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 368
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->neighbors()Ljava/util/Collection;

    move-result-object v11

    .line 381
    :cond_1
    :goto_0
    const/16 v21, 0x1

    .line 383
    .local v21, "startIdx":I
    if-eqz v11, :cond_2

    .line 384
    if-eqz p3, :cond_6

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    if-nez v22, :cond_6

    .line 386
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v22

    const-class v23, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/cluster/ClusterGroupEmptyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :cond_2
    :goto_1
    :try_start_4
    new-instance v14, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 398
    .local v14, "nodeRuns":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;

    .line 401
    .local v18, "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    sget-boolean v22, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->$assertionsDisabled:Z

    if-nez v22, :cond_7

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->host()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    new-instance v22, Ljava/lang/AssertionError;

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v22
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v7    # "host":Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v13    # "nodeCallCnt":I
    .end local v14    # "nodeRuns":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    .end local v17    # "runMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;>;"
    .end local v18    # "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    .end local v19    # "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    .end local v20    # "sshHelper":Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;
    .end local v21    # "startIdx":I
    :catch_0
    move-exception v5

    .line 435
    .local v5, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v6, v5}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .end local v5    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_2
    return-object v6

    .line 361
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v13    # "nodeCallCnt":I
    .restart local v17    # "runMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;>;"
    .restart local v19    # "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    .restart local v20    # "sshHelper":Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;
    :catch_1
    move-exception v5

    .line 362
    .local v5, "e":Ljava/net/UnknownHostException;
    :try_start_6
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid host name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 438
    .end local v5    # "e":Ljava/net/UnknownHostException;
    .end local v7    # "host":Ljava/lang/String;
    .end local v13    # "nodeCallCnt":I
    .end local v17    # "runMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;>;"
    .end local v19    # "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    .end local v20    # "sshHelper":Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;
    :catchall_0
    move-exception v22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v22

    .line 370
    .restart local v3    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v11    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v13    # "nodeCallCnt":I
    .restart local v17    # "runMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;>;"
    .restart local v19    # "specsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;>;>;"
    .restart local v20    # "sshHelper":Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;
    :cond_4
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->nodes()Ljava/util/Collection;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->neighborhood(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    .line 371
    .local v15, "p":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/cluster/ClusterNode;

    .line 373
    .local v12, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const-string v22, "org.apache.ignite.ips"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 374
    move-object v11, v15

    .line 376
    goto/16 :goto_0

    .line 393
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v15    # "p":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v21    # "startIdx":I
    :cond_6
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    goto/16 :goto_1

    .line 403
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "nodeRuns":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    .restart local v18    # "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    :cond_7
    move/from16 v8, v21

    .local v8, "i":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;->nodes()I

    move-result v22

    move/from16 v0, v22

    if-gt v8, v0, :cond_3

    .line 404
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/util/nodestart/IgniteSshHelper;->nodeStartCallable(Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;I)Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v13, v13, 0x1

    .line 403
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 412
    .end local v3    # "addr":Ljava/net/InetAddress;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v14    # "nodeRuns":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    .end local v18    # "spec":Lorg/apache/ignite/internal/util/nodestart/IgniteRemoteStartSpecification;
    .end local v21    # "startIdx":I
    :cond_8
    if-nez v13, :cond_9

    .line 413
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 438
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    goto/16 :goto_2

    .line 418
    :cond_9
    :try_start_8
    new-instance v6, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->objectsReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>(Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 422
    .local v6, "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;>;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 425
    .local v4, "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 426
    .local v16, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    move/from16 v0, p5

    if-ge v8, v0, :cond_a

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->runNextNodeCallable(Ljava/util/concurrent/ConcurrentLinkedQueue;Lorg/apache/ignite/internal/util/future/GridCompoundFuture;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v22

    if-eqz v22, :cond_a

    .line 426
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 438
    .end local v8    # "i":I
    .end local v16    # "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lorg/apache/ignite/internal/util/nodestart/IgniteNodeCallable;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    goto/16 :goto_2

    .line 388
    .end local v4    # "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v6    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;>;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .restart local v3    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v11    # "neighbors":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v21    # "startIdx":I
    :catch_2
    move-exception v22

    goto/16 :goto_1
.end method

.method public stopNodes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->compute()Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public stopNodes(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 239
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->forNodeIds(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    .line 244
    return-void

    .line 242
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IgniteCluster [igniteName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topology(J)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->guard()V

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->unguard()V

    throw v0
.end method

.method public withAsync()Lorg/apache/ignite/IgniteCluster;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterAsyncImpl;-><init>(Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;)V

    return-object v0
.end method

.method public bridge synthetic withAsync()Lorg/apache/ignite/lang/IgniteAsyncSupport;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->withAsync()Lorg/apache/ignite/IgniteCluster;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteClusterImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 515
    return-void
.end method
