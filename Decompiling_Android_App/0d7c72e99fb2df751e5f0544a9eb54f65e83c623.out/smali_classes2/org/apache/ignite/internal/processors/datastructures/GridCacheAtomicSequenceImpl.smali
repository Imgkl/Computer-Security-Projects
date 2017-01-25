.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;
.super Ljava/lang/Object;
.source "GridCacheAtomicSequenceImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceEx;
.implements Ljava/io/Externalizable;


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
.field private volatile batchSize:I

.field private cond:Ljava/util/concurrent/locks/Condition;

.field private volatile ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final getAndIncCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final incAndGetCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

.field private locVal:J

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private name:Ljava/lang/String;

.field private volatile rmvd:Z

.field private seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private upBound:J

.field private final updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;IJJ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p5, "batchSize"    # I
    .param p6, "locVal"    # J
    .param p8, "upBound"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "IJJ)V"
        }
    .end annotation

    .prologue
    .local p3, "seqView":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceValue;>;"
    const-wide/16 v2, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 123
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmp-long v0, p6, p8

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_3
    iput p5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I

    .line 128
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 129
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .line 130
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 131
    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    .line 132
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 133
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->name:Ljava/lang/String;

    .line 135
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->seqView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    return-wide v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    return-wide p1
.end method

.method static synthetic access$514(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    return-wide v0
.end method

.method static synthetic access$602(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    return-wide p1
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private checkRemoved()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 392
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->rmvd:Z

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence was removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    return-void
.end method

.method private internalUpdate(JLjava/util/concurrent/Callable;Z)J
    .locals 7
    .param p1, "l"    # J
    .param p3    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "updated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;Z)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p3, "updateCall":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 213
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    .line 215
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 217
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 221
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 222
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 224
    .local v0, "curVal":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 226
    if-eqz p4, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "curVal":J
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 274
    :goto_0
    return-wide v0

    .line 230
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 233
    if-nez p3, :cond_3

    .line 234
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object p3

    .line 237
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {p3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v0

    .line 243
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 251
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 251
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 243
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 246
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 251
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catchall_3
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 256
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :goto_2
    :try_start_4
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 260
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v4, v5, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    .line 274
    :catchall_4
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 262
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    .line 265
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    .line 266
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 268
    .restart local v0    # "curVal":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 270
    if-eqz p4, :cond_6

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 274
    .end local v0    # "curVal":J
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1
.end method

.method private internalUpdate(JZ)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "l"    # J
    .param p3, "updated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;JZ)V

    return-object v0
.end method

.method private internalUpdateAsync(JLjava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p1, "l"    # J
    .param p3    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "updated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p3, "updateCall":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    .line 295
    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-lez v2, :cond_1

    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Parameter mustn\'t be less then 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 297
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 301
    :try_start_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v6, p1

    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    .line 302
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 304
    .local v0, "curVal":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 306
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    if-eqz p4, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .end local v0    # "curVal":J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 354
    :goto_1
    return-object v2

    :cond_1
    move v2, v4

    .line 295
    goto :goto_0

    .line 310
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    if-nez p3, :cond_3

    .line 314
    invoke-direct {p0, p1, p2, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JZ)Ljava/util/concurrent/Callable;

    move-result-object p3

    .line 317
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 323
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 331
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 331
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 323
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 328
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 331
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :catchall_3
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 336
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 339
    :goto_3
    :try_start_4
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->updateGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 340
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->cond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v6, v7, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 354
    :catchall_4
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 342
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    .line 345
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v6, p1

    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->upBound:J

    cmp-long v2, v6, v8

    if-gtz v2, :cond_7

    .line 346
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 348
    .restart local v0    # "curVal":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .line 350
    new-instance v2, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    if-eqz p4, :cond_6

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J

    .end local v0    # "curVal":J
    :cond_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 354
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 538
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 540
    .local v1, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->sequence(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicSequence;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 546
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 542
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 543
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

    .line 546
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method


# virtual methods
.method public addAndGet(J)J
    .locals 5
    .param p1, "l"    # J

    .prologue
    const/4 v1, 0x1

    .line 179
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Parameter mustn\'t be less then 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JLjava/util/concurrent/Callable;Z)J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 179
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public batchSize()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I

    return v0
.end method

.method public batchSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 374
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Batch size can\'t be less then 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 379
    :try_start_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->batchSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 384
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 419
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeSequence(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get()J
    .locals 3

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->checkRemoved()V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 150
    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->locVal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAndAdd(J)J
    .locals 5
    .param p1, "l"    # J

    .prologue
    const/4 v1, 0x0

    .line 191
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Parameter mustn\'t be less then 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JLjava/util/concurrent/Callable;Z)J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAndIncrement()J
    .locals 5

    .prologue
    .line 170
    const-wide/16 v2, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JLjava/util/concurrent/Callable;Z)J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public incrementAndGet()J
    .locals 5

    .prologue
    .line 160
    const-wide/16 v2, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->internalUpdate(JLjava/util/concurrent/Callable;Z)J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public key()Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalid(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    return-void
.end method

.method public onRemoved()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->rmvd:Z

    return v0
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
    .line 524
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 526
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 527
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->rmvd:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;

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
    .line 518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicSequenceImpl;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 520
    return-void
.end method
