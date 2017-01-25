.class public Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;
.super Ljava/lang/Object;
.source "GridCacheAffinityImpl.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/Affinity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/affinity/Affinity",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 48
    return-void
.end method

.method private topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p1

    .line 154
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public allPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 8
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    const-string v6, "p"

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v3, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 113
    .local v5, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->partitions()I

    move-result v4

    .local v4, "partsCnt":I
    const/4 v2, 0x0

    .local v2, "part":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 114
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    .line 115
    .local v0, "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "affNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v6

    return-object v6
.end method

.method public backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 4
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    const-string v2, "n"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 100
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method

.method public isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "n"

    const-string v1, "key"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backups(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "n"

    const-string v1, "key"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method public isPrimaryOrBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "n"

    const-string v1, "key"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method public mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->partition(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .locals 9
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const-string v7, "keys"

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 170
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v3

    .line 173
    .local v3, "nodesCnt":I
    new-instance v5, Ljava/util/HashMap;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v7}, Ljava/util/HashMap;-><init>(IF)V

    .line 175
    .local v5, "res":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection<TK;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 176
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 178
    .local v4, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_0

    .line 179
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 181
    .local v2, "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    if-nez v2, :cond_1

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    div-int/2addr v7, v3

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .restart local v2    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "mapped":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .end local v4    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v5
.end method

.method public mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "part"    # I

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->partitions()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "part >= 0 && part < total partitions"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapPartitionToPrimaryAndBackups(I)Ljava/util/Collection;
    .locals 2
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->partitions()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "part >= 0 && part < total partitions"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mapPartitionsToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const-string v3, "parts"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 141
    .local v2, "p":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":I
    :cond_0
    return-object v1
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I

    move-result v0

    return v0
.end method

.method public primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 4
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;, "Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl<TK;TV;>;"
    const-string v2, "n"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 89
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/affinity/GridCacheAffinityImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 91
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    return-object v2
.end method
