.class public Lorg/apache/ignite/configuration/HadoopConfiguration;
.super Ljava/lang/Object;
.source "HadoopConfiguration.java"


# static fields
.field public static final DFLT_EXTERNAL_EXECUTION:Z = false

.field public static final DFLT_FINISHED_JOB_INFO_TTL:J = 0x2710L

.field public static final DFLT_MAX_PARALLEL_TASKS:I

.field public static final DFLT_MAX_TASK_QUEUE_SIZE:I = 0x3e8


# instance fields
.field private extExecution:Z

.field private finishedJobInfoTtl:J

.field private maxParallelTasks:I

.field private maxTaskQueueSize:I

.field private planner:Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/apache/ignite/configuration/HadoopConfiguration;->DFLT_MAX_PARALLEL_TASKS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->extExecution:Z

    .line 46
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->finishedJobInfoTtl:J

    .line 49
    sget v0, Lorg/apache/ignite/configuration/HadoopConfiguration;->DFLT_MAX_PARALLEL_TASKS:I

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxParallelTasks:I

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxTaskQueueSize:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/HadoopConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/HadoopConfiguration;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->extExecution:Z

    .line 46
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->finishedJobInfoTtl:J

    .line 49
    sget v0, Lorg/apache/ignite/configuration/HadoopConfiguration;->DFLT_MAX_PARALLEL_TASKS:I

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxParallelTasks:I

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxTaskQueueSize:I

    .line 70
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/HadoopConfiguration;->getFinishedJobInfoTtl()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->finishedJobInfoTtl:J

    .line 71
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/HadoopConfiguration;->getMapReducePlanner()Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->planner:Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;

    .line 72
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/HadoopConfiguration;->getMaxParallelTasks()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxParallelTasks:I

    .line 73
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/HadoopConfiguration;->getMaxTaskQueueSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxTaskQueueSize:I

    .line 74
    return-void
.end method


# virtual methods
.method public getFinishedJobInfoTtl()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->finishedJobInfoTtl:J

    return-wide v0
.end method

.method public getMapReducePlanner()Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->planner:Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;

    return-object v0
.end method

.method public getMaxParallelTasks()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxParallelTasks:I

    return v0
.end method

.method public getMaxTaskQueueSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxTaskQueueSize:I

    return v0
.end method

.method public setFinishedJobInfoTtl(J)V
    .locals 1
    .param p1, "finishedJobInfoTtl"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->finishedJobInfoTtl:J

    .line 128
    return-void
.end method

.method public setMapReducePlanner(Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;)V
    .locals 0
    .param p1, "planner"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->planner:Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlanner;

    .line 170
    return-void
.end method

.method public setMaxParallelTasks(I)V
    .locals 0
    .param p1, "maxParallelTasks"    # I

    .prologue
    .line 91
    iput p1, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxParallelTasks:I

    .line 92
    return-void
.end method

.method public setMaxTaskQueueSize(I)V
    .locals 0
    .param p1, "maxTaskQueueSize"    # I

    .prologue
    .line 109
    iput p1, p0, Lorg/apache/ignite/configuration/HadoopConfiguration;->maxTaskQueueSize:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    const-class v0, Lorg/apache/ignite/configuration/HadoopConfiguration;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
