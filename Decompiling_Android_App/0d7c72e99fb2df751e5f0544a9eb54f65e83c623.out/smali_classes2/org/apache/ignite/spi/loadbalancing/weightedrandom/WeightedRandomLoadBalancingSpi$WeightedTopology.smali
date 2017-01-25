.class Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;
.super Ljava/lang/Object;
.source "WeightedRandomLoadBalancingSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeightedTopology"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final circle:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

.field private final totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 352
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    .line 363
    sget-boolean v3, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 365
    :cond_0
    const/4 v2, 0x0

    .line 367
    .local v2, "totalWeight":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 368
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {p1, v1}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;Lorg/apache/ignite/cluster/ClusterNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 371
    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 374
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    iput v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->totalWeight:I

    .line 375
    return-void
.end method


# virtual methods
.method pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 4

    .prologue
    .line 383
    invoke-static {}, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi;->access$300()Ljava/util/Random;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->totalWeight:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 385
    .local v1, "weight":I
    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 387
    .local v0, "pick":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v2, Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 389
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v2
.end method
