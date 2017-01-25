.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
.super Ljava/lang/Object;
.source "GridCacheTxFinishSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;,
        Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;,
        Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;
    }
.end annotation

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


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private threadMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync",
            "<TK;TV;>.ThreadFinishSync;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 51
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;

    .line 52
    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method


# virtual methods
.method public awaitAckAsync(Ljava/util/UUID;J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    .line 77
    .local v0, "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->awaitAckAsync(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public onAckReceived(Ljava/util/UUID;J)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    .line 92
    .local v0, "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->onReceive(Ljava/util/UUID;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onFinishSend(Ljava/util/UUID;J)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    .line 63
    .local v0, "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    if-nez v0, :cond_0

    .line 64
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, p3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;JLorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;)V

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    .line 66
    .restart local v0    # "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->onSend(Ljava/util/UUID;)V

    .line 67
    return-void
.end method

.method public onNodeLeft(Ljava/util/UUID;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

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

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;

    .line 103
    .local v1, "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;->onNodeLeft(Ljava/util/UUID;)V

    goto :goto_0

    .line 104
    .end local v1    # "threadSync":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$ThreadFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.ThreadFinishSync;"
    :cond_0
    return-void
.end method
