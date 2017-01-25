.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->call()Ljava/util/Map;
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
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;)V
    .locals 0

    .prologue
    .line 2174
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2174
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16.1;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 13
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16.1;"
    const/16 v4, 0x5d

    .line 2179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loadKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2181
    .local v12, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v12, :cond_1

    .line 2182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value from storage was never asked for [key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_2

    .line 2191
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2193
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$loaded:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 2198
    .local v3, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    .line 2201
    .local v9, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v9, v3, v12, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->versionedValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v11

    .line 2203
    .local v11, "set":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set value loaded from store into entry [set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2209
    :cond_4
    if-eqz p2, :cond_5

    .line 2210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$map:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-boolean v4, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$skipVals:Z

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-boolean v5, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$keepCacheObjects:Z

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-boolean v6, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$deserializePortable:Z

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V

    .line 2219
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$tx0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v0, v1, :cond_0

    .line 2221
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v9, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2225
    .end local v11    # "set":Z
    :catch_0
    move-exception v10

    .line 2226
    .local v10, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got removed entry during getAllAsync (will retry): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2230
    .end local v10    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v8

    .line 2232
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v0, v8}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
