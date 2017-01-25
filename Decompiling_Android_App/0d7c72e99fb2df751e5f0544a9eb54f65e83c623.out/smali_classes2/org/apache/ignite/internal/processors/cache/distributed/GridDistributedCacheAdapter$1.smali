.class Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;
.super Ljava/lang/Object;
.source "GridDistributedCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->removeAllAsync(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

.field final synthetic val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 0

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter.1;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 196
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 198
    .local v2, "topVer0":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 217
    .end local v2    # "topVer0":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    return-void

    .line 201
    .restart local v2    # "topVer0":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->removeAllAsync(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    invoke-static {v3, v4, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 203
    .end local v2    # "topVer0":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All remote nodes left while cache remove [cacheName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_0

    .line 209
    .end local v1    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Error;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;->val$opFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 215
    throw v0
.end method
