.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;
.super Ljava/lang/Object;
.source "GridDhtGetFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->getAsync(Ljava/util/LinkedHashMap;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Ljava/util/Map",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
        ">;",
        "Ljava/lang/Exception;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

.field final synthetic val$infos:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->val$infos:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.3;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->apply(Ljava/util/Map;Ljava/lang/Exception;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map;Ljava/lang/Exception;)Ljava/util/Collection;
    .locals 4
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.3;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz p2, :cond_0

    .line 406
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 422
    :goto_0
    return-object v3

    .line 411
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->val$infos:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 414
    .local v0, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 416
    .local v2, "v":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 418
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local v2    # "v":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_1

    .line 422
    .end local v0    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$3;->val$infos:Ljava/util/Collection;

    goto :goto_0
.end method
