.class Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;
.super Ljava/lang/Object;
.source "IgniteCacheProxy.java"

# interfaces
.implements Lorg/apache/ignite/cache/query/QueryCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->queryContinuous(Lorg/apache/ignite/cache/query/ContinuousQuery;Z)Lorg/apache/ignite/cache/query/QueryCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/query/QueryCursor",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

.field final synthetic val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

.field final synthetic val$routineId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;Lorg/apache/ignite/cache/query/QueryCursor;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 393
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$routineId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.3;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    invoke-interface {v1}, Lorg/apache/ignite/cache/query/QueryCursor;->close()V

    .line 407
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->this$0:Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->access$000(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$routineId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    invoke-interface {v0}, Lorg/apache/ignite/cache/query/QueryCursor;->getAll()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$3;->val$cur:Lorg/apache/ignite/cache/query/QueryCursor;

    invoke-interface {v0}, Lorg/apache/ignite/cache/query/QueryCursor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    goto :goto_0
.end method
