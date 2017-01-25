.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field private cur:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

.field final synthetic val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 0

    .prologue
    .line 1503
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

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
    .line 1526
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 1527
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

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
    .line 1503
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->onNext()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 3

    .prologue
    .line 1508
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v2, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->val$it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->cur:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1510
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;->cur:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onRemove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
