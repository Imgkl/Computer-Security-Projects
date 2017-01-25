.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;
.super Ljava/lang/Object;
.source "GridAffinityProcessor.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/Affinity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheAffinityProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/affinity/Affinity",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final cacheName:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;Ljava/lang/String;)V
    .locals 0
    .param p2, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 603
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cacheName:Ljava/lang/String;

    .line 605
    return-void
.end method

.method private cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cacheName:Ljava/lang/String;

    new-instance v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->topologyVersion()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->affinityCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v0

    return-object v0
.end method

.method private topologyVersion()J
    .locals 2

    .prologue
    .line 856
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 738
    :try_start_0
    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v2, :cond_0

    .line 739
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v2, v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object p1

    .line 741
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->keyMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$3100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 747
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v2

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v2
.end method

.method public allPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 6
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 715
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 718
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v4

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v0

    .line 720
    .local v0, "assignment":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primaryPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    .line 721
    .local v3, "primary":[I
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backupPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    .line 723
    .local v1, "backup":[I
    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addAll([I[I)[I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 729
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v4

    .line 725
    .end local v0    # "assignment":Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    .end local v1    # "backup":[I
    .end local v3    # "primary":[I
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v4, Lorg/apache/ignite/IgniteException;

    invoke-direct {v4, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v4
.end method

.method public backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 4
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 698
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 701
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backupPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v1

    .line 703
    .local v1, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 709
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v2

    .line 705
    .end local v1    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v2
.end method

.method public isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 657
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backupPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->partition(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 663
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v1

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 642
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primaryPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->partition(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 648
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
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
    .line 669
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 672
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->isPrimary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 675
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v0

    .line 672
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v0
.end method

.method public mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 771
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeyToNode(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 777
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
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
    .line 783
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3700(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 786
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->partition(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 792
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public mapKeysToNodes(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
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
    .line 753
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 756
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->mapKeysToNodes(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 762
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "part"    # I

    .prologue
    .line 798
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$3900(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 801
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4000(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public mapPartitionToPrimaryAndBackups(I)Ljava/util/Collection;
    .locals 3
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
    .line 832
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 835
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->get(I)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 841
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
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
    .line 813
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4100(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 816
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 818
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
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

    .line 820
    .local v2, "p":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->mapPartitionToNode(I)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 826
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "p":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v3

    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$4200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v1
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 627
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affinityFunction()Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partition(Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 633
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v1

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1600(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public partitions()I
    .locals 3

    .prologue
    .line 609
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1200(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 612
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->affinityFunction()Lorg/apache/ignite/cache/affinity/AffinityFunction;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1300(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 618
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return v1

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$1400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v1
.end method

.method public primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I
    .locals 4
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 681
    .local p0, "this":Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;, "Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy<TK;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2400(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V

    .line 684
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->cache()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->assignment()Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;->access$1800(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$AffinityInfo;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primaryPartitions(Ljava/util/UUID;)Ljava/util/Set;

    move-result-object v1

    .line 686
    .local v1, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toIntArray(Ljava/util/Collection;)[I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 692
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    return-object v2

    .line 688
    .end local v1    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor$CacheAffinityProxy;->this$0:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;->access$2500(Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v2
.end method
