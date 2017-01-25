.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;
.super Ljava/lang/Object;
.source "GridCacheDistributedQueryFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cancelQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture.1;"
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->access$000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
