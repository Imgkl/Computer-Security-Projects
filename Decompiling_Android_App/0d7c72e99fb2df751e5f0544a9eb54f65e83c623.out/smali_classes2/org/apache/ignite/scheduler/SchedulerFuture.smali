.class public interface abstract Lorg/apache/ignite/scheduler/SchedulerFuture;
.super Ljava/lang/Object;
.source "SchedulerFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteFuture",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract averageExecutionTime()D
.end method

.method public abstract averageIdleTime()D
.end method

.method public abstract count()I
.end method

.method public abstract createTime()J
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public abstract get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract lastFinishTime()J
.end method

.method public abstract lastIdleTime()J
.end method

.method public abstract lastStartTime()J
.end method

.method public abstract nextExecutionTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract nextExecutionTimes(IJ)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation
.end method

.method public abstract pattern()Ljava/lang/String;
.end method
