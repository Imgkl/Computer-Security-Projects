.class public interface abstract Lorg/apache/ignite/IgniteScheduler;
.super Ljava/lang/Object;
.source "IgniteScheduler.java"


# virtual methods
.method public abstract callLocal(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteFuture;
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract runLocal(Ljava/lang/Runnable;)Lorg/apache/ignite/lang/IgniteFuture;
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract scheduleLocal(Ljava/lang/Runnable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/scheduler/SchedulerFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract scheduleLocal(Ljava/util/concurrent/Callable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/scheduler/SchedulerFuture",
            "<TR;>;"
        }
    .end annotation
.end method
