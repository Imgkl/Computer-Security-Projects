.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridDhtColocatedLockFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
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
.field static final synthetic $assertionsDisabled:Z

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

.field private mappings:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
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

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1084
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Deque;)V
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
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    .local p3, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p4, "mappings":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1089
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1114
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 1115
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    .line 1116
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->mappings:Ljava/util/Deque;

    .line 1117
    return-void
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1123
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

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
    .line 1137
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 1130
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    const/16 v3, 0x5d

    .line 1144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    .line 1149
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error after another result has been processed [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    const/4 v3, 0x1

    .line 1160
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1165
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

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

    .line 1167
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->removeMapping(Ljava/util/UUID;)Z

    .line 1171
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    invoke-static {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1173
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 22
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 1181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1182
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1183
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing mini future with an error due to error in response [miniFut="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", res="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1188
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v2, :cond_2

    .line 1189
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    .line 1272
    :cond_1
    :goto_0
    return-void

    .line 1191
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1196
    :cond_3
    const/16 v18, 0x0

    .line 1198
    .local v18, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->keys:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1199
    .local v4, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->valMap:Ljava/util/Map;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1201
    .local v20, "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v8

    .line 1203
    .local v8, "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v15

    .line 1205
    .local v15, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v8, :cond_4

    .line 1206
    if-eqz v20, :cond_4

    .line 1207
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2, v15}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1208
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v8, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1212
    .restart local v8    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v21

    .line 1216
    .local v21, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1218
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markLocked()V

    .line 1220
    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;

    .line 1223
    .local v17, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1224
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to receive DHT version from remote node (will fail the lock): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1236
    :catch_0
    move-exception v16

    .line 1237
    .local v16, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 1231
    .end local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;->resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1233
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1234
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processed response for entry [res="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", entry="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1245
    .end local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;
    .end local v21    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x40

    if-eqz v8, :cond_a

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v14

    if-nez v14, :cond_b

    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_8
    add-int/lit8 v18, v18, 0x1

    .line 1261
    goto/16 :goto_1

    .line 1243
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->markExplicitOwner(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;J)V

    goto/16 :goto_2

    .line 1246
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->resolveTaskName()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 1264
    .end local v4    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v8    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v15    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v20    # "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->mappings:Ljava/util/Deque;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->proceedMapping(Ljava/util/Deque;)V
    invoke-static {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/util/Deque;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1270
    :goto_5
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1266
    :catch_1
    move-exception v16

    .line 1267
    .restart local v16    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1276
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;

    const-string v2, "node"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node:Lorg/apache/ignite/cluster/ClusterNode;

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
