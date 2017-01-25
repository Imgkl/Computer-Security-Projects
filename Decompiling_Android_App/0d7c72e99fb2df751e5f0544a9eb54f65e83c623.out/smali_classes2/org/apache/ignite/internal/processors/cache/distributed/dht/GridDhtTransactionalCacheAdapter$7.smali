.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;
.super Ljava/lang/Object;
.source "GridDhtTransactionalCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processDhtLockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

.field final synthetic val$nodeId:Ljava/util/UUID;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V
    .locals 0

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->val$nodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.7;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.7;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->val$nodeId:Ljava/util/UUID;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processDhtLockRequest0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V

    .line 349
    return-void
.end method
