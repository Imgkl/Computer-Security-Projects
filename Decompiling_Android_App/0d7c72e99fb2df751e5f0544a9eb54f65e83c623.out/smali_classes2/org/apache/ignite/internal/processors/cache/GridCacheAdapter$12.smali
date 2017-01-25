.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->reloadAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$loadedKeys:Ljava/util/Collection;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field final synthetic val$uid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1734
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 1734
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.12;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$loadedKeys:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$uid:Ljava/util/UUID;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1734
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.12;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;)V
    .locals 13
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1740
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.12;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$loadedKeys:Ljava/util/Collection;

    invoke-interface {v9, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1742
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v9, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 1744
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v3, :cond_2

    .line 1746
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$uid:Ljava/util/UUID;

    invoke-interface {v3, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeMeta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1749
    .local v1, "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v1, :cond_4

    .line 1750
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v8

    .line 1752
    .local v8, "wasNew":Z
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1754
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 1756
    .local v0, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v3, v0, v1, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->versionedValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v6

    .line 1758
    .local v6, "set":Z
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v9, v3, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1760
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$map:Ljava/util/Map;

    if-eqz v9, :cond_1

    .line 1761
    if-nez v6, :cond_0

    if-eqz v8, :cond_3

    .line 1762
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$map:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    :cond_1
    :goto_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1779
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set value loaded from store into entry [set="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "curVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->nextVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1801
    .end local v0    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v1    # "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v6    # "set":Z
    .end local v8    # "wasNew":Z
    :cond_2
    :goto_1
    return-void

    .line 1765
    .restart local v0    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v1    # "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v6    # "set":Z
    .restart local v8    # "wasNew":Z
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    sget-object v10, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v3, v9, v10, v11, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek0(ZLorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v7

    .line 1767
    .local v7, "v":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v7, :cond_1

    .line 1768
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->val$map:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1770
    .end local v7    # "v":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_0
    move-exception v4

    .line 1771
    .local v4, "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    .line 1773
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1791
    .end local v0    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v1    # "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .end local v6    # "set":Z
    .end local v8    # "wasNew":Z
    :catch_1
    move-exception v5

    .line 1792
    .local v5, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1793
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got removed entry for reload (will not store reloaded entry) [entry="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1785
    .end local v5    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v1    # "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    :try_start_3
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1786
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$12;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v9, v9, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current version was not found (either entry was removed or validation was not passed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1797
    .end local v1    # "curVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_2
    move-exception v2

    .line 1798
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v9, Lorg/apache/ignite/IgniteException;

    invoke-direct {v9, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method
