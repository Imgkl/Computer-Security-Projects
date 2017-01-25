.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;
.super Ljava/lang/Object;
.source "GridCacheAtomicStampedImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedEx",
        "<TT;TS;>;",
        "Ljava/io/Externalizable;"
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
.field private atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final getCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field private key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private name:Ljava/lang/String;

.field private volatile rmvd:Z

.field private final stampCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final valCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->valCall:Ljava/util/concurrent/Callable;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stampCall:Ljava/util/concurrent/Callable;

    .line 111
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
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue",
            "<TT;TS;>;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p3, "atomicView":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->valCall:Ljava/util/concurrent/Callable;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$4;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stampCall:Ljava/util/concurrent/Callable;

    .line 123
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 124
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_3
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 129
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .line 130
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 131
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    .line 133
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->log:Lorg/apache/ignite/IgniteLogger;

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
    .line 370
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->rmvd:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atomic stamped was removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    return-void
.end method

.method private internalCompareAndSet(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/concurrent/Callable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TT;>;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TS;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TS;TS;>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p1, "expValPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    .local p2, "newValClos":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TT;>;"
    .local p3, "expStampPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TS;>;"
    .local p4, "newStampClos":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TS;TS;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$7;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteClosure;)V

    return-object v0
.end method

.method private internalSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "stamp":Ljava/lang/Object;, "TS;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 352
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 354
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

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicStamped(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicStamped;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 360
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 356
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 357
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

    .line 360
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method private wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(TN;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TN;TN;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p1, "val":Ljava/lang/Object;, "TN;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeAtomicStamped(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TS;TS;)Z"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p1, "expVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    .local p3, "expStamp":Ljava/lang/Object;, "TS;"
    .local p4, "newStamp":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->checkRemoved()V

    .line 170
    :try_start_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/F0;->equalTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v2

    invoke-static {p3}, Lorg/apache/ignite/internal/util/F0;->equalTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->internalCompareAndSet(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->checkRemoved()V

    .line 146
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->getCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public key()Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalid(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    return-void
.end method

.method public onRemoved()Z
    .locals 1

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->rmvd:Z

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
    .line 337
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 339
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 340
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->rmvd:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "stamp":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->checkRemoved()V

    .line 158
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->internalSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public stamp()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->checkRemoved()V

    .line 183
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->stampCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->checkRemoved()V

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->valCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
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
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl<TT;TS;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 333
    return-void
.end method
