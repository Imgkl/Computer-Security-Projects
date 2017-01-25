.class Lorg/apache/ignite/internal/IgniteKernal$2;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/IgniteKernal;

.field final synthetic val$execSvc:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$verChecker0:Lorg/apache/ignite/internal/GridUpdateNotifier;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/IgniteKernal;Lorg/apache/ignite/internal/GridUpdateNotifier;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$verChecker0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    iput-object p3, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$verChecker0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridUpdateNotifier;->topologySize(I)V

    .line 863
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$verChecker0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-static {v2}, Lorg/apache/ignite/internal/IgniteKernal;->access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/GridUpdateNotifier;->checkForNewVersion(Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V

    .line 866
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 870
    iget-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->val$verChecker0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    iget-object v1, p0, Lorg/apache/ignite/internal/IgniteKernal$2;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    invoke-static {v1}, Lorg/apache/ignite/internal/IgniteKernal;->access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridUpdateNotifier;->reportStatus(Lorg/apache/ignite/IgniteLogger;)V

    .line 871
    return-void
.end method
