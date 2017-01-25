.class public Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "PriorityQueueCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionSpi;
.implements Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;,
        Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;,
        Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_JOB_PRIORITY_ATTRIBUTE_KEY:Ljava/lang/String; = "grid.job.priority"

.field public static final DFLT_PARALLEL_JOBS_NUM:I

.field public static final DFLT_PREVENT_STARVATION_ENABLED:Z = true

.field public static final DFLT_PRIORITY:I = 0x0

.field public static final DFLT_PRIORITY_ATTRIBUTE_KEY:Ljava/lang/String; = "grid.task.priority"

.field public static final DFLT_STARVATION_INCREMENT:I = 0x1

.field public static final DFLT_WAIT_JOBS_NUM:I = 0x7fffffff

.field private static final PRIORITY_ATTRIBUTE_KEY:Ljava/lang/String; = "gg:collision:priority"


# instance fields
.field private volatile dfltPri:I

.field private volatile heldCnt:I

.field private jobPriAttrKey:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private volatile parallelJobsNum:I

.field private volatile preventStarvation:Z

.field private priComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runningCnt:I

.field private volatile starvationInc:I

.field private taskPriAttrKey:Ljava/lang/String;

.field private volatile waitJobsNum:I

.field private volatile waitingCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-class v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->$assertionsDisabled:Z

    .line 167
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->DFLT_PARALLEL_JOBS_NUM:I

    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 197
    sget v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->DFLT_PARALLEL_JOBS_NUM:I

    iput v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    .line 200
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitJobsNum:I

    .line 212
    const-string v0, "grid.task.priority"

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    .line 215
    const-string v0, "grid.job.priority"

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    .line 221
    iput v1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    .line 224
    iput-boolean v1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->preventStarvation:Z

    .line 588
    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;Lorg/apache/ignite/spi/collision/CollisionJobContext;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;
    .param p1, "x1"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->getJobPriority(Lorg/apache/ignite/spi/collision/CollisionJobContext;)I

    move-result v0

    return v0
.end method

.method private bumpPriority(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;>;"
    iget v1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    .line 488
    .local v1, "starvationInc":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 489
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .line 491
    .local v2, "wrapper":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->originalIndex()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 492
    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->getJobPriority(Lorg/apache/ignite/spi/collision/CollisionJobContext;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v2    # "wrapper":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    :cond_1
    return-void
.end method

.method private getJobPriority(Lorg/apache/ignite/spi/collision/CollisionJobContext;)I
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .prologue
    const/16 v8, 0x5d

    .line 505
    sget-boolean v5, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 507
    :cond_0
    const/4 v3, 0x0

    .line 509
    .local v3, "p":Ljava/lang/Integer;
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v2

    .line 512
    .local v2, "jctx":Lorg/apache/ignite/compute/ComputeJobContext;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-interface {v2, v5}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_0
    if-nez v3, :cond_2

    .line 520
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v4

    .line 523
    .local v4, "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/apache/ignite/compute/ComputeTaskSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :goto_1
    if-nez v3, :cond_2

    .line 531
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed get priority from job context attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' and task session attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (will use default priority): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 537
    :cond_1
    iget v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 541
    .end local v4    # "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/ClassCastException;
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type of job context priority attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not java.lang.Integer [type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-interface {v2, v7}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v4    # "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    :catch_1
    move-exception v1

    .line 526
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    iget-object v5, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type of task session priority attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not java.lang.Integer [type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    invoke-interface {v4, v7}, Lorg/apache/ignite/compute/ComputeTaskSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 543
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5
.end method

.method private priorityComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->priComp:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;-><init>(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->priComp:Ljava/util/Comparator;

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->priComp:Ljava/util/Comparator;

    return-object v0
.end method

.method private static slice(Ljava/util/Collection;I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "src":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v2, "slice":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 473
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    new-instance v4, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v5}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;-><init>(Lorg/apache/ignite/spi/collision/CollisionJobContext;ILorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected getConsistentAttributeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    const-string v0, "gg:collision:priority"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActiveJobsNumber()I
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->runningCnt:I

    iget v1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->heldCnt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentHeldJobsNumber()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->heldCnt:I

    return v0
.end method

.method public getCurrentRunningJobsNumber()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->runningCnt:I

    return v0
.end method

.method public getCurrentWaitJobsNumber()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitingCnt:I

    return v0
.end method

.method public getDefaultPriority()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    return v0
.end method

.method public getJobPriorityAttributeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 350
    const-string v0, "gg:collision:priority"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->getPriorityAttributeKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParallelJobsNumber()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    return v0
.end method

.method public getPriorityAttributeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    return-object v0
.end method

.method public getStarvationIncrement()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    return v0
.end method

.method public getWaitingJobsNumber()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitJobsNum:I

    return v0
.end method

.method public isStarvationPreventionEnabled()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->preventStarvation:Z

    return v0
.end method

.method public onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V
    .locals 13
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionContext;

    .prologue
    .line 397
    sget-boolean v12, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 399
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->activeJobs()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v1

    .line 401
    .local v1, "activeSize":I
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->waitingJobs()Ljava/util/Collection;

    move-result-object v6

    .line 403
    .local v6, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    .line 405
    .local v8, "waitSize":I
    iput v1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->runningCnt:I

    .line 406
    iput v8, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitingCnt:I

    .line 408
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->heldJobs()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    iput v12, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->heldCnt:I

    .line 410
    iget v12, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    sub-int v0, v12, v1

    .line 413
    .local v0, "activateCnt":I
    invoke-static {v6, v8}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->slice(Ljava/util/Collection;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 415
    .local v9, "waitSnap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;>;"
    const/4 v10, 0x0

    .line 417
    .local v10, "waitSnapSorted":Z
    if-lez v0, :cond_3

    if-lez v8, :cond_3

    .line 418
    if-gt v8, v0, :cond_1

    .line 419
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .line 420
    .local v2, "cntx":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    invoke-virtual {v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->activate()Z

    .line 421
    add-int/lit8 v8, v8, -0x1

    .line 422
    goto :goto_0

    .line 425
    .end local v2    # "cntx":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->priorityComparator()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v9, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    const/4 v10, 0x1

    .line 428
    iget-boolean v12, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->preventStarvation:Z

    if-eqz v12, :cond_2

    .line 429
    invoke-direct {p0, v9}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->bumpPriority(Ljava/util/List;)V

    .line 432
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 433
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    invoke-virtual {v12}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->activate()Z

    .line 435
    add-int/lit8 v8, v8, -0x1

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 440
    .end local v3    # "i":I
    :cond_3
    iget v7, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitJobsNum:I

    .line 442
    .local v7, "waitJobsNum":I
    if-le v8, v7, :cond_6

    .line 443
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int v5, v12, v8

    .line 445
    .local v5, "skip":I
    if-nez v10, :cond_4

    .line 446
    invoke-direct {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->priorityComparator()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v9, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    :cond_4
    const/4 v3, 0x0

    .line 450
    .restart local v3    # "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .line 451
    .local v11, "wrapper":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_5

    .line 452
    invoke-virtual {v11}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->cancel()Z

    .line 454
    add-int/lit8 v8, v8, -0x1

    if-gt v8, v7, :cond_5

    .line 459
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "skip":I
    .end local v11    # "wrapper":Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    :cond_6
    return-void
.end method

.method public setDefaultPriority(I)V
    .locals 0
    .param p1, "dfltPri"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 323
    iput p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    .line 324
    return-void
.end method

.method public setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    .prologue
    .line 393
    return-void
.end method

.method public setJobPriorityAttributeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobPriAttrKey"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 302
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setParallelJobsNumber(I)V
    .locals 2
    .param p1, "parallelJobsNum"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 241
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "parallelJobsNum > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 243
    iput p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    .line 244
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPriorityAttributeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskPriAttrKey"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setStarvationIncrement(I)V
    .locals 0
    .param p1, "starvationInc"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 334
    iput p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    .line 335
    return-void
.end method

.method public setStarvationPreventionEnabled(Z)V
    .locals 0
    .param p1, "preventStarvation"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 345
    iput-boolean p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->preventStarvation:Z

    .line 346
    return-void
.end method

.method public setWaitingJobsNumber(I)V
    .locals 2
    .param p1, "waitJobsNum"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 254
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "waitJobsNum >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 256
    iput p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitJobsNum:I

    .line 257
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "parallelJobsNum > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 356
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->waitJobsNum:I

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    const-string/jumbo v3, "waitingJobsNum >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 357
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    if-ltz v0, :cond_4

    move v0, v1

    :goto_2
    const-string v3, "starvationInc >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 358
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    const-string/jumbo v3, "taskPriAttrKey != null"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 359
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    :goto_4
    const-string v0, "jobPriorityAttrKey != null"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->startStopwatch()V

    .line 365
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "parallelJobsNum"

    iget v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->parallelJobsNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v1, "taskPriAttrKey"

    iget-object v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->taskPriAttrKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "jobPriorityAttrKey"

    iget-object v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->jobPriAttrKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "dfltPri"

    iget v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->dfltPri:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "starvationInc"

    iget v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->starvationInc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "preventStarvation"

    iget-boolean v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->preventStarvation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 374
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 377
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 379
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 355
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 356
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 357
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 358
    goto/16 :goto_3

    :cond_6
    move v1, v2

    .line 359
    goto/16 :goto_4
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->unregisterMBean()V

    .line 386
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-class v0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
