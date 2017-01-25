.class final Lorg/apache/ignite/internal/GridDiagnostic$6;
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
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method public body()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x400

    .line 143
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/management/MemoryUsage;->getInit()J

    move-result-wide v0

    .line 144
    .local v0, "initBytes":J
    div-long v4, v0, v6

    div-long v2, v4, v6

    .line 146
    .local v2, "initMb":J
    const-wide/32 v4, 0x20000000

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 147
    iget-object v4, p0, Lorg/apache/ignite/internal/GridDiagnostic$6;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Initial heap size is %dMB (should be no less than 512MB, use -Xms512m -Xmx512m)."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 150
    :cond_0
    return-void
.end method
