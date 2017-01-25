.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
.source "GridDhtCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 0
    .param p2, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 58
    return-void
.end method


# virtual methods
.method public isDht()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->name()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "defaultDhtCache"

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Dht"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v0

    return-object v0
.end method

.method public near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    return-object v0
.end method

.method public near(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    .local p1, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    .line 98
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 76
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;)V

    .line 78
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 80
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->resetMetrics()V

    .line 83
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->start()V

    .line 84
    return-void
.end method
