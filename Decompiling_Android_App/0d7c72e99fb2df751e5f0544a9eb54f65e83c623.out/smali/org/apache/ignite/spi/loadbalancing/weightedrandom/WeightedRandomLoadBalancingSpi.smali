.class public Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "WeightedRandomLoadBalancingSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;
.implements Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field public static final DFLT_NODE_WEIGHT:I = 0xa

.field public static final NODE_WEIGHT_ATTR_NAME:Ljava/lang/String; = "ignite.node.weight.attr.name"

.field private static final RAND:Ljava/util/Random;


# instance fields
.field private evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private isUseWeights:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private nodeWeight:I

.field private taskTops:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 189
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    .line 192
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;Lorg/apache/ignite/cluster/ClusterNode;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->getWeight(Lorg/apache/ignite/cluster/ClusterNode;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/util/Random;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->RAND:Ljava/util/Random;

    return-object v0
.end method

.method private getWeight(Lorg/apache/ignite/cluster/ClusterNode;)I
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 341
    const-string v1, "ignite.node.weight.attr.name"

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 343
    .local v0, "weight":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node weight cannot be zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_0
    if-nez v0, :cond_1

    const/16 v1, 0xa

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getBalancedNode(Lorg/apache/ignite/compute/ComputeTaskSession;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p3, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 311
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v1, "ses"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "top"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    const-string v1, "job"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-boolean v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->isUseWeights:Z

    if-nez v1, :cond_0

    .line 317
    sget-object v1, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->RAND:Ljava/util/Random;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 333
    :goto_0
    return-object v1

    .line 319
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 323
    .local v0, "weightedTop":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;>;"
    if-nez v0, :cond_2

    .line 325
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->taskTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;

    invoke-direct {v4, p0, p2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;-><init>(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;

    invoke-direct {v1, p0, p2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;-><init>(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    goto :goto_0
.end method

.method protected getConsistentAttributeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const-string v0, "ignite.node.weight.attr.name"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 232
    const-string v0, "ignite.node.weight.attr.name"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNodeWeight()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    return v0
.end method

.method public isUseWeights()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->isUseWeights:Z

    return v0
.end method

.method protected onContextDestroyed0()V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    .line 304
    .local v0, "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 307
    .end local v0    # "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    :cond_0
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 3
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$1;-><init>(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->evtLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 297
    return-void

    .line 264
    nop

    :array_0
    .array-data 4
        0x16
        0x15
        0x28
    .end array-data
.end method

.method public setNodeWeight(I)V
    .locals 0
    .param p1, "nodeWeight"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 222
    iput p1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    .line 223
    return-void
.end method

.method public setUseWeights(Z)V
    .locals 0
    .param p1, "isUseWeights"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->isUseWeights:Z

    .line 206
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->startStopwatch()V

    .line 239
    iget v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "nodeWeight > 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->assertParameter(ZLjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "isUseWeights"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->isUseWeights:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "nodeWeight"

    iget v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->nodeWeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 246
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 249
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 251
    :cond_1
    return-void

    .line 239
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->unregisterMBean()V

    .line 258
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
