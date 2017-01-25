.class Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;
.super Ljava/lang/Object;
.source "RoundRobinPerTaskLoadBalancer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile isMapped:Z

.field private final mux:Ljava/lang/Object;

.field private nodeQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->mux:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v4, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 54
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 56
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->isMapped:Z

    .line 58
    .local v3, "readjust":Z
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 60
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    if-nez v4, :cond_2

    .line 61
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    .line 67
    :cond_2
    if-eqz v3, :cond_4

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 70
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 73
    :cond_4
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 77
    .local v1, "next":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 78
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 79
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lorg/apache/ignite/cluster/ClusterNode;
    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .restart local v1    # "next":Lorg/apache/ignite/cluster/ClusterNode;
    goto :goto_1

    .line 82
    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 83
    const/4 v4, 0x0

    monitor-exit v5

    .line 90
    :goto_2
    return-object v4

    .line 86
    :cond_6
    if-eqz v1, :cond_7

    .line 88
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 90
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_2
.end method

.method getNodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->nodeQueue:Ljava/util/ArrayDeque;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onMapped()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinPerTaskLoadBalancer;->isMapped:Z

    .line 42
    return-void
.end method
