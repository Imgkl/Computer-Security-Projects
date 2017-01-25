.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;
.super Ljava/lang/Object;
.source "GridPartitionedGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->map(Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)V
    .locals 0

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture.2;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture.2;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->createResultMap(Ljava/util/Collection;)Ljava/util/Map;
    invoke-static {v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get values from dht cache [fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 353
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 355
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method
