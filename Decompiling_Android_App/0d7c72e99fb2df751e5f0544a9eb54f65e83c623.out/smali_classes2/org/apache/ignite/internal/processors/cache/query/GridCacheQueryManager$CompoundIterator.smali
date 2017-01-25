.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompoundIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3fa458e2c4b6aaa0L


# instance fields
.field private idx:I

.field private iter:Lorg/apache/ignite/internal/util/lang/GridIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final iters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2493
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator<TT;>;"
    .local p1, "iters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/lang/GridIterator<TT;>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 2494
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2497
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iters:Ljava/util/List;

    .line 2499
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridIterator;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iter:Lorg/apache/ignite/internal/util/lang/GridIterator;

    .line 2500
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2477
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator<TT;>;"
    const/4 v1, 0x1

    .line 2504
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iter:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->hasNextX()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2518
    :goto_0
    return v0

    .line 2507
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    .line 2509
    :goto_1
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iters:Ljava/util/List;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridIterator;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iter:Lorg/apache/ignite/internal/util/lang/GridIterator;

    .line 2512
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iter:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->hasNextX()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2513
    goto :goto_0

    .line 2515
    :cond_1
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->idx:I

    goto :goto_1

    .line 2518
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2523
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->hasNextX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2524
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2526
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;->iter:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->nextX()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeX()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2531
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CompoundIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
