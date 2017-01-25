.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->getAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

.field final synthetic val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keepCacheObjects:Z

.field final synthetic val$retMap:Ljava/util/Map;

.field final synthetic val$skipVals:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;ZZZ)V
    .locals 0

    .prologue
    .line 1834
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$retMap:Ljava/util/Map;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$skipVals:Z

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$keepCacheObjects:Z

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$deserializePortable:Z

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$FinishClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    return-void
.end method


# virtual methods
.method bridge synthetic finish(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1834
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->finish(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method finish(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1836
    .local p1, "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1837
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1839
    .local v2, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v10

    .line 1841
    .local v10, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1843
    .local v3, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->readCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1844
    invoke-virtual {v10, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->readValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 1846
    :cond_0
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1847
    invoke-virtual {v10, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->applyEntryProcessors(Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 1849
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$cacheCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$retMap:Ljava/util/Map;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$skipVals:Z

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$keepCacheObjects:Z

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$deserializePortable:Z

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    goto :goto_0

    .line 1858
    .end local v2    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v3    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v10    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$7;->val$retMap:Ljava/util/Map;

    return-object v0
.end method
