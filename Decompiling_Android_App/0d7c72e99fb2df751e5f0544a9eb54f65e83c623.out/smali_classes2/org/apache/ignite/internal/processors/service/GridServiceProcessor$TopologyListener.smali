.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopologyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V

    return-void
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;JLjava/util/Collection;)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/Collection;

    .prologue
    .line 1033
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->onReassignmentFailed(JLjava/util/Collection;)V

    return-void
.end method

.method private onReassignmentFailed(JLjava/util/Collection;)V
    .locals 7
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p3, "retries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1124
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$3900(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 1165
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    .line 1127
    :cond_1
    :try_start_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1128
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .local v0, "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1133
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->reassign(Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V
    invoke-static {v3, v0, p1, p2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;J)V

    .line 1135
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    instance-of v3, v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-nez v3, :cond_2

    .line 1139
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$4000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to do service reassignment (will retry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;->configuration()Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/services/ServiceConfiguration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1165
    .end local v0    # "dep":Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v3

    .line 1144
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/service/GridServiceDeployment;>;"
    :cond_3
    :try_start_4
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1145
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$4100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;

    invoke-direct {v4, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;JLjava/util/Collection;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1165
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1040
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$1;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;Lorg/apache/ignite/events/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v0
.end method
