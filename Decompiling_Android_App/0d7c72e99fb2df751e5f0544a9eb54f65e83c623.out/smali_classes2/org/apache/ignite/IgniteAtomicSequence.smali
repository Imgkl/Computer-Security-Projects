.class public interface abstract Lorg/apache/ignite/IgniteAtomicSequence;
.super Ljava/lang/Object;
.source "IgniteAtomicSequence.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract addAndGet(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract batchSize()I
.end method

.method public abstract batchSize(I)V
.end method

.method public abstract close()V
.end method

.method public abstract get()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract getAndAdd(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract getAndIncrement()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract incrementAndGet()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract removed()Z
.end method
