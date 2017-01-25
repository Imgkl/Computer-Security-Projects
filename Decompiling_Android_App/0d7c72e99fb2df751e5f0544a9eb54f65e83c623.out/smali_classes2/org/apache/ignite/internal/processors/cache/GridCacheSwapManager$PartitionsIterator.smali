.class abstract Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;
.super Ljava/lang/Object;
.source "GridCacheSwapManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PartitionsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private curIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private next:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private partIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    .local p2, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1914
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->partIt:Ljava/util/Iterator;

    .line 1916
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->advance()V

    .line 1917
    return-void
.end method

.method private advance()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    const/4 v4, 0x0

    .line 1945
    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next:Ljavax/cache/Cache$Entry;

    .line 1948
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;

    if-nez v2, :cond_1

    .line 1949
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1950
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1953
    .local v1, "part":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->partitionIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cacheEntryIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$1100(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    .end local v1    # "part":I
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    .line 1963
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1964
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/cache/Cache$Entry;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next:Ljavax/cache/Cache$Entry;

    .line 1973
    :goto_0
    return-void

    .line 1956
    .restart local v1    # "part":I
    :catch_0
    move-exception v0

    .line 1957
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1969
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "part":I
    :cond_2
    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->curIt:Ljava/util/Iterator;

    .line 1972
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1921
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next:Ljavax/cache/Cache$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1900
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1926
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next:Ljavax/cache/Cache$Entry;

    if-nez v1, :cond_0

    .line 1927
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1929
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->next:Ljavax/cache/Cache$Entry;

    .line 1931
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;->advance()V

    .line 1933
    return-object v0
.end method

.method protected abstract partitionIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1938
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
