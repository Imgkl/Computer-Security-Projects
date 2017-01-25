.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;
.super Ljava/lang/Object;
.source "DataStreamerUpdateJob.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridPlainCallable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cacheName:Ljava/lang/String;

.field private final col:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final ignoreDepOwnership:Z

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final rcvr:Lorg/apache/ignite/stream/StreamReceiver;

.field private final skipStore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/Collection;ZZLorg/apache/ignite/stream/StreamReceiver;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p3, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "ignoreDepOwnership"    # Z
    .param p6, "skipStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;ZZ",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p4, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .local p7, "rcvr":Lorg/apache/ignite/stream/StreamReceiver;, "Lorg/apache/ignite/stream/StreamReceiver<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 73
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    .line 75
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p7, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_2
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->cacheName:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->col:Ljava/util/Collection;

    .line 80
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ignoreDepOwnership:Z

    .line 81
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->skipStore:Z

    .line 82
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    .line 83
    return-void
.end method

.method private unwrapEntries()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 88
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running put job [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->col:Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->cacheName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v0

    .line 105
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->skipStore:Z

    if-eqz v6, :cond_1

    .line 106
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->withSkipStore()Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 108
    .restart local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
    :cond_1
    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ignoreDepOwnership:Z

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 112
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 114
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->col:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 115
    .local v3, "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 117
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    .line 119
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v5, :cond_3

    .line 120
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catchall_0
    move-exception v6

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ignoreDepOwnership:Z

    if-eqz v7, :cond_4

    .line 139
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 141
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 142
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update job finished on node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_5
    throw v6

    .line 123
    .restart local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->unwrapEntries()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 124
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->col:Ljava/util/Collection;

    new-instance v7, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;

    invoke-direct {v7, p0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    .line 130
    .local v2, "col0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    invoke-interface {v6, v0, v2}, Lorg/apache/ignite/stream/StreamReceiver;->receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v2    # "col0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry;>;"
    :goto_1
    const/4 v6, 0x0

    .line 138
    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ignoreDepOwnership:Z

    if-eqz v7, :cond_7

    .line 139
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership(Z)V

    .line 141
    :cond_7
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 142
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update job finished on node: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_8
    return-object v6

    .line 133
    :cond_9
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->col:Ljava/util/Collection;

    invoke-interface {v6, v0, v7}, Lorg/apache/ignite/stream/StreamReceiver;->receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
