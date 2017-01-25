.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;
.super Ljava/lang/Object;
.source "GridDhtAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->start()V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V
    .locals 0

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.5;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache.5;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    .line 196
    return-void
.end method
