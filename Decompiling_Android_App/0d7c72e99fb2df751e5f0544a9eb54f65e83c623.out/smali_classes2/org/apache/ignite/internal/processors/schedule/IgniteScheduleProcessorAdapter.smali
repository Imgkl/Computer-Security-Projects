.class public abstract Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "IgniteScheduleProcessorAdapter.java"


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 36
    return-void
.end method


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
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

.method public abstract schedule(Ljava/util/concurrent/Callable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
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
