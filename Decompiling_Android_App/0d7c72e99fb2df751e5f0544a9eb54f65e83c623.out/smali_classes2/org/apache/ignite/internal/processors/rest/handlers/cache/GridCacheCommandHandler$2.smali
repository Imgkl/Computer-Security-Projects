.class final Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->resultWrapper(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheProjection;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->val$key:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->val$c:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 510
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;-><init>()V

    .line 514
    .local v0, "resp":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 516
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->val$key:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->val$c:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;->val$key:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->setAffinityNodeId(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-object v0
.end method
