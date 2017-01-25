.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;
.super Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;
.source "GridCachePartitionExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->start0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
        "<TK;TV;>.MessageHandler<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 228
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.4;"
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;->onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V

    .line 231
    return-void
.end method
