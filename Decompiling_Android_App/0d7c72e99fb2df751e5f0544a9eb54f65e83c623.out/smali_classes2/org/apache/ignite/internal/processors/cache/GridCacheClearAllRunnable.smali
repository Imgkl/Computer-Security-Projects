.class public Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;
.super Ljava/lang/Object;
.source "GridCacheClearAllRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final id:I

.field protected final log:Lorg/apache/ignite/IgniteLogger;

.field protected final obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field protected final totalCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;II)V
    .locals 2
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "id"    # I
    .param p4, "totalCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-gtz p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-lt p3, p4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_4
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 66
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 67
    iput p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    .line 68
    iput p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCnt:I

    .line 70
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->log:Lorg/apache/ignite/IgniteLogger;

    .line 72
    return-void
.end method


# virtual methods
.method protected clearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->clear(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clearLocally entry from cache (will continue to clearLocally other entries): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    return v0
.end method

.method protected owns(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    const/4 v0, 0x1

    .line 153
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCnt:I

    if-eq v1, v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCnt:I

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    const/4 v7, 0x1

    .line 76
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v4

    iget v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    iget v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCnt:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->stripedEntryIterator(II)Ljava/util/Iterator;

    move-result-object v2

    .line 78
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->clearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-nez v4, :cond_6

    .line 83
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v7, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 89
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->owns(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->clearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1

    .line 94
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    if-nez v4, :cond_3

    .line 95
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->clearOffHeap()V

    .line 98
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 100
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    const/4 v1, 0x0

    .line 104
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget-object v7, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_2
    if-eqz v1, :cond_6

    .line 111
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 114
    .restart local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->owns(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->clearEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_3

    .line 106
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to get iterator over swap."

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 119
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_5
    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->id:I

    if-nez v4, :cond_6

    .line 121
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->clearSwap()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :cond_6
    :goto_4
    return-void

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to clearLocally entries from swap storage."

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalCount()I
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable;->totalCnt:I

    return v0
.end method
