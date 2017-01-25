.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsFragmentizerManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentizerCoordinator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cond:Ljava/util/concurrent/locks/Condition;

.field private fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;

.field private volatile startSync:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V
    .locals 5

    .prologue
    .line 388
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    .line 389
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragmentizer-coordinator"

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 374
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    .line 380
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    .line 383
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->cond:Ljava/util/concurrent/locks/Condition;

    .line 391
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 392
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->topic:Ljava/lang/Object;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 393
    return-void
.end method

.method private requestFragmenting(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 14
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 613
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v4

    .line 615
    .local v4, "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 617
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    .line 619
    .local v2, "grpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 620
    .local v10, "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v11, v11, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v11

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinityNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    .line 622
    .local v6, "nodeId":Ljava/util/UUID;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 624
    .local v8, "nodeRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    if-nez v8, :cond_2

    .line 625
    new-instance v8, Ljava/util/LinkedList;

    .end local v8    # "nodeRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 627
    .restart local v8    # "nodeRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_2
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v11, v11, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->groupBlockSize()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->split(J)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 633
    .end local v6    # "nodeId":Ljava/util/UUID;
    .end local v8    # "nodeRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;"
    .end local v10    # "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_3
    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$IdentityHashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$IdentityHashSet;-><init>(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$1;)V

    .line 635
    .local v7, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 636
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calculating fragmentizer groups for file [fileInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", nodeIds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 640
    :cond_4
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 642
    .local v9, "old":Ljava/lang/Object;
    sget-boolean v11, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->$assertionsDisabled:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 644
    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 645
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    .line 647
    .restart local v6    # "nodeId":Ljava/util/UUID;
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v5, v12, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;)V

    .line 650
    .local v5, "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    :try_start_0
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 651
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sending fragmentizer request to remote node [nodeId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", fileId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 654
    :cond_6
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    invoke-static {v11, v6, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v13, v11, v12

    invoke-virtual {v0, v11}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 658
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 659
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send fragmentizer request to remote node (node left grid): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 666
    :cond_7
    :goto_2
    invoke-interface {v7, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 663
    :cond_8
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send fragmentizer request to remote node [nodeId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 670
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;>;>;"
    .end local v5    # "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    .end local v6    # "nodeId":Ljava/util/UUID;
    :cond_9
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 671
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 672
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got empty wait set for fragmentized file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 674
    :cond_a
    iget-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 676
    :cond_b
    return-void
.end method

.method private syncStart()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 553
    new-instance v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v7

    new-array v8, v11, [Lorg/apache/ignite/lang/IgnitePredicate;

    new-instance v9, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;

    invoke-direct {v9, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;)V

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->startSync:Ljava/util/Collection;

    .line 563
    .local v4, "startSync0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 565
    .local v2, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 566
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 567
    .local v3, "nodeId":Ljava/util/UUID;
    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;-><init>(JZ)V

    .line 570
    .local v5, "syncReq":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 571
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending fragmentizer sync start request to remote node [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", syncReq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 574
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    invoke-static {v6, v3, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V

    .line 577
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 578
    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-array v6, v11, [Ljava/lang/Class;

    const-class v7, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v7, v6, v10

    invoke-virtual {v0, v6}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 582
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send sync message to remote node (node has left the grid): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 590
    :cond_2
    :goto_2
    invoke-interface {v4, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 587
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send synchronize message to remote node (will not wait for reply): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 594
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "nodeId":Ljava/util/UUID;
    .end local v5    # "syncReq":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 597
    :try_start_1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 598
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v8, 0x2710

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :cond_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 604
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method private wakeUp()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 545
    return-void

    .line 543
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 398
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->syncStart()V

    .line 400
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 403
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerConcurrentFiles()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 404
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->fileForFragmentizer(Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 407
    .local v1, "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v1, :cond_1

    .line 424
    .end local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_0
    :goto_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 410
    .restart local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->requestFragmenting(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 413
    .end local v1    # "fileInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/InterruptedException;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 415
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to get fragmentizer file info (will retry)."

    invoke-static {v2, v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 417
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Got interrupted exception in fragmentizer coordinator (grid is stopping)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 430
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 413
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 9
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 437
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move-object v0, p1

    .line 439
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 441
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing node leave event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 444
    :cond_1
    const/4 v4, 0x0

    .line 446
    .local v4, "signal":Z
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->startSync:Ljava/util/Collection;

    .line 448
    .local v5, "startSync0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 449
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 452
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "Completed fragmentizer coordinator sync start."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 455
    :cond_2
    const/4 v4, 0x1

    .line 459
    :cond_3
    if-nez v4, :cond_6

    .line 460
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 462
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection<Ljava/util/UUID;>;>;>;"
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 463
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 465
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 467
    .local v3, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 468
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 469
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 470
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received all responses for fragmentizer task [fileId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 473
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 475
    const/4 v4, 0x1

    goto :goto_0

    .line 481
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection<Ljava/util/UUID;>;>;>;"
    .end local v3    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_6
    if-eqz v4, :cond_7

    .line 482
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->wakeUp()V

    .line 483
    :cond_7
    return-void
.end method

.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 10
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x5d

    .line 487
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    if-eqz v5, :cond_3

    move-object v2, p2

    .line 488
    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    .line 490
    .local v2, "res":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 492
    .local v0, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 494
    .local v1, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v1, :cond_2

    .line 495
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 497
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received all responses for fragmentizer task [fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 500
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->fragmentingFiles:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->wakeUp()V

    .line 531
    .end local v0    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v1    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;
    :cond_1
    :goto_0
    return-void

    .line 507
    .restart local v0    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v1    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received fragmentizer response for file ID which was not requested (will ignore) [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fileId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v0    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v1    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;
    :cond_3
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    if-eqz v5, :cond_1

    move-object v4, p2

    .line 511
    check-cast v4, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    .line 513
    .local v4, "sync":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->response()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order()J

    move-result-wide v6

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 514
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 515
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received fragmentizer sync response from remote node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 517
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->startSync:Ljava/util/Collection;

    .line 519
    .local v3, "startSync0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v3, :cond_1

    .line 520
    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 524
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Completed fragmentizer coordinator sync start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 526
    :cond_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->wakeUp()V

    goto/16 :goto_0
.end method
