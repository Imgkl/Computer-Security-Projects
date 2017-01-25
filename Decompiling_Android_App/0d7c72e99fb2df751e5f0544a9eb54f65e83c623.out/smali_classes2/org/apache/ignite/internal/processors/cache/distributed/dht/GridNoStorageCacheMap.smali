.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.source "GridNoStorageCacheMap.java"


# instance fields
.field private final emptyTriple:Lorg/apache/ignite/internal/util/lang/GridTriple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridTriple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IFI)V

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTriple;

    invoke-direct {v0, v3, v3, v3}, Lorg/apache/ignite/internal/util/lang/GridTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;->emptyTriple:Lorg/apache/ignite/internal/util/lang/GridTriple;

    .line 41
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getEntry(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public publicSize()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public putAll(Ljava/util/Map;J)V
    .locals 1
    .param p2, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public putEntry(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;J)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J

    .prologue
    .line 75
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public putEntryIfObsoleteOrAbsent(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;JZ)Lorg/apache/ignite/internal/util/lang/GridTriple;
    .locals 11
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "JZ)",
            "Lorg/apache/ignite/internal/util/lang/GridTriple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p6, :cond_0

    .line 87
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;->hash(I)I

    move-result v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 90
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridTriple;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/lang/GridTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;->emptyTriple:Lorg/apache/ignite/internal/util/lang/GridTriple;

    goto :goto_0
.end method

.method public randomEntry()Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public removeEntryIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridNoStorageCacheMap;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
