.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private cur:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1466
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->onNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1409
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1411
    .local v0, "cur0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;Ljava/util/Map$Entry;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    .line 1441
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    return-object v1
.end method

.method protected onRemove()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1449
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 1450
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method next() has not yet been called, or the remove() method has already been called after the last call to the next() method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    :goto_0
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    .line 1462
    return-void

    .line 1457
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removex(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;->cur:Ljava/util/Map$Entry;

    throw v0
.end method
