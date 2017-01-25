.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;
.super Ljava/lang/Object;
.source "GridPartitionedGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;)V
    .locals 0

    .prologue
    .line 677
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 677
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2.1;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 679
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->val$invalidParts:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2$1;->this$2:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
