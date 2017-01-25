.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 21
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 135
    sget-boolean v18, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/ignite/events/DiscoveryEvent;

    move/from16 v18, v0

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_0
    move-object/from16 v18, p1

    .line 137
    check-cast v18, Lorg/apache/ignite/events/DiscoveryEvent;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    .line 141
    .local v13, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pending:Ljava/util/Map;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .local v16, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/locks/Lock;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 152
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 240
    sget-boolean v18, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected event received: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/events/Event;->shortDisplay()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 149
    .end local v16    # "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->pendingLock:Ljava/util/concurrent/locks/Lock;
    invoke-static/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/locks/Lock;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v18

    .line 154
    .restart local v16    # "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;>;"
    :pswitch_0
    if-eqz v16, :cond_1

    .line 155
    const/16 v17, 0x0

    .line 159
    .local v17, "routineId":Ljava/util/UUID;
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .line 160
    .local v15, "req":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId()Ljava/util/UUID;

    move-result-object v17

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    invoke-static {v0, v13, v15, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 165
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "req":Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
    :catch_0
    move-exception v10

    .line 166
    .local v10, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send pending start request to node (is node alive?): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 242
    .end local v10    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .end local v17    # "routineId":Ljava/util/UUID;
    :cond_1
    :goto_1
    return-void

    .line 170
    .restart local v17    # "routineId":Ljava/util/UUID;
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send pending start request to node: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStartFuture(Ljava/util/UUID;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V

    goto :goto_1

    .line 182
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "routineId":Ljava/util/UUID;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    .line 185
    .local v14, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 186
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 187
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 193
    :cond_4
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v19, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStartFuture(Ljava/util/UUID;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V

    goto :goto_2

    .line 198
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    .end local v14    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 199
    .restart local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    .line 201
    .restart local v14    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 202
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 203
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 209
    :cond_8
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v19, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->completeStopFuture(Ljava/util/UUID;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V

    goto :goto_3

    .line 214
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    .end local v14    # "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->rmtInfos:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 215
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/UUID;

    .line 216
    .restart local v17    # "routineId":Ljava/util/UUID;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;

    .line 218
    .local v11, "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->autoUnsubscribe:Z
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$1100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Z

    move-result v18

    if-eqz v18, :cond_a

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->nodeId:Ljava/util/UUID;
    invoke-static {v11}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;->access$1200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;)Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->unregisterRemote(Ljava/util/UUID;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;)V

    goto :goto_4

    .line 222
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;>;"
    .end local v11    # "info":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$RemoteRoutineInfo;
    .end local v17    # "routineId":Ljava/util/UUID;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 223
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;

    .line 225
    .local v7, "fut":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->nodeId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->syncMsgFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$1400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v18

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;

    .line 228
    .local v8, "fut0":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;
    if-eqz v8, :cond_c

    .line 229
    new-instance v6, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Node left grid while sending message to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    .line 232
    .local v6, "err":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    invoke-virtual {v8, v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$SyncMessageAckFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_5

    .line 152
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
