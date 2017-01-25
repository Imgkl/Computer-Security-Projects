.class Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;
.super Ljava/lang/Object;
.source "RoundRobinGlobalLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ctx:Lorg/apache/ignite/spi/IgniteSpiContext;

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final mux:Ljava/lang/Object;

.field private volatile nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;-><init>(ILjava/util/List;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->mux:Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 60
    sget-boolean v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->log:Lorg/apache/ignite/IgniteLogger;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->mux:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;
    .param p1, "x1"    # Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    return-object p1
.end method

.method private awaitInitializationCompleted()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 256
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 261
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Global balancer was interrupted."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkBalancerNodes(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p1, "topMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/UUID;>;"
    const/4 v0, 0x0

    .line 236
    .local v0, "contains":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 237
    .local v2, "nodeId":Ljava/util/UUID;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 244
    .end local v2    # "nodeId":Ljava/util/UUID;
    :cond_1
    if-nez v0, :cond_2

    .line 245
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task topology does not have alive nodes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_2
    return-void
.end method

.method private static findNodeById(Ljava/lang/Iterable;Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 3
    .param p1, "foundNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "top":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 214
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method getBalancedNode(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v11, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->awaitInitializationCompleted()V

    .line 146
    const/4 v10, 0x0

    .line 150
    .local v10, "topMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v5, 0x0

    .line 153
    .local v5, "misses":I
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .line 155
    .local v8, "nodeList":Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;
    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;
    invoke-static {v8}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;

    move-result-object v9

    .line 157
    .local v9, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 159
    .local v1, "cycleSize":I
    if-nez v1, :cond_2

    .line 160
    new-instance v11, Lorg/apache/ignite/IgniteException;

    const-string v12, "Task topology does not have any alive nodes."

    invoke-direct {v11, v12}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 167
    :cond_2
    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getCurrentIdx()Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v8}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$400(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    .line 169
    .local v4, "idx":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 171
    .local v0, "curIdx":I
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    rem-int v6, v11, v1

    .line 173
    .local v6, "nextIdx":I
    invoke-virtual {v4, v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 175
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/UUID;

    invoke-static {p1, v11}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->findNodeById(Ljava/lang/Iterable;Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 177
    .local v2, "found":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_4

    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 182
    if-lt v5, v1, :cond_4

    .line 183
    if-nez v10, :cond_3

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v10

    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/cluster/ClusterNode;

    .line 187
    .local v7, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    invoke-static {p1, v10, v9}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->checkBalancerNodes(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 193
    const/4 v5, 0x0

    .line 197
    :cond_4
    if-eqz v2, :cond_1

    .line 199
    iget-object v11, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    iget-object v11, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found round-robin node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 202
    :cond_5
    return-object v2
.end method

.method getNodeIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;
    invoke-static {v1}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method onContextDestroyed()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->ctx:Lorg/apache/ignite/spi/IgniteSpiContext;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->ctx:Lorg/apache/ignite/spi/IgniteSpiContext;

    iget-object v1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 132
    :cond_0
    return-void
.end method

.method onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/spi/IgniteSpiContext;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->ctx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 71
    new-instance v4, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;-><init>(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;)V

    iput-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->lsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-interface {p1, v4, v5}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 114
    iget-object v5, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 115
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    # invokes: Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->getNodes()Ljava/util/List;
    invoke-static {v4}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;->access$300(Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;)Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    if-nez v2, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v3, "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_0
    invoke-interface {p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->nodes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 120
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .end local v3    # "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 117
    .restart local v2    # "oldNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 122
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_1
    new-instance v4, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;-><init>(ILjava/util/List;Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$1;)V

    iput-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->nodeList:Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer$GridNodeList;

    .line 123
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    iget-object v4, p0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    return-void

    .line 71
    :array_0
    .array-data 4
        0xc
        0xa
        0xb
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinGlobalLoadBalancer;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
