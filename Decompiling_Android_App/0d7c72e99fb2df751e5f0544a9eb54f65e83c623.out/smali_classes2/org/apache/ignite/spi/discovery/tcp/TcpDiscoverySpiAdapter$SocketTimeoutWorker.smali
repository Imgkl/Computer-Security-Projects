.class public Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocketTimeoutWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mux0:Ljava/lang/Object;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

.field private final timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
            "<",
            "Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 747
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)V
    .locals 3

    .prologue
    .line 769
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    .line 770
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->access$000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-sock-timeout-worker"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 749
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker$1;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    .line 764
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    .line 772
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->setPriority(I)V

    .line 773
    return-void
.end method


# virtual methods
.method public addTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V
    .locals 4
    .param p1, "timeoutObj"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    .prologue
    .line 780
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 782
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 785
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 787
    monitor-exit v1

    .line 789
    :cond_2
    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected body()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 803
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Socket timeout worker has been started."

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 805
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 806
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 808
    .local v2, "now":J
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    .line 811
    .local v4, "timeoutObj":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime()J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-gtz v5, :cond_2

    .line 812
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 814
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->onTimeout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 815
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Socket write has timed out (consider increasing \'sockTimeout\' configuration property) [sockTimeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-wide v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->sockTimeout:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 818
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onSocketTimeout()V

    goto :goto_1

    .line 825
    .end local v4    # "timeoutObj":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    :cond_2
    iget-object v8, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    monitor-enter v8

    .line 831
    :goto_2
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    .line 833
    .local v0, "first":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    if-eqz v0, :cond_3

    .line 834
    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;->endTime()J

    move-result-wide v10

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v10, v12

    .line 836
    .local v6, "waitTime":J
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_4

    .line 837
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 844
    .end local v0    # "first":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    .end local v6    # "waitTime":J
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 842
    .restart local v0    # "first":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->mux0:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 844
    .restart local v6    # "waitTime":J
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 846
    .end local v0    # "first":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;>;"
    .end local v2    # "now":J
    .end local v6    # "waitTime":J
    :cond_5
    return-void
.end method

.method public removeTimeoutObject(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;)V
    .locals 1
    .param p1, "timeoutObj"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutObject;

    .prologue
    .line 795
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$SocketTimeoutWorker;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 798
    return-void
.end method
