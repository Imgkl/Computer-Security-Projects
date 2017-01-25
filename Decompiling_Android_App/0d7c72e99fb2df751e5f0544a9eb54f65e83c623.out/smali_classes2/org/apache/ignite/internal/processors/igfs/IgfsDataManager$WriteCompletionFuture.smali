.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteCompletionFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private volatile awaitingLast:Z

.field private fileId:Lorg/apache/ignite/lang/IgniteUuid;

.field private pendingAcks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1775
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p2, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 1791
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1783
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    .line 1792
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1794
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1795
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .prologue
    .line 1775
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->markWaitingLastAck()V

    return-void
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # J

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onWriteRequest(Ljava/util/UUID;J)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # J

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onWriteAck(Ljava/util/UUID;J)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V

    return-void
.end method

.method private checkCompleted()Z
    .locals 4

    .prologue
    .line 1885
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1886
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1889
    .local v2, "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1890
    const/4 v3, 0x0

    .line 1894
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Long;>;>;"
    .end local v2    # "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private markWaitingLastAck()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1872
    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->awaitingLast:Z

    .line 1874
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked write completion future as awaiting last ack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1877
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->checkCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1878
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Object;)Z

    .line 1879
    :cond_1
    return-void
.end method

.method private onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 1833
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1836
    .local v0, "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1837
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    aput-object v3, v1, v2

    invoke-virtual {p2, v1}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1838
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write data (not enough space on node): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to wait for write completion (write failed on node): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private onWriteAck(Ljava/util/UUID;J)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "batchId"    # J

    .prologue
    const/16 v5, 0x5d

    .line 1852
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1853
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1855
    .local v0, "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received acknowledgement message for not registered node [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", batchId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1858
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1860
    .local v1, "rmv":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received acknowledgement message for not registered batch [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", batchId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1863
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->awaitingLast:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->checkCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1864
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Object;)Z

    .line 1866
    .end local v0    # "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1    # "rmv":Z
    :cond_2
    return-void
.end method

.method private onWriteRequest(Ljava/util/UUID;J)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "batchId"    # J

    .prologue
    .line 1816
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1817
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1819
    .local v0, "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 1820
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->pendingAcks:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    invoke-static {v1, p1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    check-cast v0, Ljava/util/Set;

    .line 1822
    .restart local v0    # "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1824
    .end local v0    # "reqIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "res"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1799
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1800
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->fileId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1802
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    const/4 v0, 0x1

    .line 1806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 1775
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
