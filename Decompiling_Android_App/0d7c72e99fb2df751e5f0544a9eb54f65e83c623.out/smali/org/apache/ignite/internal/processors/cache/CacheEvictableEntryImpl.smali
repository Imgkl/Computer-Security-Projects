.class public Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;
.super Ljava/lang/Object;
.source "CacheEvictableEntryImpl.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictableEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/eviction/EvictableEntry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final META_KEY:Ljava/util/UUID;


# instance fields
.field protected cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->$assertionsDisabled:Z

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 0
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 47
    return-void
.end method


# virtual methods
.method public addMeta(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->addMeta(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 190
    :goto_0
    return v1

    .line 184
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 185
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    .line 187
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 190
    .end local v0    # "other":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public evict()Z
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 64
    .local v0, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :try_start_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to evict entry from cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_0
    return v2

    .line 65
    :cond_0
    :try_start_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 67
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    const/4 v5, 0x0

    .line 95
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    .line 97
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v3, :cond_1

    .line 98
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/KeyCacheObject;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 100
    .local v2, "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    .line 119
    .end local v2    # "peek":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 104
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 107
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 121
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v6

    .line 111
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 113
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    .line 117
    :try_start_1
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 119
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v4, :cond_0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 126
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_1
    move-exception v1

    .line 127
    .local v1, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    new-instance v5, Lorg/apache/ignite/IgniteException;

    const-string v6, "Should never happen."

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsoleteOrDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public meta()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    const/4 v2, 0x0

    .line 82
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 84
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v1    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_0
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    goto :goto_0
.end method

.method public putMetaIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->putMetaIfAbsent(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeMeta()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeMeta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeMeta(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeMeta(Ljava/util/UUID;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceMeta(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    .local p1, "curVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->META_KEY:Ljava/util/UUID;

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->replaceMeta(Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl<TK;TV;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/apache/ignite/IgniteCache;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheEvictableEntryImpl;->cached:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
