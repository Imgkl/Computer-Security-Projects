.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridDhtPartitionDemandPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private remaining:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool",
            "<TK;TV;>.DemandWorker;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1078
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool",
            "<TK;TV;>.DemandWorker;>;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.SyncFuture;"
    .local p2, "workers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1089
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->poolSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1091
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->remaining:Ljava/util/Collection;

    .line 1092
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;
    .param p2, "x1"    # Ljava/util/Collection;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$1;

    .prologue
    .line 1078
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.SyncFuture;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method onWorkerDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool",
            "<TK;TV;>.DemandWorker;)V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.SyncFuture;"
    .local p1, "w":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$DemandWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool<TK;TV;>.DemandWorker;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->remaining:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed full partition iteration for worker [worker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1105
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->remaining:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Completed sync future."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1109
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$SyncFuture;->onDone()Z

    goto :goto_0
.end method
