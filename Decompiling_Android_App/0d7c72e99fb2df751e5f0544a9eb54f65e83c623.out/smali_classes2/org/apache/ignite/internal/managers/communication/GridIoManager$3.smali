.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;->onKernalStart0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 11
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 239
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    instance-of v8, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_0
    move-object v0, p1

    .line 241
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 243
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    .line 245
    .local v5, "nodeId":Ljava/util/UUID;
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 300
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 247
    :pswitch_0
    sget-boolean v8, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 254
    :pswitch_1
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentMap;

    .line 261
    .local v4, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    monitor-enter v4

    .line 262
    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    .line 264
    .local v6, "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    .line 265
    .local v2, "empty":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    if-eqz v6, :cond_3

    .line 268
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$600(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed message set due to node leaving grid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 272
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 276
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->closedTopics:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_3
    if-eqz v2, :cond_1

    .line 280
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->msgSetMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v2    # "empty":Z
    .end local v6    # "set":Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 284
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;>;"
    .end local v4    # "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_2
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->waitMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 289
    .local v7, "waitList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1100(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 290
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1200(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed messages from discovery startup delay list (sender node left topology): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :cond_5
    iget-object v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 302
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "waitList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;>;"
    :cond_6
    return-void

    .line 294
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$3;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    # getter for: Lorg/apache/ignite/internal/managers/communication/GridIoManager;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v9}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
