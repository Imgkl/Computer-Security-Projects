.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;
.super Ljava/lang/Object;
.source "GridNearLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

.field final synthetic val$node:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1111
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;)V
    .locals 0

    .prologue
    .line 1111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.4;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.4;"
    .local p1, "t":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1115
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending near lock request [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1117
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1127
    :goto_0
    return-void

    .line 1119
    :catch_0
    move-exception v1

    .line 1120
    .local v1, "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1122
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto :goto_0

    .line 1124
    .end local v1    # "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 1125
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
