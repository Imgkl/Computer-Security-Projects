.class Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;
.super Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerAdapter;
.source "GridLoadBalancerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getLoadBalancer(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

.field final synthetic val$ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

.field final synthetic val$top:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->this$0:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$top:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 4
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 87
    .local p2, "exclNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const-string v1, "job"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->this$0:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$top:Ljava/util/List;

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getBalancedNode(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$top:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Lorg/apache/ignite/internal/util/typedef/F;->loseList(Ljava/util/List;ZLjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->this$0:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager$1;->val$ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, v2, v0, p1}, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;->getBalancedNode(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/List;Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    goto :goto_0
.end method
