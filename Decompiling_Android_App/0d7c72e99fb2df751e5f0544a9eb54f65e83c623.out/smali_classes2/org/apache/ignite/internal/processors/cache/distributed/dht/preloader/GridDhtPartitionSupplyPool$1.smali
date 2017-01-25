.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;
.super Ljava/lang/Object;
.source "GridDhtPartitionSupplyPool.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/concurrent/locks/ReadWriteLock;)V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)V
    .locals 0

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool.1;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "m"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->processDemandMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V

    .line 94
    return-void
.end method
