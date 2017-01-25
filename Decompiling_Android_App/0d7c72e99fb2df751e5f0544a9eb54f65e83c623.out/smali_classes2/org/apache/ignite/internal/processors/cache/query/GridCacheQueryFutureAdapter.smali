.class public abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheQueryFutureAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/util/Collection",
        "<TR;>;>;",
        "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
        "<TR;>;",
        "Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NULL:Ljava/lang/Object;

.field protected static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allCol:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final cnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private endTime:J

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation
.end field

.field protected loc:Z

.field protected final mux:Ljava/lang/Object;

.field protected final qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Collection",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private timeoutId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->NULL:Ljava/lang/Object;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->allCol:Ljava/util/Collection;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    .line 76
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 91
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    .line 92
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->keys:Ljava/util/Collection;

    .line 93
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Z)V
    .locals 8
    .param p2, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .param p3, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const-wide/16 v6, 0x0

    .line 100
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 61
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    .line 64
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->allCol:Ljava/util/Collection;

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    .line 76
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 101
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 102
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    .line 103
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->loc:Z

    .line 105
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 108
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->startTime:J

    .line 110
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v0

    .line 112
    .local v0, "timeout":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 113
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->startTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->endTime:J

    .line 116
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->endTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 117
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->endTime:J

    .line 119
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 122
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->enableDedup()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->keys:Ljava/util/Collection;

    .line 123
    return-void

    .line 122
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->NULL:Ljava/lang/Object;

    return-object v0
.end method

.method private checkError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->clear()V

    .line 245
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query execution failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->error()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 247
    :cond_0
    return-void
.end method

.method private dedupIfRequired(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->enableDedup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    .end local p1    # "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    return-object p1

    .line 337
    .restart local p1    # "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v1, "dedupCol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 340
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 341
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Map$Entry;

    if-eqz v4, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->keys:Ljava/util/Collection;

    move-object v0, v3

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    .line 345
    goto :goto_0
.end method

.method private internalIterator()Ljava/util/Iterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const-wide/16 v12, 0x0

    .line 254
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->checkError()V

    .line 256
    const/4 v2, 0x0

    .line 258
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 261
    :cond_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 262
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->iter:Ljava/util/Iterator;

    .line 264
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 265
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->checkError()V

    .line 305
    return-object v2

    .line 267
    :cond_3
    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 269
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    if-eqz v0, :cond_4

    .line 270
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->iter:Ljava/util/Iterator;

    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    move-object v2, v3

    .line 272
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 273
    monitor-exit v9

    goto :goto_1

    .line 274
    .end local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v0    # "c":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    :cond_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v8

    if-nez v8, :cond_0

    .line 277
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->loadPage()V

    .line 279
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v4

    .line 281
    .local v4, "timeout":J
    cmp-long v8, v4, v12

    if-nez v8, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    .line 283
    .local v6, "waitTime":J
    :goto_2
    cmp-long v8, v6, v12

    if-gtz v8, :cond_7

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 286
    goto :goto_1

    .line 281
    .end local v6    # "waitTime":J
    :cond_6
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->startTime:J

    sub-long/2addr v8, v10

    sub-long v6, v4, v8

    goto :goto_2

    .line 289
    .restart local v6    # "waitTime":J
    :cond_7
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v9

    .line 291
    :try_start_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v8

    if-nez v8, :cond_8

    .line 292
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    :cond_8
    :try_start_4
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 297
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query was interrupted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method private maskNulls(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 434
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private nextPage(JJ)Ljava/util/Collection;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const-wide/16 v8, 0x0

    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "res":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 203
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 204
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    move-object v3, v0

    .line 205
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-nez v3, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 209
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->loadPage()V

    .line 211
    cmp-long v6, p1, v8

    if-nez v6, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    .line 213
    .local v4, "waitTime":J
    :goto_1
    cmp-long v6, v4, v8

    if-gtz v6, :cond_3

    .line 233
    .end local v4    # "waitTime":J
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->checkError()V

    .line 235
    return-object v3

    .line 205
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 211
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p3

    sub-long v4, p1, v6

    goto :goto_1

    .line 216
    .restart local v4    # "waitTime":J
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 218
    :try_start_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v6

    if-nez v6, :cond_4

    .line 219
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    :cond_4
    :try_start_3
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 224
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query was interrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method private onPageError(Ljava/util/UUID;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 416
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->enqueue(Ljava/util/Collection;)V

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Z)Z

    .line 421
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 423
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 424
    monitor-exit v1

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "obj":Ljava/lang/Object;, "TR;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->NULL:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .end local p1    # "obj":Ljava/lang/Object;, "TR;"
    :goto_0
    return-object p1

    .restart local p1    # "obj":Ljava/lang/Object;, "TR;"
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private unmaskNulls(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public cancel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cancelQuery()V

    .line 511
    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract cancelQuery()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method clear()V
    .locals 0

    .prologue
    .line 504
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    return-void
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 529
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->endTime:J

    return-wide v0
.end method

.method protected enqueue(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 325
    return-void
.end method

.method fields()Z
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->get()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->loadAllPages()V

    .line 468
    :cond_0
    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/util/Collection;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->loadAllPages()V

    .line 476
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected abstract loadAllPages()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation
.end method

.method protected abstract loadPage()V
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->internalIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "next":Ljava/lang/Object;, "TR;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v2    # "next":Ljava/lang/Object;, "TR;"
    :goto_0
    return-object v2

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ignored":Ljava/util/NoSuchElementException;
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    .end local v1    # "ignored":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    invoke-direct {v3, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public nextPage()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->startTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->nextPage(JJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public nextPage(J)Ljava/util/Collection;
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->nextPage(JJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z
    .locals 8
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->startTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->duration()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->onExecuted(Ljava/lang/Object;Ljava/lang/Throwable;JJ)V

    .line 145
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected onNodeLeft(Ljava/util/UUID;)V
    .locals 0
    .param p1, "evtNodeId"    # Ljava/util/UUID;

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    return-void
.end method

.method public onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    .local p2, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 359
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received query result page [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", finished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 364
    :cond_1
    if-eqz p3, :cond_3

    .line 365
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->enqueue(Ljava/util/Collection;)V

    .line 368
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Z)Z

    .line 370
    if-eqz p1, :cond_2

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute query on node [query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 375
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 376
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Error;
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPageError(Ljava/util/UUID;Ljava/lang/Throwable;)V

    .line 404
    throw v0

    .line 370
    .end local v0    # "e":Ljava/lang/Error;
    :cond_2
    :try_start_3
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute query locally: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 378
    :cond_3
    if-nez p2, :cond_4

    .line 379
    :try_start_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 381
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->dedupIfRequired(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 383
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable()Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortablesIfNeeded(Ljava/util/Collection;Z)Ljava/util/Collection;

    move-result-object p2

    .line 385
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 386
    :try_start_5
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->enqueue(Ljava/util/Collection;)V

    .line 388
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->allCol:Ljava/util/Collection;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->maskNulls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 391
    :cond_5
    invoke-virtual {p0, p1, p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 392
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->allCol:Ljava/util/Collection;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->unmaskNulls(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->clear()V

    .line 397
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 398
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPageError(Ljava/util/UUID;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_7
    move-object v1, p2

    .line 392
    goto :goto_2
.end method

.method protected abstract onPage(Ljava/util/UUID;Z)Z
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 535
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cancelQuery()V

    .line 537
    new-instance v1, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;

    const-string v2, "Query timed out."

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const/4 v2, 0x0

    .line 551
    const-string v0, ">>> Query future memory statistics."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  queueSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  allCollSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->allCol:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  keysSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->keys:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  cnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->cnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    return-object v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<TK;TV;TR;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
