.class abstract Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;
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
    name = "PartitionsKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field private curIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

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
    .line 2000
    .local p2, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->partIt:Ljava/util/Iterator;

    .line 2003
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->advance()V

    .line 2004
    return-void
.end method

.method private advance()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2032
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2035
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;

    if-nez v2, :cond_1

    .line 2036
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2037
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2040
    .local v1, "part":I
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->partitionIterator(I)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    .end local v1    # "part":I
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    .line 2049
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2050
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2059
    :goto_0
    return-void

    .line 2042
    .restart local v1    # "part":I
    :catch_0
    move-exception v0

    .line 2043
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2055
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "part":I
    :cond_2
    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->curIt:Ljava/util/Iterator;

    .line 2058
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

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
    .line 1987
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 2

    .prologue
    .line 2013
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    if-nez v1, :cond_0

    .line 2014
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2016
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->next:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2018
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;->advance()V

    .line 2020
    return-object v0
.end method

.method protected abstract partitionIterator(I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
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
    .line 2025
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
