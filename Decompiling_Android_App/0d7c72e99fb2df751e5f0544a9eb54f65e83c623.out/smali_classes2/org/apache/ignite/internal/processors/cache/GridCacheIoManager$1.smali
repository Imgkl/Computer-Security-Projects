.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 17
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received unordered cache communication message [nodeId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", locId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v14, v14, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v5, p2

    .line 85
    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    .line 87
    .local v5, "cacheMsg":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->lookupIndex()I

    move-result v8

    .line 89
    .local v8, "msgIdx":I
    const/4 v2, 0x0

    .line 91
    .local v2, "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    if-ltz v8, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->idxClsHandlers:Ljava/util/Map;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 94
    .local v4, "cacheClsHandlers":[Lorg/apache/ignite/lang/IgniteBiInClosure;
    if-eqz v4, :cond_1

    .line 95
    aget-object v2, v4, v8

    .line 98
    .end local v4    # "cacheClsHandlers":[Lorg/apache/ignite/lang/IgniteBiInClosure;
    :cond_1
    if-nez v2, :cond_2

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->clsHandlers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v12

    new-instance v13, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId()I

    move-result v14

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$ListenerKey;-><init>(ILjava/lang/Class;Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    check-cast v2, Lorg/apache/ignite/lang/IgniteBiInClosure;

    .line 101
    .restart local v2    # "c":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    :cond_2
    if-nez v2, :cond_4

    .line 102
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received message without registered handler (will ignore) [msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", nodeId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 133
    :cond_3
    :goto_0
    return-void

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    .line 110
    .local v6, "locTopVer":J
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    .line 112
    .local v10, "rmtTopVer":J
    cmp-long v12, v6, v10

    if-gez v12, :cond_6

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received message has higher topology version [msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", locTopVer="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", rmtTopVer="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 117
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v12, v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyFuture(J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v9

    .line 119
    .local v9, "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    invoke-interface {v9}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v12

    if-nez v12, :cond_6

    .line 120
    move-object v3, v2

    .line 122
    .local v3, "c0":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    new-instance v12, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1, v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    invoke-interface {v9, v12}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0

    .line 132
    .end local v3    # "c0":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;>;"
    .end local v9    # "topFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-object/from16 v0, p1

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->onMessage0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    invoke-static {v12, v0, v5, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    goto/16 :goto_0
.end method
