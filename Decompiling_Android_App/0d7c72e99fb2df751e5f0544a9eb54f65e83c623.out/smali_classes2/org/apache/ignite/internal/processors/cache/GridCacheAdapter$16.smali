.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/internal/GPC",
        "<",
        "Ljava/util/Map",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$deserializePortable:Z

.field final synthetic val$keepCacheObjects:Z

.field final synthetic val$loadKeys:Ljava/util/Map;

.field final synthetic val$loaded:Ljava/util/Collection;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$skipVals:Z

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;ZZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0

    .prologue
    .line 2172
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.16;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loadKeys:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loaded:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$map:Ljava/util/Map;

    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$skipVals:Z

    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$keepCacheObjects:Z

    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$deserializePortable:Z

    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2172
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.16;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK1;TV1;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2174
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.16;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loadKeys:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;)V

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    .line 2238
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loaded:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loadKeys:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2239
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loadKeys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2240
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loaded:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2243
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v3, v4, :cond_0

    .line 2245
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 2247
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    .line 2248
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3, v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_0

    .line 2253
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$map:Ljava/util/Map;

    return-object v3
.end method
