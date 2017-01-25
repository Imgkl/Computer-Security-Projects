.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;
.super Ljava/lang/Object;
.source "HadoopJob.java"


# virtual methods
.method public abstract cleanupStagingDirectory()V
.end method

.method public abstract cleanupTaskEnvironment(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract dispose(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract getTaskContext(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;)Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract id()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
.end method

.method public abstract info()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
.end method

.method public abstract initialize(ZLjava/util/UUID;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract input()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract prepareTaskEnvironment(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
