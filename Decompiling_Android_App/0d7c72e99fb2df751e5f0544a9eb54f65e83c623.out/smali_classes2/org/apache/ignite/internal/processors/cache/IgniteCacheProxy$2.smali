.class Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "IgniteCacheProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->query(Lorg/apache/ignite/cache/query/Query;Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/cache/query/QueryCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Ljavax/cache/Cache$Entry",
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

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;)V
    .locals 0

    .prologue
    .line 326
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

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
    .line 346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->cancel()Z

    .line 347
    return-void
.end method

.method protected onHasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->cur:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->val$fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->cur:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
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
    .line 326
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->onNext()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Ljavax/cache/Cache$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->onHasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->cur:Ljava/util/Map$Entry;

    .line 336
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$2;->cur:Ljava/util/Map$Entry;

    .line 338
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
