.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;
.super Ljava/lang/Object;
.source "GridDhtLocalPartition.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unswapIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

.field final synthetic val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->next()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .locals 7

    .prologue
    .line 610
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 612
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 615
    .local v3, "keyBytes":[B
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    .line 617
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 619
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 621
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 623
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Ljavax/cache/CacheException;

    invoke-direct {v4, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;->lastEntry:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 630
    return-void
.end method
