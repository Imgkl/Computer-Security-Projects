.class public Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "JobStealingCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionSpi;
.implements Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpiMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
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

.field public static final ACTIVE_JOBS_THRESHOLD_NODE_ATTR:Ljava/lang/String; = "ignite.collision.active.jobs.threshold"

.field public static final DFLT_ACTIVE_JOBS_THRESHOLD:I = 0x5f

.field public static final DFLT_JOB_PRIORITY:I = 0x0

.field public static final DFLT_MAX_STEALING_ATTEMPTS:I = 0x5

.field public static final DFLT_MSG_EXPIRE_TIME:J = 0x3e8L

.field public static final DFLT_WAIT_JOBS_THRESHOLD:I = 0x0

.field private static final JOB_STEALING_COMM_TOPIC:Ljava/lang/String; = "ignite.collision.job.stealing.topic"

.field public static final MAX_STEALING_ATTEMPT_ATTR:Ljava/lang/String; = "ignite.stealing.max.attempts"

.field public static final MSG_EXPIRE_TIME_ATTR:Ljava/lang/String; = "ignite.stealing.msg.expire.time"

.field public static final STEALING_ATTEMPT_COUNT_ATTR:Ljava/lang/String; = "ignite.stealing.attempt.count"

.field public static final STEALING_PRIORITY_ATTR:Ljava/lang/String; = "ignite.stealing.priority"

.field public static final THIEF_NODE_ATTR:Ljava/lang/String; = "ignite.collision.thief.node"

.field public static final WAIT_JOBS_THRESHOLD_NODE_ATTR:Ljava/lang/String; = "ignite.collision.wait.jobs.threshold"


# instance fields
.field private volatile activeJobsThreshold:I

.field private cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation
.end field

.field private discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private extLsnr:Lorg/apache/ignite/spi/collision/CollisionExternalListener;

.field private volatile heldNum:I

.field private volatile isStealingEnabled:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private volatile maxStealingAttempts:I

.field private volatile msgExpireTime:J

.field private msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private final nodeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runningNum:I

.field private final sndMsgMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private stealAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final totalStolenJobsNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile waitJobsThreshold:I

.field private volatile waitingNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 231
    const/16 v0, 0x5f

    iput v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    .line 238
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    .line 241
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->isStealingEnabled:Z

    .line 260
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->totalStolenJobsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 263
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sndMsgMap:Ljava/util/concurrent/ConcurrentMap;

    .line 266
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;

    .line 269
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 983
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sndMsgMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)Lorg/apache/ignite/spi/collision/CollisionExternalListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->extLsnr:Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/compute/ComputeJobContext;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;
    .param p1, "x1"    # Lorg/apache/ignite/compute/ComputeJobContext;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getJobPriority(Lorg/apache/ignite/compute/ComputeJobContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    return-wide v0
.end method

.method private checkBusy(Ljava/util/Collection;Ljava/util/Collection;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    .local p2, "activeJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v5

    .line 610
    .local v5, "activeSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v25

    .line 612
    .local v25, "waitSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitingNum:I

    .line 613
    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->runningNum:I

    .line 615
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v7

    .line 617
    .local v7, "ctx":Lorg/apache/ignite/spi/IgniteSpiContext;
    const/4 v3, 0x0

    .line 618
    .local v3, "activated":I
    const/16 v20, 0x0

    .line 620
    .local v20, "rejected":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sortJobs(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object v24

    .line 622
    .local v24, "waitPriJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    .line 623
    .local v4, "activeJobsThreshold0":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    move/from16 v23, v0

    .line 625
    .local v23, "waitJobsThreshold0":I
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .line 626
    .local v22, "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    .line 627
    add-int/lit8 v3, v3, 0x1

    .line 632
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v27

    monitor-enter v27

    .line 633
    :try_start_0
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->activate()Z

    .line 634
    monitor-exit v27

    goto :goto_0

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 636
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    if-lez v26, :cond_5

    .line 637
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    const-class v27, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingDisabled;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 641
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v27, "ignite.stealing.attempt.count"

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 645
    .local v21, "stealingCnt":Ljava/lang/Integer;
    if-eqz v21, :cond_2

    .line 647
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Waiting job exceeded stealing attempts and won\'t be rejected (will try other jobs on waiting list): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_2
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 659
    :cond_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->size()I

    move-result v26

    sub-int v26, v26, v3

    sub-int v26, v26, v20

    sub-int v17, v26, v23

    .line 661
    .local v17, "jobsToReject":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Jobs to reject count [jobsToReject="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", waitCtx="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5d

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 664
    :cond_4
    if-gtz v17, :cond_6

    .line 781
    .end local v17    # "jobsToReject":I
    .end local v21    # "stealingCnt":Ljava/lang/Integer;
    .end local v22    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_5
    return v20

    .line 667
    .restart local v17    # "jobsToReject":I
    .restart local v21    # "stealingCnt":Ljava/lang/Integer;
    .restart local v22    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_6
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v27, "ignite.stealing.priority"

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 669
    .local v19, "pri":Ljava/lang/Integer;
    if-nez v19, :cond_7

    .line 670
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 675
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 676
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;>;>;"
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    if-lez v26, :cond_0

    .line 677
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 679
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/UUID;

    .line 682
    .local v18, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v26

    if-nez v26, :cond_8

    .line 683
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 688
    :cond_8
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    .line 690
    .local v14, "info":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    monitor-enter v14

    .line 691
    :try_start_1
    invoke-virtual {v14}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal()I

    move-result v16

    .line 693
    .local v16, "jobsAsked":I
    sget-boolean v26, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->$assertionsDisabled:Z

    if-nez v26, :cond_9

    if-gez v16, :cond_9

    new-instance v26, Ljava/lang/AssertionError;

    invoke-direct/range {v26 .. v26}, Ljava/lang/AssertionError;-><init>()V

    throw v26

    .line 773
    .end local v16    # "jobsAsked":I
    :catchall_1
    move-exception v26

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v26

    .line 696
    .restart local v16    # "jobsAsked":I
    :cond_9
    if-nez v16, :cond_a

    .line 698
    :try_start_2
    monitor-exit v14

    goto :goto_1

    .line 701
    :cond_a
    invoke-virtual {v14}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->expired()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual {v14}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal()I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 705
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->reset(I)V

    .line 707
    monitor-exit v14

    goto :goto_1

    .line 711
    :cond_b
    const/4 v9, 0x0

    .line 713
    .local v9, "found":Z
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTopology()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/UUID;

    .line 714
    .local v13, "id":Ljava/util/UUID;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 715
    const/4 v9, 0x1

    .line 721
    .end local v13    # "id":Ljava/util/UUID;
    :cond_d
    if-nez v9, :cond_f

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Thief node does not belong to task topology [thief="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", task="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5d

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 726
    :cond_e
    monitor-exit v14

    goto/16 :goto_1

    .line 729
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    if-gtz v26, :cond_10

    .line 730
    monitor-exit v14

    goto/16 :goto_0

    .line 734
    :cond_10
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v27

    monitor-enter v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 735
    :try_start_3
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.collision.thief.node"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-nez v26, :cond_13

    const/4 v6, 0x1

    .line 737
    .local v6, "cancel":Z
    :goto_2
    if-eqz v6, :cond_12

    .line 739
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.collision.thief.node"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 740
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.stealing.attempt.count"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 741
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.stealing.priority"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Will try to reject job due to steal request [ctx="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", thief="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 747
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v10

    .line 749
    .local v10, "i":I
    if-ltz v10, :cond_14

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->cancel()Z

    move-result v26

    if-eqz v26, :cond_14

    .line 750
    add-int/lit8 v20, v20, 0x1

    .line 752
    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->reset(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_12

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rejected job due to steal request [ctx="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", nodeId="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 769
    .end local v10    # "i":I
    :cond_12
    :goto_3
    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 772
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 735
    .end local v6    # "cancel":Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 759
    .restart local v6    # "cancel":Z
    .restart local v10    # "i":I
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v26, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to reject job [i="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 762
    :cond_15
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.collision.thief.node"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.stealing.attempt.count"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 764
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v26

    const-string v28, "ignite.stealing.priority"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_3

    .line 769
    .end local v6    # "cancel":Z
    .end local v10    # "i":I
    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private checkIdle(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    .local p2, "activeJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    iget v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    iget v12, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    add-int v6, v11, v12

    .line 866
    .local v6, "max":I
    if-gez v6, :cond_0

    .line 867
    const v6, 0x7fffffff

    .line 869
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v12

    add-int/2addr v11, v12

    sub-int v5, v6, v11

    .line 871
    .local v5, "jobsToSteal":I
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 872
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total number of jobs to be stolen: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 874
    :cond_1
    if-lez v5, :cond_e

    .line 875
    move v4, v5

    .line 879
    .local v4, "jobsLeft":I
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/spi/IgniteSpiContext;->remoteNodes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v9

    .line 881
    .local v9, "nodeCnt":I
    const/4 v2, 0x0

    .local v2, "idx":I
    move v3, v2

    .line 883
    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-lez v4, :cond_e

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    if-ge v3, v9, :cond_e

    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/cluster/ClusterNode;

    .local v8, "next":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v8, :cond_e

    .line 884
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-nez v11, :cond_2

    move v3, v2

    .line 885
    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 888
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_2
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealAttrs:Ljava/util/Map;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->attributes()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->attributes()Ljava/util/Map;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealAttrs:Ljava/util/Map;

    invoke-static {v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->containsAll(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 890
    :cond_3
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 891
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip node as it does not have all attributes: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 896
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_4
    const/4 v0, 0x0

    .line 899
    .local v0, "delta":I
    :try_start_0
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sndMsgMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    .line 901
    .local v7, "msgInfo":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    if-nez v7, :cond_6

    .line 902
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 903
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to find message info for node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 958
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0

    .line 909
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_6
    :try_start_1
    const-string v11, "ignite.collision.wait.jobs.threshold"

    invoke-virtual {p0, v11}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 912
    .local v10, "waitThreshold":Ljava/lang/Integer;
    if-nez v10, :cond_7

    .line 913
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Remote node is not configured with GridJobStealingCollisionSpi and jobs will not be stolen from it (you must stop it and update its configuration to use GridJobStealingCollisionSpi): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 958
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0

    .line 920
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_7
    :try_start_2
    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentWaitingJobs()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v0, v11, v12

    .line 922
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 923
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Maximum number of jobs to steal from node [jobsToSteal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", node="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 927
    :cond_8
    if-gtz v0, :cond_9

    .line 958
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0

    .line 930
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_9
    :try_start_3
    monitor-enter v7
    :try_end_3
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 931
    :try_start_4
    invoke-virtual {v7}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->expired()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v7}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal()I

    move-result v11

    if-lez v11, :cond_a

    .line 933
    invoke-virtual {v7}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->jobsToSteal()I

    move-result v11

    sub-int/2addr v4, v11

    .line 935
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 958
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0

    .line 938
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    :cond_a
    if-ge v4, v0, :cond_b

    .line 939
    move v0, v4

    .line 941
    :cond_b
    sub-int/2addr v4, v0

    .line 943
    :try_start_5
    invoke-virtual {v7, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;->reset(I)V

    .line 944
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 948
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    new-instance v12, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;

    invoke-direct {v12, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingRequest;-><init>(I)V

    const-string v13, "ignite.collision.job.stealing.topic"

    invoke-interface {v11, v8, v12, v13}, Lorg/apache/ignite/spi/IgniteSpiContext;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 958
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .end local v7    # "msgInfo":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    .end local v10    # "waitThreshold":Ljava/lang/Integer;
    :cond_c
    :goto_1
    move v3, v2

    .line 961
    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0

    .line 944
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    .restart local v7    # "msgInfo":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    .restart local v10    # "waitThreshold":Ljava/lang/Integer;
    :catchall_0
    move-exception v11

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v11
    :try_end_8
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 950
    .end local v7    # "msgInfo":Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;
    .end local v10    # "waitThreshold":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 951
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_9
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to send job stealing message to node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 954
    add-int/2addr v4, v0

    .line 958
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 959
    iget-object v11, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v11, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 958
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :catchall_1
    move-exception v11

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v12

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 959
    iget-object v12, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v12, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_d
    throw v11

    .line 963
    .end local v0    # "delta":I
    .end local v2    # "idx":I
    .end local v4    # "jobsLeft":I
    .end local v8    # "next":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "nodeCnt":I
    :cond_e
    return-void

    .restart local v2    # "idx":I
    .restart local v4    # "jobsLeft":I
    .restart local v8    # "next":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v9    # "nodeCnt":I
    :cond_f
    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_0
.end method

.method private comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->cmp:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->cmp:Ljava/util/Comparator;

    .line 823
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->cmp:Ljava/util/Comparator;

    return-object v0
.end method

.method private getJobPriority(Lorg/apache/ignite/compute/ComputeJobContext;)I
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/compute/ComputeJobContext;

    .prologue
    const/4 v5, 0x0

    .line 833
    sget-boolean v2, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 838
    :cond_0
    :try_start_0
    const-string v2, "ignite.stealing.priority"

    invoke-interface {p1, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v1, "p":Ljava/lang/Integer;
    :goto_0
    if-nez v1, :cond_1

    .line 849
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 851
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 840
    .end local v1    # "p":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-object v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type of job context priority attribute \'ignite.stealing.priority\' is not java.lang.Integer (will use default priority) [type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignite.stealing.priority"

    invoke-interface {p1, v4}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dfltPriority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 845
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "p":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private sortJobs(Ljava/util/Collection;I)Ljava/util/Collection;
    .locals 6
    .param p2, "waitSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 794
    .local v3, "passiveList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    const/4 v0, 0x0

    .line 796
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .line 797
    .local v4, "waitJob":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-ne v0, p2, :cond_1

    move v0, v1

    .line 803
    .end local v1    # "i":I
    .end local v4    # "waitJob":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .restart local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->comparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 805
    return-object v3

    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v4    # "waitJob":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_1
    move v0, v1

    .line 801
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public getActiveJobsThreshold()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    return v0
.end method

.method protected getConsistentAttributeNames()Ljava/util/List;
    .locals 2
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
    .line 967
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 969
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ignite.stealing.max.attempts"

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    const-string v1, "ignite.stealing.msg.expire.time"

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    return-object v0
.end method

.method public getCurrentActiveJobsNumber()I
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->runningNum:I

    iget v1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->heldNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentHeldJobsNumber()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->heldNum:I

    return v0
.end method

.method public getCurrentJobsToStealNumber()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealReqs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurrentRunningJobsNumber()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->runningNum:I

    return v0
.end method

.method public getCurrentWaitJobsNumber()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitingNum:I

    return v0
.end method

.method public getMaximumStealingAttempts()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    return v0
.end method

.method public getMessageExpireTime()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    return-wide v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 10
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
    .line 398
    const-string v0, "ignite.collision.wait.jobs.threshold"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ignite.collision.active.jobs.threshold"

    invoke-virtual {p0, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ignite.stealing.max.attempts"

    invoke-virtual {p0, v4}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ignite.stealing.msg.expire.time"

    invoke-virtual {p0, v6}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStealingAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalStolenJobsNumber()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->totalStolenJobsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getWaitJobsThreshold()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    return v0
.end method

.method public isStealingEnabled()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->isStealingEnabled:Z

    return v0
.end method

.method public onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionContext;

    .prologue
    .line 574
    sget-boolean v3, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 576
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->activeJobs()Ljava/util/Collection;

    move-result-object v0

    .line 577
    .local v0, "activeJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->waitingJobs()Ljava/util/Collection;

    move-result-object v2

    .line 579
    .local v2, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->heldJobs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    iput v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->heldNum:I

    .line 582
    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->checkBusy(Ljava/util/Collection;Ljava/util/Collection;)I

    move-result v1

    .line 584
    .local v1, "rejected":I
    iget-object v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->totalStolenJobsNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 587
    if-lez v1, :cond_2

    .line 588
    iget-object v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    iget-object v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total count of rejected jobs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 594
    :cond_2
    iget-boolean v3, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->isStealingEnabled:Z

    if-eqz v3, :cond_1

    .line 596
    invoke-direct {p0, v2, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->checkIdle(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onContextDestroyed0()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    const-string v2, "ignite.collision.job.stealing.topic"

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)Z

    .line 570
    :cond_1
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 9
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 446
    new-instance v6, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;

    invoke-direct {v6, p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V

    iput-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-interface {p1, v6, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 495
    invoke-interface {p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->remoteNodes()Ljava/util/Collection;

    move-result-object v5

    .line 497
    .local v5, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 498
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 500
    .local v1, "id":Ljava/util/UUID;
    invoke-interface {p1, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 501
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sndMsgMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    invoke-direct {v7, p0, v8}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;)V

    invoke-interface {v6, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;

    invoke-direct {v7, p0, v8}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$MessageInfo;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$1;)V

    invoke-interface {v6, v1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-interface {p1, v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-nez v6, :cond_0

    .line 506
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->sndMsgMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->rcvMsgMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    .end local v1    # "id":Ljava/util/UUID;
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 514
    iget-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->nodeQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 516
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 517
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 519
    .local v3, "nextNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-nez v6, :cond_2

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 523
    .end local v3    # "nextNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    new-instance v6, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;

    invoke-direct {v6, p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$2;-><init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V

    iput-object v6, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    const-string v7, "ignite.collision.job.stealing.topic"

    invoke-interface {p1, v6, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->addMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)V

    .line 561
    return-void

    .line 446
    :array_0
    .array-data 4
        0xc
        0xa
        0xb
    .end array-data
.end method

.method public setActiveJobsThreshold(I)V
    .locals 2
    .param p1, "activeJobsThreshold"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 289
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "activeJobsThreshold >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 291
    iput p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    .line 292
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .locals 0
    .param p1, "extLsnr"    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    .prologue
    .line 441
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->extLsnr:Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    .line 442
    return-void
.end method

.method public setMaximumStealingAttempts(I)V
    .locals 2
    .param p1, "maxStealingAttempts"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 339
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxStealingAttempts > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 341
    iput p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    .line 342
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMessageExpireTime(J)V
    .locals 3
    .param p1, "msgExpireTime"    # J
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "messageExpireTime > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 317
    iput-wide p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    .line 318
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStealingAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 358
    .local p1, "stealAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stealAttrs:Ljava/util/Map;

    .line 359
    return-void
.end method

.method public setStealingEnabled(Z)V
    .locals 0
    .param p1, "isStealingEnabled"    # Z
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 328
    iput-boolean p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->isStealingEnabled:Z

    .line 329
    return-void
.end method

.method public setWaitJobsThreshold(I)V
    .locals 2
    .param p1, "waitJobsThreshold"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 302
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "waitJobsThreshold >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 304
    iput p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    .line 305
    return-void

    .line 302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 8
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    if-ltz v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "activeJobsThreshold >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 408
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    const-string/jumbo v3, "waitJobsThreshold >= 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 409
    iget-wide v4, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    const-string v3, "messageExpireTime > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 410
    iget v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    if-lez v0, :cond_5

    :goto_3
    const-string v0, "maxStealingAttempts > 0"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->startStopwatch()V

    .line 416
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "activeJobsThreshold"

    iget v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->activeJobsThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string/jumbo v1, "waitJobsThreshold"

    iget v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->waitJobsThreshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "messageExpireTime"

    iget-wide v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->msgExpireTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "maxStealingAttempts"

    iget v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->maxStealingAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 423
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 426
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 428
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 407
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 408
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 409
    goto :goto_2

    :cond_5
    move v1, v2

    .line 410
    goto :goto_3
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->unregisterMBean()V

    .line 435
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 437
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    const-class v0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
