.class public Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;
.super Ljava/lang/Object;
.source "GridCacheMapAdapter.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$1;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "prj":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->clearLocally()V

    .line 157
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$1;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->remove(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
