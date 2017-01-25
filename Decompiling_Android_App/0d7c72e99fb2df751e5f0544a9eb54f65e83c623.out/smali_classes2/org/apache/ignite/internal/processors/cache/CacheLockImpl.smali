.class Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;
.super Ljava/lang/Object;
.source "CacheLockImpl.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/locks/Lock;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cntr:I

.field private final delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TK;>;"
        }
    .end annotation
.end field

.field private volatile lockedThread:Ljava/lang/Thread;

.field private final prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    .local p1, "gate":Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;, "Lorg/apache/ignite/internal/processors/cache/GridCacheGateway<TK;TV;>;"
    .local p2, "delegate":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<TK;TV;>;"
    .local p3, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    .local p4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    .line 61
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 62
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 63
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->keys:Ljava/util/Collection;

    .line 64
    return-void
.end method

.method private incrementLockCounter()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->lockedThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->lockedThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_2
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->lockedThread:Ljava/lang/Thread;

    .line 92
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 7

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 71
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->keys:Ljava/util/Collection;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 73
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->incrementLockCounter()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 81
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Ljavax/cache/CacheException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2
.end method

.method public lockInterruptibly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    const-wide v0, 0x7fffffffffffffffL

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 97
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryLock()Z
    .locals 8

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 104
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->keys:Ljava/util/Collection;

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v3, v4, v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAll(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    .line 106
    .local v2, "res":Z
    if-eqz v2, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->incrementLockCounter()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    return v2

    .line 111
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v3, Ljavax/cache/CacheException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v3
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 124
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1

    .line 125
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->tryLock()Z

    move-result v3

    .line 164
    :goto_0
    return v3

    .line 127
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v2

    .line 130
    .local v2, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->keys:Ljava/util/Collection;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/4 v8, 0x0

    new-array v8, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 133
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 135
    .local v3, "res":Z
    if-eqz v3, :cond_2

    .line 136
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->incrementLockCounter()V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 140
    .end local v3    # "res":Z
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    :try_start_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->cancel()Z

    move-result v4

    if-nez v4, :cond_4

    .line 142
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 145
    .local v3, "res":Ljava/lang/Boolean;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 147
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->incrementLockCounter()V

    .line 150
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 164
    .end local v3    # "res":Ljava/lang/Boolean;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    goto :goto_0

    .line 154
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_5

    .line 155
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/InterruptedException;

    throw v4
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .end local v0    # "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    new-instance v4, Ljavax/cache/CacheException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v4

    .line 157
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    .restart local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_5
    :try_start_5
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public unlock()V
    .locals 5

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;, "Lorg/apache/ignite/internal/processors/cache/CacheLockImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->prj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 173
    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->lockedThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 174
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to unlock keys (did current thread acquire lock with this lock instance?)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    new-instance v2, Ljavax/cache/CacheException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    throw v2

    .line 178
    :cond_0
    :try_start_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 180
    :cond_1
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    .line 182
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->cntr:I

    if-nez v2, :cond_2

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->lockedThread:Ljava/lang/Thread;

    .line 185
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->keys:Ljava/util/Collection;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheLockImpl;->gate:Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 193
    return-void
.end method
