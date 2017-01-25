.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startRoutine(Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZLorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

.field final synthetic val$routineId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 532
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;JLjava/util/UUID;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 532
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->val$routineId:Ljava/util/UUID;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 5

    .prologue
    .line 535
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStartAck:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->val$routineId:Ljava/util/UUID;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 537
    .local v1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v1, :cond_1

    .line 538
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->startFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$4000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->val$routineId:Ljava/util/UUID;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;

    .line 540
    .local v0, "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 545
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 546
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get start acknowledgement from nodes (timeout expired): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Will unregister all continuous listeners."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 549
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$4;->val$routineId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopRoutine(Ljava/util/UUID;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 554
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    :cond_1
    :goto_0
    return-void

    .line 552
    .restart local v0    # "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onRemoteRegistered()V

    goto :goto_0
.end method
