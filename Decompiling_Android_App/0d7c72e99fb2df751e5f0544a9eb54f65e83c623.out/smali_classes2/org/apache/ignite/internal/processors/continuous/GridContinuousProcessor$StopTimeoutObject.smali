.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopTimeoutObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final req:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

.field private final routineId:Ljava/util/UUID;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1859
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;JLjava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "routineId"    # Ljava/util/UUID;
    .param p5, "req"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .prologue
    .line 1874
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    .line 1875
    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    .line 1877
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1878
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1880
    :cond_1
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->timeout:J

    .line 1881
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    .line 1882
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->req:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    .line 1883
    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 13

    .prologue
    .line 1887
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 1889
    .local v10, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v10, :cond_2

    .line 1890
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$4800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get stop acknowledgement from nodes (timeout expired): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Will retry."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1893
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$4900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;

    .line 1895
    .local v7, "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    if-eqz v7, :cond_2

    .line 1896
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1897
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->waitForStopAck:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    invoke-interface {v0, v1, v10}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    .line 1902
    .local v9, "id":Ljava/util/UUID;
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->req:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    const/4 v2, 0x0

    # invokes: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    invoke-static {v0, v9, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1904
    :catch_0
    move-exception v11

    .line 1905
    .local v11, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$5000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$5100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resend stop request to node (is node alive?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1908
    .end local v11    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v6

    .line 1909
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$5200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resend stop request to node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1911
    invoke-interface {v10, v9}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1913
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1919
    .end local v6    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v9    # "id":Ljava/util/UUID;
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$5300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v12

    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->timeout:J

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->req:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;JLjava/util/UUID;Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;)V

    invoke-virtual {v12, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1925
    .end local v7    # "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 1921
    .restart local v7    # "f":Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->stopFuts:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;->access$4900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopTimeoutObject;->routineId:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1922
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StopFuture;->onDone()Z

    goto :goto_1
.end method
