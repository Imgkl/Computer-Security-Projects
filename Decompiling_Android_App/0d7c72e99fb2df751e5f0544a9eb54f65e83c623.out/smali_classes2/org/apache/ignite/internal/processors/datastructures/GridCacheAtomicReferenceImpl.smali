.class public final Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceEx",
        "<TT;>;",
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
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final getCall:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
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
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->$assertionsDisabled:Z

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 85
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
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue",
            "<TT;>;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p3, "atomicView":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->getCall:Ljava/util/concurrent/Callable;

    .line 99
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_3
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 105
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    .line 106
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    .line 109
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->log:Lorg/apache/ignite/IgniteLogger;

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
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->rmvd:Z

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Atomic reference was removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    return-void
.end method

.method private internalCompareAndSet(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "expValPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<TT;>;"
    .local p2, "newValClos":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)V

    return-object v0
.end method

.method private internalSet(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 324
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

    invoke-virtual {v3, v2, v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->atomicReference(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/ignite/IgniteAtomicReference;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 330
    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    return-object v2

    .line 326
    .end local v1    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 327
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

    .line 330
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    sget-object v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    throw v2
.end method

.method private wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V

    return-object v0
.end method

.method private wrapperPredicate(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeAtomicReference(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "expVal":Ljava/lang/Object;, "TT;"
    .local p2, "newVal":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->checkRemoved()V

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->wrapperPredicate(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->wrapperClosure(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->internalCompareAndSet(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->checkRemoved()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->getCall:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public key()Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public onInvalid(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    return-void
.end method

.method public onRemoved()Z
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->rmvd:Z

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
    .line 307
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 309
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set1(Ljava/lang/Object;)V

    .line 310
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->set2(Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->rmvd:Z

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->checkRemoved()V

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->internalSet(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->outTx(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

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
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 303
    return-void
.end method
