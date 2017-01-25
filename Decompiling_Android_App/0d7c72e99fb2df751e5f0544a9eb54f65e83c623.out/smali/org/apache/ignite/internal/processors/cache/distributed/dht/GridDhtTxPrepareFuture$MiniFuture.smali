.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridDhtTxPrepareFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1091
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V
    .locals 2
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "dhtMapping"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .param p4, "nearMapping"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .prologue
    .line 1118
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1096
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1119
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1121
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    .line 1122
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 1123
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 1124
    return-void
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1130
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 1137
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    goto :goto_0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1148
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1149
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .line 1155
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node left grid while sending or waiting for reply (will ignore): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->removeMapping(Ljava/util/UUID;)Z

    .line 1161
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 1162
    return-void
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V
    .locals 34
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    .prologue
    .line 1168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->error()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    .line 1265
    :goto_0
    return-void

    .line 1173
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->nearEvicted()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1175
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->nearEvicted()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1178
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v27

    check-cast v27, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1180
    .local v27, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->messageId()J

    move-result-wide v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeReader(Ljava/util/UUID;J)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1184
    .end local v27    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_0
    move-exception v30

    .line 1185
    .local v30, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v28

    .line 1187
    .local v28, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v28, :cond_1

    .line 1190
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_2

    .line 1196
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v28    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v30    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nearMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->nearEvicted()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->evictReaders(Ljava/util/Collection;)V

    .line 1200
    .end local v29    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->invalidPartitions()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_4
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1202
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1204
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->invalidPartitions()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1205
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->remove()V

    .line 1207
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1208
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed mapping for entry from dht mapping [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dhtMapping="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 1213
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->dhtMapping:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1217
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed mapping for node entirely because all partitions are invalid [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->nodeId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1222
    .end local v32    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    .line 1224
    .local v11, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v33

    .line 1226
    .local v33, "rec":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->preloadEntries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 1227
    .local v31, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->cacheId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 1230
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :cond_8
    :goto_5
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 1232
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 1235
    .local v12, "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :goto_6
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl()J

    move-result-wide v6

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1237
    if-eqz v33, :cond_9

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1238
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v13

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v14

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v16

    const/16 v17, 0x0

    check-cast v17, Lorg/apache/ignite/lang/IgniteUuid;

    const/16 v18, 0x0

    const/16 v19, 0x54

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v13 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->invoke:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_4

    .line 1248
    :catch_1
    move-exception v28

    .line 1250
    .local v28, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 1232
    .end local v12    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .end local v28    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_a
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto/16 :goto_6

    .line 1254
    .restart local v12    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :catch_2
    move-exception v30

    .line 1255
    .restart local v30    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1256
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$400()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set entry initial value (entry is obsolete, will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1263
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v12    # "drType":Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .end local v30    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v31    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1269
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    const-string v2, "done"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "cancelled"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "err"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->error()Ljava/lang/Throwable;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
