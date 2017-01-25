.class Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;
.super Ljava/lang/Thread;
.source "GridClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/GridClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopologyUpdaterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)V
    .locals 2

    .prologue
    .line 495
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientImpl;->id:Ljava/util/UUID;
    invoke-static {p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->access$100(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-topology-update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl;
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/impl/GridClientImpl$1;

    .prologue
    .line 491
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 502
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v2, v2, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->cfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getTopologyRefreshFrequency()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 506
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    # invokes: Lorg/apache/ignite/internal/client/impl/GridClientImpl;->tryInitTopology()V
    invoke-static {v2}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->access$200(Lorg/apache/ignite/internal/client/impl/GridClientImpl;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Lorg/apache/ignite/internal/client/GridClientException;
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientImpl$TopologyUpdaterThread;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientImpl;

    iget-object v2, v2, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->top:Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;->fail(Lorg/apache/ignite/internal/client/GridClientException;)V

    .line 511
    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientImpl;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/GridClientImpl;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update topology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 516
    .end local v0    # "e":Lorg/apache/ignite/internal/client/GridClientException;
    :catch_1
    move-exception v1

    .line 518
    .local v1, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 520
    .end local v1    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
