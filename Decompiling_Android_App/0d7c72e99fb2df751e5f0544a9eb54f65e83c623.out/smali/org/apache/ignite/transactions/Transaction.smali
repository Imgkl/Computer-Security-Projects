.class public interface abstract Lorg/apache/ignite/transactions/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lorg/apache/ignite/lang/IgniteAsyncSupport;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
.end method

.method public abstract implicit()Z
.end method

.method public abstract isInvalidate()Z
.end method

.method public abstract isRollbackOnly()Z
.end method

.method public abstract isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
.end method

.method public abstract nodeId()Ljava/util/UUID;
.end method

.method public abstract rollback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/lang/IgniteAsyncSupported;
    .end annotation
.end method

.method public abstract setRollbackOnly()Z
.end method

.method public abstract startTime()J
.end method

.method public abstract state()Lorg/apache/ignite/transactions/TransactionState;
.end method

.method public abstract threadId()J
.end method

.method public abstract timeout()J
.end method

.method public abstract timeout(J)J
.end method

.method public abstract xid()Lorg/apache/ignite/lang/IgniteUuid;
.end method
