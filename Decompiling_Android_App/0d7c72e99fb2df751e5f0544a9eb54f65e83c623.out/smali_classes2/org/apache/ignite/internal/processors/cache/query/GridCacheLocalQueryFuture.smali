.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
.source "GridCacheLocalQueryFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$1;,
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter",
        "<TK;TV;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private fut:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private run:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V
    .locals 2
    .param p2, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Z)V

    .line 49
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->run:Ljava/lang/Runnable;

    .line 50
    return-void
.end method


# virtual methods
.method protected cancelQuery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z

    .line 63
    :cond_0
    return-void
.end method

.method execute()V
    .locals 3

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->run:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->fut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 57
    return-void
.end method

.method protected loadAllPages()V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    return-void
.end method

.method protected loadPage()V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    return-void
.end method

.method protected onPage(Ljava/util/UUID;Z)Z
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "last"    # Z

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>;"
    return p2
.end method
