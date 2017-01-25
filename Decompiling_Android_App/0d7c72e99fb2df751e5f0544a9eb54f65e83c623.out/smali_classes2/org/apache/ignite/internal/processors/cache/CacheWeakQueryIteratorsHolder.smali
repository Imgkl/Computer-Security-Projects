.class public Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;
.super Ljava/lang/Object;
.source "CacheWeakQueryIteratorsHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final futs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 37
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->log:Lorg/apache/ignite/IgniteLogger;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public checkWeakQueue()V
    .locals 7

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    .local v3, "itRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 84
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v4, v0

    .line 86
    .local v4, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 88
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<*>;"
    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<*>;"
    .end local v4    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;>;"
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to close iterator."

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    return-void
.end method

.method public clearQueries()V
    .locals 5

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 103
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<*>;"
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to close iterator."

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<*>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 111
    return-void
.end method

.method public iterator(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;)Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter",
            "<TT;TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<TV;>;"
    .local p2, "convert":Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;, "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter<TT;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;)V

    .line 59
    .local v0, "it":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    # invokes: Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakReference()Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->access$000(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 61
    .local v1, "old":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 63
    :cond_0
    return-object v0
.end method

.method public removeIterator(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;)V
    .locals 2
    .param p1, "it"    # Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;, "Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder<TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->futs:Ljava/util/Map;

    # invokes: Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->weakReference()Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->access$000(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;->close()V

    .line 75
    return-void
.end method
