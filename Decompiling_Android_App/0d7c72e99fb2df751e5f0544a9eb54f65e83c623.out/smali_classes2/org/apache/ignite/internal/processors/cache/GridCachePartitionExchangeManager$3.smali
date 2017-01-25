.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 1

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

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
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.3;"
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;->onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    .prologue
    .line 223
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V

    .line 224
    return-void
.end method
