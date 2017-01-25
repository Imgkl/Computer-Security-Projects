.class public abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;
.super Ljava/lang/Object;
.source "HadoopTaskContext.java"


# instance fields
.field private input:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;

.field private final job:Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;

.field private output:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;

.field private taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;)V
    .locals 0
    .param p1, "taskInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;
    .param p2, "job"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .line 47
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->job:Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;

    .line 48
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cleanupTaskEnvironment()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract counter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounter;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract counters()Lorg/apache/ignite/internal/processors/hadoop/counter/HadoopCounters;
.end method

.method public abstract groupComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public input()Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->input:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;

    return-object v0
.end method

.method public input(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->input:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInput;

    .line 116
    return-void
.end method

.method public job()Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->job:Lorg/apache/ignite/internal/processors/hadoop/HadoopJob;

    return-object v0
.end method

.method public abstract keySerialization()Lorg/apache/ignite/internal/processors/hadoop/HadoopSerialization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public output()Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->output:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;

    return-object v0
.end method

.method public output(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;)V
    .locals 0
    .param p1, "out"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->output:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskOutput;

    .line 125
    return-void
.end method

.method public abstract partitioner()Lorg/apache/ignite/internal/processors/hadoop/HadoopPartitioner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract prepareTaskEnvironment()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract sortComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public taskInfo()Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    return-object v0
.end method

.method public taskInfo(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;)V
    .locals 0
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;->taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .line 66
    return-void
.end method

.method public abstract valueSerialization()Lorg/apache/ignite/internal/processors/hadoop/HadoopSerialization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
