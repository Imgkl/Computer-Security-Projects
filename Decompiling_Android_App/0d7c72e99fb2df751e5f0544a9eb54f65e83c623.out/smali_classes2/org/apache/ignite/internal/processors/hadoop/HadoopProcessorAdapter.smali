.class public abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "HadoopProcessorAdapter.java"


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract config()Lorg/apache/ignite/configuration/HadoopConfiguration;
.end method

.method public abstract counters(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract finishFuture(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract hadoop()Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
.end method

.method public abstract kill(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract nextJobId()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
.end method

.method public abstract status(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract submit(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method
