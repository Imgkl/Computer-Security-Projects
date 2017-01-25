.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 0

    .prologue
    .line 1537
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.9;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

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
    .line 1537
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.9;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1540
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.9;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1546
    :goto_0
    return-object v1

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1544
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All remote nodes left while cache clearLocally [cacheName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$9;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1546
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
