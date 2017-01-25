.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
.source "GridDeploymentPerLoaderStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsolatedDeployment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sndNode:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V
    .locals 7
    .param p2, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p3, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p4, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "userVer"    # Ljava/lang/String;
    .param p6, "sndNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p7, "sampleClsName"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    .line 411
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 413
    iput-object p6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sndNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 414
    return-void
.end method


# virtual methods
.method public onDeployed(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordDeployed(Ljava/lang/Class;Z)V

    .line 428
    return-void
.end method

.method recordDeployed(Ljava/lang/Class;Z)V
    .locals 7
    .param p2, "recordEvt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x21

    const/16 v5, 0x1e

    .line 437
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 439
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->isTask(Ljava/lang/Class;)Z

    move-result v1

    .line 441
    .local v1, "isTask":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string v3, "Task"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " was deployed in Private or Isolated mode: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "msg":Ljava/lang/String;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v6

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->isTask(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    new-instance v0, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 447
    .local v0, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v4}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 448
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sndNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 449
    invoke-virtual {v0, v2}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 455
    .end local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 457
    :cond_2
    return-void

    .line 441
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const-string v3, "Class"

    goto :goto_0

    .restart local v2    # "msg":Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 443
    goto :goto_1

    .restart local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_5
    move v4, v5

    .line 447
    goto :goto_2
.end method

.method recordUndeployed()V
    .locals 11

    .prologue
    const/16 v9, 0x22

    const/16 v8, 0x1f

    .line 463
    sget-boolean v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    # getter for: Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 465
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    .line 467
    .local v2, "evts":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v9}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 468
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->deployedClassMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 469
    .local v0, "depCls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v10, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->isTask(Ljava/lang/Class;)Z

    move-result v4

    .line 471
    .local v4, "isTask":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_4

    const-string v7, "Task"

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " was undeployed in Private or Isolated mode "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "[cls="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", alias="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v10, 0x5d

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "msg":Ljava/lang/String;
    if-nez v4, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 475
    new-instance v1, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v1}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 477
    .local v1, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sndNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 478
    invoke-virtual {v1, v6}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 479
    if-nez v4, :cond_6

    move v7, v8

    :goto_3
    invoke-virtual {v1, v7}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 485
    .end local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 486
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7, v6}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 471
    .end local v6    # "msg":Ljava/lang/String;
    :cond_4
    const-string v7, "Class"

    goto :goto_1

    .restart local v6    # "msg":Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 474
    goto :goto_2

    .restart local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_6
    move v7, v9

    .line 479
    goto :goto_3

    .line 490
    .end local v0    # "depCls":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isTask":Z
    .end local v6    # "msg":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->obsolete()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 492
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 494
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 496
    .local v5, "ldr":Ljava/lang/ClassLoader;
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 499
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    if-eqz v7, :cond_8

    .line 500
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    iget-object v7, v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v7, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->onUndeploy(Ljava/lang/ClassLoader;)V

    .line 502
    :cond_8
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->clearSerializationCaches()V

    .line 505
    invoke-static {v5}, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 506
    invoke-static {v5}, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 508
    .end local v5    # "ldr":Ljava/lang/ClassLoader;
    :cond_9
    return-void
.end method

.method senderNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sndNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-super {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
