.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;
.super Ljava/lang/Object;
.source "GridDhtTransactionalCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->start()V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V
    .locals 0

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.5;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter.5;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processNearUnlockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V

    .line 115
    return-void
.end method