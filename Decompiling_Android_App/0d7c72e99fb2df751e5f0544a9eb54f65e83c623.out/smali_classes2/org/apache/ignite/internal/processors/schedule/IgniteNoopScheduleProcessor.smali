.class public Lorg/apache/ignite/internal/processors/schedule/IgniteNoopScheduleProcessor;
.super Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;
.source "IgniteNoopScheduleProcessor.java"


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 35
    return-void
.end method

.method private processorException()Lorg/apache/ignite/IgniteException;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Current Ignite configuration does not support schedule functionality (consider adding ignite-schedule module to classpath)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .locals 1
    .param p1, "c"    # Ljava/lang/Runnable;
    .param p2, "pattern"    # Ljava/lang/String;
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

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/schedule/IgniteNoopScheduleProcessor;->processorException()Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;Ljava/lang/String;)Lorg/apache/ignite/scheduler/SchedulerFuture;
    .locals 1
    .param p2, "pattern"    # Ljava/lang/String;
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

    .prologue
    .line 44
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/schedule/IgniteNoopScheduleProcessor;->processorException()Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
.end method
