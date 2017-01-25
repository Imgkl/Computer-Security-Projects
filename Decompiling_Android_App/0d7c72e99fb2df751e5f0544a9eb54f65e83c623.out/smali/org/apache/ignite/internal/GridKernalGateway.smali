.class public interface abstract Lorg/apache/ignite/internal/GridKernalGateway;
.super Ljava/lang/Object;
.source "GridKernalGateway.java"


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# virtual methods
.method public abstract addStopListener(Ljava/lang/Runnable;)V
.end method

.method public abstract getState()Lorg/apache/ignite/internal/GridKernalState;
.end method

.method public abstract lightCheck()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract readLock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract readLockAnyway()V
.end method

.method public abstract readUnlock()V
.end method

.method public abstract removeStopListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setState(Lorg/apache/ignite/internal/GridKernalState;)V
.end method

.method public abstract tryWriteLock(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract userStackTrace()Ljava/lang/String;
.end method

.method public abstract writeLock()V
.end method

.method public abstract writeUnlock()V
.end method
