.class public interface abstract Lorg/apache/ignite/IgniteCountDownLatch;
.super Ljava/lang/Object;
.source "IgniteCountDownLatch.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract autoDelete()Z
.end method

.method public abstract await()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract await(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract count()I
.end method

.method public abstract countDown()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract countDown(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract countDownAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract initialCount()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract removed()Z
.end method
