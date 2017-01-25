.class abstract Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "IgniteCacheProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TY;>;"
    }
.end annotation


# instance fields
.field private cur:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field private fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TX;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 1514
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter<TX;TY;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<TX;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 1515
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    .line 1516
    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)TY;"
        }
    .end annotation
.end method

.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1542
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter<TX;TY;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->cancel()Z

    .line 1543
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
    .line 1537
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter<TX;TY;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->cur:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->fut:Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->cur:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1520
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter<TX;TY;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->onHasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1521
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->cur:Ljava/lang/Object;

    .line 1525
    .local v0, "e":Ljava/lang/Object;, "TX;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->cur:Ljava/lang/Object;

    .line 1527
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$ClIter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
