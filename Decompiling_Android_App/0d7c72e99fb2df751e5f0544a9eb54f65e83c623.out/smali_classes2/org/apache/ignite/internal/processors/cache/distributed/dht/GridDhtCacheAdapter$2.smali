.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;
.super Ljava/lang/Object;
.source "GridDhtCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->start()V
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)V
    .locals 0

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.2;"
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->processTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V

    .line 111
    return-void
.end method
