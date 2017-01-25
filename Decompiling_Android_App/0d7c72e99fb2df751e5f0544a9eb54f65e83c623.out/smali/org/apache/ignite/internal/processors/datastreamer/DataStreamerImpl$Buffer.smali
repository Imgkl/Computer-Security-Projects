.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Buffer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final idGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private final isLocNode:Z

.field private final locFuts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final node:Lorg/apache/ignite/cluster/ClusterNode;

.field private final reqs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sem:Ljava/util/concurrent/Semaphore;

.field private final signalC:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 906
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 2
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 943
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 933
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$1;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->signalC:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 944
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 946
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 948
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    .line 949
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    .line 952
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->isLocNode:Z

    .line 954
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->newEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    .line 955
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 956
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->signalC:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 958
    new-instance v0, Ljava/util/concurrent/Semaphore;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->parallelOps:I
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->sem:Ljava/util/concurrent/Semaphore;

    .line 959
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->signalTaskFinished(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    .prologue
    .line 906
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    return-object v0
.end method

.method private incrementActiveTasks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->sem:Ljava/util/concurrent/Semaphore;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->acquire(Ljava/util/concurrent/Semaphore;)V

    .line 1059
    return-void
.end method

.method private newEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1300(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private signalTaskFinished(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1067
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1068
    return-void
.end method

.method private submit(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .local p2, "curFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1078
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1079
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1081
    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->incrementActiveTasks()V

    .line 1085
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->isLocNode:Z

    if-eqz v2, :cond_4

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v10

    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore:Z
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1600(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v9

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;Ljava/util/Collection;ZZLorg/apache/ignite/stream/StreamReceiver;)V

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v21

    .line 1089
    .local v21, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1091
    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer$2;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1193
    .end local v21    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_3
    :goto_0
    return-void

    .line 1108
    :cond_4
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 1109
    .local v20, "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 1111
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v24

    .line 1113
    .local v24, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v24, :cond_5

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheObjCtx:Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1126
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v24    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v20

    .line 1127
    .local v20, "e":Lorg/apache/ignite/IgniteCheckedException;
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v6, "Failed to marshal (request will not be sent)."

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1117
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->updaterBytes:[B
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1800(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B

    move-result-object v2

    if-nez v2, :cond_8

    .line 1118
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1600(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1120
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->rcvr:Lorg/apache/ignite/stream/StreamReceiver;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1600(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v6

    # setter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->updaterBytes:[B
    invoke-static {v2, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1802(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[B)[B

    .line 1123
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topicBytes:[B
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1900(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B

    move-result-object v2

    if-nez v2, :cond_9

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topic:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$2000(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v6

    # setter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topicBytes:[B
    invoke-static {v2, v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1902(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;[B)[B
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1132
    :cond_9
    const/16 v19, 0x0

    .line 1133
    .local v19, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    const/16 v23, 0x0

    .line 1135
    .local v23, "jobPda0":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1137
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$2100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v23

    .line 1139
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    if-nez v23, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1148
    :catch_1
    move-exception v20

    .line 1149
    .restart local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deploy class (request will not be sent): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1141
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v19

    .line 1143
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v18

    .line 1145
    .local v18, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v18, :cond_b

    .line 1146
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onEnter()V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1154
    :cond_b
    if-nez v19, :cond_c

    .line 1155
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deploy class (request will be sent): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1158
    .end local v18    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 1160
    .local v4, "reqId":J
    move-object/from16 v21, p2

    .line 1162
    .restart local v21    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v2, v21

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-interface {v6, v7, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    new-instance v3, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->topicBytes:[B
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1900(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cacheName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->updaterBytes:[B
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1800(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)[B

    move-result-object v8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->skipStore:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z

    move-result v11

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v12

    :goto_2
    if-eqz v19, :cond_e

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    :goto_3
    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v14

    :goto_4
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->participants()Ljava/util/Map;

    move-result-object v15

    :goto_5
    if-eqz v19, :cond_11

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v16

    :goto_6
    if-nez v19, :cond_12

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v17}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;-><init>(J[BLjava/lang/String;[BLjava/util/Collection;ZZLorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 1180
    .local v3, "req":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    sget-object v7, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    sget-object v8, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->PUBLIC_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v2, v6, v7, v3, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 1182
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1183
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sent request to node [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1185
    :catch_2
    move-exception v20

    .line 1186
    .restart local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v2, v21

    .line 1187
    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 1164
    .end local v3    # "req":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_7

    .restart local v3    # "req":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;
    .restart local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_13
    move-object/from16 v2, v21

    .line 1189
    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v6, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send request (node has left): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method cancelAll()V
    .locals 7

    .prologue
    .line 1266
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data streamer has been cancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v1, "err":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1270
    .local v2, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    const-string v6, "Failed to cancel mini-future."

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1277
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1278
    .local v3, "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 1279
    .end local v3    # "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    :cond_1
    return-void
.end method

.method flush()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1012
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    const/4 v1, 0x0

    .line 1013
    .local v1, "entries0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    const/4 v0, 0x0

    .line 1015
    .local v0, "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    monitor-enter p0

    .line 1016
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1017
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    .line 1018
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1020
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->newEntries()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    .line 1021
    new-instance v5, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1022
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->signalC:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1024
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    if-eqz v1, :cond_1

    .line 1027
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->submit(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    .line 1030
    :cond_1
    const/4 v4, 0x0

    .line 1032
    .local v4, "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1033
    .local v2, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    if-nez v4, :cond_2

    .line 1034
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 1036
    .restart local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 1024
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1039
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1040
    .restart local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    if-nez v4, :cond_4

    .line 1041
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 1043
    .restart local v4    # "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_1

    .line 1046
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_5
    if-eqz v4, :cond_6

    .line 1047
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 1049
    :cond_6
    return-object v4
.end method

.method onNodeLeft()V
    .locals 7

    .prologue
    .line 1199
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->isLocNode:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1200
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufMappings:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$200(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1202
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1203
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Forcibly completing futures (node has left): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1205
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to wait for request completion (node has left): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1209
    .local v2, "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 1214
    .end local v2    # "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :cond_3
    monitor-enter p0

    .line 1215
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1216
    .local v0, "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 1219
    return-void

    .line 1216
    .end local v0    # "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method onResponse(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;)V
    .locals 10
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    const/4 v8, 0x0

    .line 1225
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1226
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received data load response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1228
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;->requestId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1230
    .local v3, "f":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<*>;"
    if-nez v3, :cond_2

    .line 1231
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1232
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Future for request has not been found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;->requestId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1260
    :cond_1
    :goto_0
    return-void

    .line 1237
    :cond_2
    const/4 v1, 0x0

    .line 1239
    .local v1, "err":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;->errorBytes()[B

    move-result-object v2

    .line 1241
    .local v2, "errBytes":[B
    if-eqz v2, :cond_3

    .line 1243
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->jobPda:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$2100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v4

    .line 1245
    .local v4, "jobPda0":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1100(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    :goto_1
    invoke-interface {v6, v2, v5}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "err":Ljava/lang/Throwable;
    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    .end local v4    # "jobPda0":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    .restart local v1    # "err":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v3, v8, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 1258
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1259
    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finished future [fut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reqId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerResponse;->requestId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    .restart local v4    # "jobPda0":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :cond_4
    :try_start_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 1249
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local v4    # "jobPda0":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    const-string v6, "Failed to unmarshal response."

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v8, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1285
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    monitor-enter p0

    .line 1286
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 1287
    .local v8, "size":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;

    const-string v2, "entriesCnt"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "locFutsSize"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->locFuts:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "reqsSize"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->reqs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1287
    .end local v8    # "size":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method update(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;)",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 969
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl<TK;TV;>.Buffer;"
    .local p1, "newEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .local p2, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    const/4 v1, 0x0

    .line 972
    .local v1, "entries0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    monitor-enter p0

    .line 973
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 975
    .local v0, "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 977
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .line 978
    .local v2, "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    .end local v0    # "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 980
    .restart local v0    # "curFut0":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->bufSize:I
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$1300(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 981
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    .line 983
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->newEntries()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->entries:Ljava/util/List;

    .line 984
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 985
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->curFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->signalC:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 987
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    if-eqz v1, :cond_2

    .line 990
    invoke-direct {p0, v1, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->submit(Ljava/util/Collection;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    .line 992
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->cancelled:Z
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$700(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 993
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data streamer has been cancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$Buffer;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 996
    :cond_2
    return-object v0
.end method
