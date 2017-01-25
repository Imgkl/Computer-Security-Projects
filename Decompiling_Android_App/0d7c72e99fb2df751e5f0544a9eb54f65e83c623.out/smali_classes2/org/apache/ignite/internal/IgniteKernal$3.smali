.class Lorg/apache/ignite/internal/IgniteKernal$3;
.super Lorg/apache/ignite/internal/util/GridTimerTask;
.source "IgniteKernal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/IgniteKernal;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastCompletedCnt:J

.field final synthetic this$0:Lorg/apache/ignite/internal/IgniteKernal;

.field final synthetic val$execSvc:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$interval:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/IgniteKernal;Ljava/util/concurrent/ExecutorService;J)V
    .locals 1

    .prologue
    .line 885
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->val$interval:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 8

    .prologue
    .line 890
    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    instance-of v3, v3, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v3, :cond_0

    .line 905
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 895
    .local v2, "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    .line 899
    .local v0, "completedCnt":J
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-wide v4, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->lastCompletedCnt:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 901
    iget-object v3, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-static {v3}, Lorg/apache/ignite/internal/IgniteKernal;->access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Possible thread pool starvation detected (no task completed in last "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->val$interval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms, is executorService pool size large enough?)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 904
    :cond_1
    iput-wide v0, p0, Lorg/apache/ignite/internal/IgniteKernal$3;->lastCompletedCnt:J

    goto :goto_0
.end method
