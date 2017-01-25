.class public Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;
.super Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;
.source "GridClientRoundRobinBalancer.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientTopologyListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private lock:Ljava/util/concurrent/locks/Lock;

.field private nodeQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/balancer/GridClientBalancerAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public balancedNode(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;)",
            "Lorg/apache/ignite/internal/client/GridClientNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/client/GridClientNode;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->isPreferDirectNodes()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 42
    invoke-static {p1}, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->selectDirectNodes(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 44
    .local v2, "direct":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 48
    .local v3, "directSize":I
    if-lez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 49
    move-object p1, v2

    .line 52
    .end local v2    # "direct":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/client/GridClientNode;>;"
    .end local v3    # "directSize":I
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 54
    .local v6, "lookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/client/GridClientNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/client/GridClientNode;

    .line 55
    .local v7, "node":Lorg/apache/ignite/internal/client/GridClientNode;
    invoke-interface {v7}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v7    # "node":Lorg/apache/ignite/internal/client/GridClientNode;
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "balanced":Lorg/apache/ignite/internal/client/GridClientNode;
    :try_start_0
    iget-object v9, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 65
    .local v8, "nodeId":Ljava/util/UUID;
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientNode;

    move-object v1, v0

    .line 67
    if-eqz v1, :cond_3

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 74
    .end local v8    # "nodeId":Ljava/util/UUID;
    :cond_4
    if-eqz v1, :cond_5

    .line 75
    iget-object v9, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    invoke-interface {v1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v9, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 80
    :cond_5
    :try_start_1
    new-instance v9, Lorg/apache/ignite/internal/client/GridClientException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Passed nodes doesn\'t present in topology [nodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
.end method

.method public onNodeAdded(Lorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onNodeRemoved(Lorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->nodeQueue:Ljava/util/LinkedList;

    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientNode;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    return-void

    .line 108
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/balancer/GridClientRoundRobinBalancer;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
