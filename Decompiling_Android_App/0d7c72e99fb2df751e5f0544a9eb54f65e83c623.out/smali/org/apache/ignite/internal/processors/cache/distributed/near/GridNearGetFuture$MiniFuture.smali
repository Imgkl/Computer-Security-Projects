.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNearGetFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;
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

.field private savedVers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

.field private topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 651
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/LinkedHashMap;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    .local p3, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    .local p4, "savedVers":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 656
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 683
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 684
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    .line 685
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->savedVers:Ljava/util/Map;

    .line 686
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 687
    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->savedVers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    .prologue
    .line 651
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

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
    .line 707
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 700
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 714
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    .line 718
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 719
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .line 725
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    .line 728
    :cond_0
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v2

    invoke-direct {v4, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    .line 730
    .local v4, "updTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

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

    .line 735
    .local v0, "timeout":Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$1;

    invoke-direct {v2, p0, v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridFutureRemapTimeoutObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 750
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 751
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 9
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    const/16 v4, 0x5d

    .line 757
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->invalidPartitions()Ljava/util/Collection;

    move-result-object v6

    .line 760
    .local v6, "invalidParts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->error()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 806
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 768
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    .line 770
    .local v7, "rmtTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 772
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 774
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to process invalid partitions response (remote node reported invalid partitions but remote topology version does not differ from local) [topVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmtTopVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", invalidParts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 782
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remapping mini get future [invalidParts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 786
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v8

    .line 788
    .local v8, "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;

    invoke-direct {v0, p0, v6, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    invoke-interface {v8, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 805
    .end local v7    # "rmtTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v8    # "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->keys:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->entries()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->savedVers:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture;Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetFuture$MiniFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
