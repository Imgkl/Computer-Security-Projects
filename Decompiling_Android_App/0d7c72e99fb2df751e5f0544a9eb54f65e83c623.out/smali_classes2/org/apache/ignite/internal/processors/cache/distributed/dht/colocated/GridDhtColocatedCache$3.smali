.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;
.super Ljava/lang/Object;
.source "GridDhtColocatedCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)V
    .locals 0

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.3;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 112
    return-void
.end method
