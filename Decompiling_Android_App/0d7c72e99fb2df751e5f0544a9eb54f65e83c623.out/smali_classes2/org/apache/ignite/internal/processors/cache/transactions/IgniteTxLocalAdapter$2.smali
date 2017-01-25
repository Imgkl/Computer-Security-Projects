.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;
.super Ljava/lang/Object;
.source "IgniteTxLocalAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->checkMissed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$loaded:Ljava/util/Collection;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$missedMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$missedMap:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$loaded:Ljava/util/Collection;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1417
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Boolean;Ljava/lang/Exception;)Ljava/util/Map;
    .locals 7
    .param p1, "b"    # Ljava/lang/Boolean;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1419
    if-eqz p2, :cond_0

    .line 1420
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->setRollbackOnly()Z

    .line 1422
    new-instance v5, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v5, p2}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1425
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1427
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$missedMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1428
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v4

    .line 1430
    .local v4, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v4, :cond_1

    .line 1431
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markValid()V

    goto :goto_0

    .line 1435
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1436
    new-instance v3, Ljava/util/HashSet;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$missedMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1438
    .local v3, "notFound":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$loaded:Ljava/util/Collection;

    invoke-interface {v3, v5}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 1441
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1442
    .restart local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v4

    .line 1444
    .restart local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v4, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1447
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_2
    if-eqz v0, :cond_3

    .line 1448
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_1

    .line 1444
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    goto :goto_2

    .line 1452
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "notFound":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_5
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$2;->val$map:Ljava/util/Map;

    return-object v5
.end method
