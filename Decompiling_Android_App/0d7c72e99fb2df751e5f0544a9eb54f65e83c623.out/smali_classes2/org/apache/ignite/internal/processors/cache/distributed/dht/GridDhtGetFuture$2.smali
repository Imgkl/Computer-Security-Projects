.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Map",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

.field final synthetic val$keys:Ljava/util/LinkedHashMap;

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$keys:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$taskName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.2;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p1, "b"    # Ljava/lang/Boolean;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture.2;"
    const/4 v2, 0x1

    .line 370
    if-eqz p2, :cond_0

    .line 371
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v0, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->reload:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->readThrough()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$taskName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->reloadAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    .line 381
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    move-result-object v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cache()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->readThrough:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->subjId:Ljava/util/UUID;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$taskName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->expiryPlc:Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getDhtAllAsync(Ljava/util/Collection;ZLjava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->val$keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->skipVals:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;)Z

    move-result v8

    move v9, v2

    invoke-interface/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method
