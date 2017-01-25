.class public Lorg/apache/ignite/internal/processors/hadoop/HadoopNoopProcessor;
.super Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;
.source "HadoopNoopProcessor.java"


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 35
    return-void
.end method


# virtual methods
.method public config()Lorg/apache/ignite/configuration/HadoopConfiguration;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public counters(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounters;
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishFuture(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
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

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public hadoop()Lorg/apache/ignite/internal/processors/hadoop/Hadoop;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Hadoop module is not found in class path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public kill(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Z
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public nextJobId()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public status(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;)Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public submit(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .param p2, "jobInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
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

    .prologue
    .line 54
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Hadoop is not available."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
