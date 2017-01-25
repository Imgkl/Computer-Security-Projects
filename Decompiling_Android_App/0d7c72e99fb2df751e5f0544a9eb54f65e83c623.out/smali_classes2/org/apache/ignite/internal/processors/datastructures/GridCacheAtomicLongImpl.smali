.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;
.super Ljava/lang/Object;
.source "GridCacheAtomicLongImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongEx;
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
.field private atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final decAndGetCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final getAndDecCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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

.field private final getCall:Ljava/util/concurrent/Callable;
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

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private name:Ljava/lang/String;

.field private volatile rmvd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    .line 108
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    .line 135
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$5;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->decAndGetCall:Ljava/util/concurrent/Callable;

    .line 162
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$6;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndDecCall:Ljava/util/concurrent/Callable;

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p3, "atomicView":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    .line 108
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    .line 135
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$5;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->decAndGetCall:Ljava/util/concurrent/Callable;

    .line 162
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$6;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndDecCall:Ljava/util/concurrent/Callable;

    .line 205
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_3
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 211
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .line 212
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 213
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    .line 215
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->log:Lorg/apache/ignite/IgniteLogger;

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
    .line 337
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->rmvd:Z

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atomic long was removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method private internalAddAndGet(J)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$7;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;J)V

    return-object v0
.end method

.method private internalCompareAndSet(JJ)Ljava/util/concurrent/Callable;
    .locals 7
    .param p1, "expVal"    # J
    .param p3, "newVal"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$10;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;JJ)V

    return-object v0
.end method

.method private internalGetAndAdd(J)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$8;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;J)V

    return-object v0
.end method

.method private internalGetAndSet(J)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$9;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;J)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 536
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 538
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

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 544
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 540
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 541
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

    .line 544
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method


# virtual methods
.method public addAndGet(J)J
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 264
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->internalAddAndGet(J)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 363
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeAtomicLong(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public compareAndSet(JJ)Z
    .locals 3
    .param p1, "expVal"    # J
    .param p3, "newVal"    # J

    .prologue
    .line 321
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 324
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->internalCompareAndSet(JJ)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public decrementAndGet()J
    .locals 4

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 288
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->decAndGetCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get()J
    .locals 4

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 228
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAndAdd(J)J
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 273
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 276
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->internalGetAndAdd(J)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAndDecrement()J
    .locals 4

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 300
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndDecCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAndIncrement()J
    .locals 4

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->getAndIncCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public getAndSet(J)J
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 309
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 312
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->internalGetAndSet(J)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public incrementAndGet()J
    .locals 4

    .prologue
    .line 237
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->checkRemoved()V

    .line 240
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->incAndGetCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public key()Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalid(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 349
    return-void
.end method

.method public onRemoved()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->rmvd:Z

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
    .line 522
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 524
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 525
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->rmvd:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

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
    .line 516
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 517
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 518
    return-void
.end method
