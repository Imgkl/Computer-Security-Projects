.class final Lorg/apache/ignite/internal/GridDiagnostic$1;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridDiagnostic;->runBackgroundCheck(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method public body()V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 62
    .local v1, "locHost":Ljava/net/InetAddress;
    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/apache/ignite/internal/GridDiagnostic$1;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Default local host is unreachable. This may lead to delays on grid network operations. Check your OS network setting to correct it."

    const-string v4, "Default local host is unreachable."

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "locHost":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ignore":Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridDiagnostic$1;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to perform network diagnostics. It is usually caused by serious network configuration problem. Check your OS network setting to correct it."

    const-string v4, "Failed to perform network diagnostics."

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
