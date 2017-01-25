.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V
    .locals 18
    .param p1, "type"    # I
    .param p2, "topVer"    # J
    .param p4, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p7, "data"    # Ljava/io/Serializable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p5, "topSnapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p6, "snapshots":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v15

    .line 358
    .local v15, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz p6, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-object/from16 v0, p6

    # setter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topHist:Ljava/util/Map;
    invoke-static {v4, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$702(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/util/Map;)Ljava/util/Map;

    .line 361
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move/from16 v0, p1

    move-wide/from16 v1, p2

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nextTopologyVersion(IJ)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v4, v0, v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;IJ)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 363
    .local v6, "nextTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    const/16 v4, 0xc

    move/from16 v0, p1

    if-eq v0, v4, :cond_1

    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 364
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    .line 365
    .local v10, "c":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->updateAlives(Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_0

    .line 367
    .end local v10    # "c":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->updateClientNodes(Ljava/util/UUID;)V
    invoke-static {v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Ljava/util/UUID;)V

    .line 370
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    const/16 v4, 0x12

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->customEvtLsnr:Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->customEvtLsnr:Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-interface {v4, v0}, Lorg/apache/ignite/internal/util/lang/GridPlainInClosure;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_4
    :goto_1
    const/16 v4, 0xd

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    .line 384
    new-instance v11, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-interface {v15}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v11, v4, v15, v5, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V

    .line 386
    .local v11, "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCacheHist:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # invokes: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->updateTopologyVersionIfGreater(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z
    invoke-static {v4, v6, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1400(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;)Z

    move-result v16

    .line 390
    .local v16, "set":Z
    sget-boolean v4, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    if-nez v16, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Topology version has not been updated [this.topVer="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topSnap:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1500(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", topVer="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", node="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", evt="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridEventName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 375
    .end local v11    # "cache":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
    .end local v16    # "set":Z
    :catch_0
    move-exception v13

    .line 376
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to notify direct custom event listener: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 396
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v15}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 397
    new-instance v12, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-direct {v12}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>()V

    .line 399
    .local v12, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1600(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v12, v4}, Lorg/apache/ignite/events/DiscoveryEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 400
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 401
    const/16 v4, 0xa

    invoke-virtual {v12, v4}, Lorg/apache/ignite/events/DiscoveryEvent;->type(I)V

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    new-instance v5, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4$1;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;)V

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1700()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p5

    invoke-static {v0, v5, v7}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1, v4}, Lorg/apache/ignite/events/DiscoveryEvent;->topologySnapshot(JLjava/util/Collection;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->locJoinEvt:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v4

    invoke-virtual {v4, v12}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 416
    .end local v12    # "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    :goto_2
    return-void

    .line 415
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$4;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoWrk:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1900(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoveryWorker;->addEvent(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/io/Serializable;)V

    goto :goto_2
.end method
