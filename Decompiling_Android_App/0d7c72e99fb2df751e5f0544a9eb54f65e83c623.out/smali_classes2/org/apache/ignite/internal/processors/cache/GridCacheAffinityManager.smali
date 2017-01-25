.class public Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheAffinityManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TOP_FIRST:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# instance fields
.field private aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->TOP_FIRST:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public affinityReadyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 88
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    if-eqz v0, :cond_1

    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    :goto_0
    return-object v0

    .restart local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;>;"
    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public affinityReadyFuturex(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 99
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->readyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->lastVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method public assignments(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p1    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    const-wide/16 v0, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 135
    .restart local p1    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->assignments(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance p2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    const-wide/16 v0, 0x1

    invoke-direct {p2, v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 338
    .restart local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public backups(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "part"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 252
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    :cond_1
    new-array v1, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public backups(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backups(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 3
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "part"    # I
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 299
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 300
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid partition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 302
    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 312
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 314
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method public calculateAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/events/DiscoveryEvent;)Ljava/util/List;
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->calculate(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/events/DiscoveryEvent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cleanUpCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 110
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->cleanUpCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 113
    return-void
.end method

.method public initializeAffinity(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "affAssignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->initialize(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V

    .line 125
    return-void
.end method

.method public localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 3
    .param p1, "part"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 287
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid partition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method public nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 2
    .param p1, "part"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance p2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    const-wide/16 v0, 0x1

    invoke-direct {p2, v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 187
    .restart local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public nodes(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onKernalStart0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->TOP_FIRST:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->calculate(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/events/DiscoveryEvent;)Ljava/util/List;

    .line 53
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->onKernalStop()V

    .line 58
    return-void
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->partition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->partitions()I

    move-result v0

    return v0
.end method

.method public primary(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 2
    .param p1, "part"    # I
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    goto :goto_0
.end method

.method public primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public primary(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "part"    # I
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 230
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 220
    invoke-virtual {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance p2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    const-wide/16 v0, 0x1

    invoke-direct {p2, v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 326
    .restart local p2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remoteNodes(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 7
    .param p1, "keys"    # Ljava/lang/Iterable;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .line 266
    .local v0, "colcol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 267
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->flatCollections(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method

.method public start0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namex()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;Lorg/apache/ignite/cache/affinity/AffinityFunction;Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    .line 46
    return-void
.end method

.method protected stop0(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->aff:Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignmentCache;

    .line 63
    return-void
.end method
