.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;
.super Ljava/lang/Object;
.source "GridDhtGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->map(Ljava/util/LinkedHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiClosure",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Exception;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

.field final synthetic val$keys:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;)V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->val$keys:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.1;"
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->apply(Ljava/lang/Object;Ljava/lang/Exception;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Exception;)Ljava/util/Collection;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.1;"
    if-eqz p2, :cond_1

    .line 207
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 208
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$000()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to request keys from preloader [keys="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    invoke-virtual {v4, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 213
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 216
    .local v2, "mappedKeys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 217
    .local v1, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v3

    .line 219
    .local v3, "part":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 220
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->parts:Ljava/util/Collection;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/Collection;

    move-result-object v6

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection;)Z
    invoke-static {v5, v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->retries:Ljava/util/Collection;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    .end local v1    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .end local v3    # "part":I
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$1;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->getAsync(Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v5, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method
