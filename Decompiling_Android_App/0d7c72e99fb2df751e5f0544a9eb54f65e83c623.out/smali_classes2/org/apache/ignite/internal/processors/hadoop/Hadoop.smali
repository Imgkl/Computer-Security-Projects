.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
.super Ljava/lang/Object;
.source "Hadoop.java"


# virtual methods
.method public abstract configuration()Lorg/apache/ignite/configuration/HadoopConfiguration;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
