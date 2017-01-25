.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;
.super Ljava/lang/Object;
.source "GridCacheCountDownLatchImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J

.field private static final stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private autoDel:Z

.field private cnt:I

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private initCnt:I

.field private final initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile internalLatch:Ljava/util/concurrent/CountDownLatch;

.field private key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

.field private latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private name:Ljava/lang/String;

.field private volatile rmvd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cnt"    # I
    .param p3, "initCnt"    # I
    .param p4, "autoDel"    # Z
    .param p5, "key"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .param p7, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p6, "latchView":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 113
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 114
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_4
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p7, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_5
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;

    .line 121
    iput p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I

    .line 122
    iput p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initCnt:I

    .line 123
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->autoDel:Z

    .line 124
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .line 125
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 126
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 128
    invoke-virtual {p7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->latchView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    .prologue
    .line 39
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I

    return v0
.end method

.method private initializeLatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized internal latch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 287
    :cond_1
    return-void

    .line 278
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 282
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 284
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Internal latch has not been properly initialized."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 327
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->countDownLatch(Ljava/lang/String;IZZ)Lorg/apache/ignite/IgniteCountDownLatch;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 333
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 329
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/InvalidObjectException;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method


# virtual methods
.method public autoDelete()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->autoDel:Z

    return v0
.end method

.method public await()V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initializeLatch()V

    .line 156
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 166
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initializeLatch()V

    .line 168
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 291
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeCountDownLatch(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public count()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I

    return v0
.end method

.method public countDown()I
    .locals 4

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;ILorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public countDown(I)I
    .locals 3
    .param p1, "val"    # I

    .prologue
    .line 192
    if-lez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "val should be positive"

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 195
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;ILorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public countDownAll()V
    .locals 4

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$CountDownCallable;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;ILorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl$1;)V

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public initialCount()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->initCnt:I

    return v0
.end method

.method public key()Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalid(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 222
    return-void
.end method

.method public onRemoved()Z
    .locals 1

    .prologue
    .line 214
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->rmvd:Z

    return v0
.end method

.method public onUpdate(I)V
    .locals 4
    .param p1, "cnt"    # I

    .prologue
    .line 236
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->cnt:I

    .line 240
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->internalLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 312
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 313
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->rmvd:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheCountDownLatchImpl;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 306
    return-void
.end method
