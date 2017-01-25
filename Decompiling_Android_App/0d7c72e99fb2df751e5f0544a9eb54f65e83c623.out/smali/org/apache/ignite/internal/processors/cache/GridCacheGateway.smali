.class public Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
.super Ljava/lang/Object;
.source "GridCacheGateway.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 45
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 48
    return-void
.end method


# virtual methods
.method public block()V
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->stopped:Z

    .line 181
    return-void
.end method

.method public enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .locals 7
    .param p1    # Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    .local p1, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->checkWeakQueue()V

    .line 113
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 115
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v2

    .line 117
    .local v2, "preldr":Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader<TK;TV;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 118
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Grid is in invalid state to perform this operation. It either not started yet or has already being or have stopped [gridName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .end local v2    # "preldr":Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader<TK;TV;>;"
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to wait for cache preloader start [cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 115
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .restart local v2    # "preldr":Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;, "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onEnter()V

    .line 131
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 133
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->stopped:Z

    if-eqz v4, :cond_3

    .line 134
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 136
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dynamic cache has been stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_3
    :try_start_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v3

    .line 145
    .local v3, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-nez v3, :cond_4

    if-eqz p1, :cond_5

    .line 146
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    :cond_5
    return-object v3

    .line 150
    .end local v3    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 153
    throw v1
.end method

.method public enter()V
    .locals 3

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onEnter()V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 59
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->stopped:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dynamic cache has been stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    return-void
.end method

.method public enterIfNotClosed()Z
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onEnter()V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 79
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->stopped:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public leave()V
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->contextReset()V

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->closed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    .local p1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->contextReset()V

    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->unwindEvicts(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method

.method public onStopped()V
    .locals 4

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    const/4 v1, 0x0

    .line 190
    .local v1, "interrupted":Z
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 207
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 212
    return-void

    .line 194
    :cond_1
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ignore":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    const/4 v1, 0x1

    .line 198
    goto :goto_0

    .line 210
    .end local v0    # "ignore":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v2
.end method
