.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
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
        "<[B[B>;>;"
    }
.end annotation


# instance fields
.field private cur:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<[B[B>;"
        }
    .end annotation
.end field

.field private done:Z

.field private it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field private offheapFlag:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1233
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 1236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->offheapFlag:Z

    .line 1243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawOffHeapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 1245
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->advance()V

    .line 1246
    return-void
.end method

.method private advance()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1249
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1254
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->offheapFlag:Z

    if-eqz v0, :cond_2

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->offheapFlag:Z

    .line 1257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawSwapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 1259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1262
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->done:Z

    goto :goto_0

    .line 1266
    :cond_2
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->done:Z

    goto :goto_0
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
    .line 1297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1299
    :cond_0
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->onNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<[B[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1270
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->done:Z

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1273
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->cur:Ljava/util/Map$Entry;

    .line 1275
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->advance()V

    .line 1277
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->cur:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected onRemove()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1285
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->offheapFlag:Z

    if-eqz v2, :cond_0

    .line 1286
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v3, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->cur:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 1288
    .local v0, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 1290
    .local v1, "part":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v1, v0, v4}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->removex(Ljava/lang/String;ILjava/lang/Object;[B)Z

    .line 1294
    .end local v0    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v1    # "part":I
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->removeX()V

    goto :goto_0
.end method
