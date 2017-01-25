.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridPartitionedGetFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private keys:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    .local p3, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 547
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 565
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 566
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    .line 567
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 568
    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 574
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 595
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 599
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 600
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .line 607
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote node left grid while sending or waiting for reply (will retry): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 610
    :cond_0
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    invoke-direct {v4, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 612
    .local v4, "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;-><init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 617
    .local v0, "timeout":Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;

    invoke-direct {v2, p0, v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 632
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 633
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 7
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    const/16 v6, 0x5d

    .line 640
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidPartitions()Ljava/util/Collection;

    move-result-object v0

    .line 643
    .local v0, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->error()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 644
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->error()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 689
    :goto_0
    return-void

    .line 650
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 651
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 653
    .local v1, "rmtTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 655
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 657
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to process invalid partitions response (remote node reported invalid partitions but remote topology version does not differ from local) [topVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rmtTopVer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", invalidParts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 665
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 666
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remapping mini get future [invalidParts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 669
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 671
    .local v2, "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;

    invoke-direct {v3, p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 688
    .end local v1    # "rmtTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v2    # "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture$MiniFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
