.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;
.super Ljava/lang/Object;
.source "GridIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridCommunicationMessageSet"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private endTime:J

.field private lastTs:J

.field private final msgs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/managers/communication/GridIoMessage;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final nodeId:Ljava/util/UUID;

.field private final plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private final reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final skipOnTimeout:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

.field private final timeout:J

.field private final timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final topic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1770
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Ljava/lang/Object;Ljava/util/UUID;JZLorg/apache/ignite/internal/managers/communication/GridIoMessage;)V
    .locals 5
    .param p2, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p3, "topic"    # Ljava/lang/Object;
    .param p4, "nodeId"    # Ljava/util/UUID;
    .param p5, "timeout"    # J
    .param p7, "skipOnTimeout"    # Z
    .param p8, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    .prologue
    .line 1818
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    .line 1792
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1819
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1820
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1821
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1822
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1824
    :cond_3
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 1825
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId:Ljava/util/UUID;

    .line 1826
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic:Ljava/lang/Object;

    .line 1827
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->timeout:J

    .line 1828
    iput-boolean p7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->skipOnTimeout:Z

    .line 1830
    invoke-direct {p0, p5, p6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime:J

    .line 1832
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1834
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->lastTs:J

    .line 1836
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    iget-wide v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->lastTs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p8, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1837
    return-void

    :cond_4
    move-wide v0, p5

    .line 1827
    goto :goto_0
.end method

.method private endTime(J)J
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 1979
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, p1

    .line 1982
    .local v0, "endTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1983
    const-wide v0, 0x7fffffffffffffffL

    .line 1985
    :cond_0
    return-wide v0
.end method


# virtual methods
.method add(Lorg/apache/ignite/internal/managers/communication/GridIoMessage;)V
    .locals 4
    .param p1, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    .prologue
    .line 1962
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1963
    return-void
.end method

.method changed()Z
    .locals 1

    .prologue
    .line 1969
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 1846
    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime:J

    return-wide v0
.end method

.method nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public onTimeout()V
    .locals 10

    .prologue
    .line 1852
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1400(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 1854
    .local v2, "lsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    if-eqz v2, :cond_3

    .line 1855
    const-wide/16 v0, 0x0

    .line 1857
    .local v0, "delta":J
    iget-boolean v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->skipOnTimeout:Z

    if-eqz v6, :cond_1

    .line 1859
    :goto_0
    const-wide/16 v0, 0x0

    .line 1861
    const/4 v5, 0x0

    .line 1863
    .local v5, "unwind":Z
    monitor-enter p0

    .line 1864
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1865
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->lastTs:J

    sub-long v0, v6, v8

    .line 1867
    iget-wide v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->timeout:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    .line 1868
    const/4 v5, 0x1

    .line 1870
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    if-eqz v5, :cond_1

    .line 1873
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6, p0, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$1700(Lorg/apache/ignite/internal/managers/communication/GridIoManager;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    goto :goto_0

    .line 1870
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1880
    .end local v5    # "unwind":Z
    :cond_1
    iget-wide v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->timeout:J

    sub-long/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->endTime:J

    .line 1882
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2800(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v6

    invoke-virtual {v6, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1902
    .end local v0    # "delta":J
    :cond_2
    :goto_1
    return-void

    .line 1887
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$2900(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1888
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$3000(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing message set due to timeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1890
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentMap;

    .line 1892
    .local v3, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;>;"
    if-eqz v3, :cond_2

    .line 1895
    monitor-enter v3

    .line 1896
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId:Ljava/util/UUID;

    invoke-interface {v3, v6, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x1

    .line 1897
    .local v4, "rmv":Z
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1899
    if-eqz v4, :cond_2

    .line 1900
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->this$0:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    invoke-static {v6}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->access$500(Lorg/apache/ignite/internal/managers/communication/GridIoManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic:Ljava/lang/Object;

    invoke-interface {v6, v7, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1896
    .end local v4    # "rmv":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 1897
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method policy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method release()V
    .locals 3

    .prologue
    .line 1943
    sget-boolean v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message set was not reserved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1945
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1946
    return-void
.end method

.method reserve()Z
    .locals 3

    .prologue
    .line 1929
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method reserved()Z
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1990
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method unwind(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V
    .locals 3
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .prologue
    .line 1952
    sget-boolean v1, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->reserved:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1954
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/lang/Long;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 1955
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/communication/GridIoMessage;->message()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/ignite/internal/managers/communication/GridMessageListener;->onMessage(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1954
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$GridCommunicationMessageSet;->msgs:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/lang/Long;>;"
    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .restart local v0    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Ljava/lang/Long;>;"
    goto :goto_0

    .line 1956
    :cond_1
    return-void
.end method
