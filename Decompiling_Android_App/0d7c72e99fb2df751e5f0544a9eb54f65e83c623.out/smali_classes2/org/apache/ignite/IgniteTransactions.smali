.class public interface abstract Lorg/apache/ignite/IgniteTransactions;
.super Ljava/lang/Object;
.source "IgniteTransactions.java"


# virtual methods
.method public abstract metrics()Lorg/apache/ignite/transactions/TransactionMetrics;
.end method

.method public abstract resetMetrics()V
.end method

.method public abstract tx()Lorg/apache/ignite/transactions/Transaction;
.end method

.method public abstract txStart()Lorg/apache/ignite/transactions/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/transactions/Transaction;
.end method

.method public abstract txStart(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JI)Lorg/apache/ignite/transactions/Transaction;
.end method
