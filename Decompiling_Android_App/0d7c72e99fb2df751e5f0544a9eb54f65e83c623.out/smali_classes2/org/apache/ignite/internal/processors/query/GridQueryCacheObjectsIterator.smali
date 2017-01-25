.class public Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;
.super Ljava/lang/Object;
.source "GridQueryCacheObjectsIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/List",
        "<*>;>;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final keepPortable:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)V
    .locals 0
    .param p3, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<*>;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;Z)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .local p2, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 46
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->keepPortable:Z

    .line 47
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
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    instance-of v0, v0, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    check-cast v0, Ljava/lang/AutoCloseable;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->keepPortable:Z

    invoke-virtual {v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryCacheObjectsIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 69
    return-void
.end method
