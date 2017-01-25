.class Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClIter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->queryLocal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$ClIter",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

.field final synthetic val$i:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->val$i:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->val$i:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    .line 583
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->val$i:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 580
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$2;->val$i:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 592
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
