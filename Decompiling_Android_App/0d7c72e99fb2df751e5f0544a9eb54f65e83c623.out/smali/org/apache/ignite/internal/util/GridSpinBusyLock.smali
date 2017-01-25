.class public Lorg/apache/ignite/internal/util/GridSpinBusyLock;
.super Ljava/lang/Object;
.source "GridSpinBusyLock.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# instance fields
.field private final lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    return-void
.end method


# virtual methods
.method public block()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 76
    return-void
.end method

.method public blockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public enterBusy()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryReadLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveBusy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 68
    return-void
.end method

.method public unblock()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 83
    return-void
.end method
