.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;
.super Ljava/lang/Object;
.source "GridCachePartitionExchangeManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->onEvent(Lorg/apache/ignite/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V
    .locals 0

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1.1;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :goto_1
    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z

    .line 186
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    goto :goto_1

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    throw v1
.end method
