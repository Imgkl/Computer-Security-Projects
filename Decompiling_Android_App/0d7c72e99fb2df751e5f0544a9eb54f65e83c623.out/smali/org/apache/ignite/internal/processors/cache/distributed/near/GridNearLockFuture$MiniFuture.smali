.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNearLockFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private mappings:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private node:Lorg/apache/ignite/cluster/ClusterNode;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 2
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1244
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    .local p3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p4, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1221
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1245
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 1246
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    .line 1247
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 1248
    return-void
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1254
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public keys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 1261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    const/16 v3, 0x5d

    .line 1275
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1280
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1285
    :goto_0
    return-void

    .line 1283
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error after another result has been processed [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mini="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    const/4 v3, 0x1

    .line 1291
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1296
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node left grid while sending or waiting for reply (will fail): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1298
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->removeMapping(Ljava/util/UUID;)Z

    .line 1302
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    invoke-static {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1304
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 32
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 1312
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1313
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1314
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1315
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Finishing mini future with an error due to error in response [miniFut="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", res="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x5d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1319
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v4, :cond_2

    .line 1320
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 1434
    :cond_1
    :goto_0
    return-void

    .line 1322
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1327
    :cond_3
    const/16 v25, 0x0

    .line 1329
    .local v25, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1331
    .local v7, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1333
    .local v28, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v2

    .line 1336
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1337
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to receive DHT version from remote node (will fail the lock): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v27

    .line 1409
    .local v27, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1410
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v6, "Failed to add candidates because entry was removed (will renew)."

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1413
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move/from16 v0, v25

    invoke-interface {v6, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1343
    .end local v27    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->valMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1345
    .local v29, "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v19

    .line 1346
    .local v19, "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v20, 0x0

    .line 1347
    .local v20, "hasOldVal":Z
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 1349
    .local v3, "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v31, 0x0

    .line 1351
    .local v31, "readRecordable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1352
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v31

    .line 1354
    if-eqz v31, :cond_6

    .line 1355
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->hasValue()Z

    move-result v20

    .line 1358
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1359
    .local v5, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->mappedVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    .line 1361
    .local v10, "mappedVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v3, :cond_8

    .line 1362
    if-eqz v29, :cond_8

    .line 1363
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1364
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1366
    .restart local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_7
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v19, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1372
    .restart local v19    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    .line 1374
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->implicitTx()Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1375
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->filterResult(I)Z

    move-result v30

    .line 1377
    .local v30, "pass":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v6

    if-eqz v30, :cond_d

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1380
    .end local v30    # "pass":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->committedVersions()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->pending()Ljava/util/Collection;

    move-result-object v13

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->readyNearLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1383
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1384
    if-eqz v31, :cond_a

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v11

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->partition()I

    move-result v12

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x40

    if-eqz v3, :cond_e

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->resolveTaskName()Ljava/lang/String;

    move-result-object v23

    :goto_5
    move-object/from16 v17, v3

    invoke-virtual/range {v11 .. v23}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1403
    :cond_b
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1404
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed response for entry [res="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", entry="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x5d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1422
    :cond_c
    add-int/lit8 v25, v25, 0x1

    .line 1423
    goto/16 :goto_1

    .line 1377
    .restart local v30    # "pass":Z
    :cond_d
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysFalse0Arr()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_3

    .line 1385
    .end local v30    # "pass":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v23, 0x0

    goto :goto_5

    .line 1415
    .end local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v5    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v10    # "mappedVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v19    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v20    # "hasOldVal":Z
    .end local v29    # "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v31    # "readRecordable":Z
    :catch_1
    move-exception v24

    .line 1416
    .local v24, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 1426
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v28    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    invoke-static {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1432
    :goto_6
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1428
    :catch_2
    move-exception v24

    .line 1429
    .restart local v24    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1438
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    const-string v2, "node"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
