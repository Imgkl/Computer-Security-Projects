.class public abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;
.super Ljava/lang/Object;
.source "HadoopTask.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-boolean v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;->taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public info()Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTask;->taskInfo:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    return-object v0
.end method

.method public abstract run(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
