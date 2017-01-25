.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->requestJobSiblings(Lorg/apache/ignite/compute/ComputeTaskSession;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

.field final synthetic val$cond:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

.field final synthetic val$taskNodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 433
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$taskNodeId:Ljava/util/UUID;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$cond:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 436
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 438
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 440
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$taskNodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 444
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$t:Lorg/apache/ignite/lang/IgniteBiTuple;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node that originated task execution has left grid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$taskNodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 454
    :cond_3
    return-void

    .line 451
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
