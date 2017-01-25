.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;
.super Ljava/lang/Object;
.source "GridNearAtomicUpdateFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->mapOnTopology(Ljava/util/Collection;ZLjava/util/UUID;Z)V
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
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

.field final synthetic val$keys:Ljava/util/Collection;

.field final synthetic val$oldNodeId:Ljava/util/UUID;

.field final synthetic val$remap:Z

.field final synthetic val$waitTopFut:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;Ljava/util/Collection;ZLjava/util/UUID;Z)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$keys:Ljava/util/Collection;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$remap:Z

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$oldNodeId:Ljava/util/UUID;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$waitTopFut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 440
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$keys:Ljava/util/Collection;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$remap:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$oldNodeId:Ljava/util/UUID;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture$1;->val$waitTopFut:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;Ljava/util/Collection;ZLjava/util/UUID;Z)V

    .line 443
    return-void
.end method
