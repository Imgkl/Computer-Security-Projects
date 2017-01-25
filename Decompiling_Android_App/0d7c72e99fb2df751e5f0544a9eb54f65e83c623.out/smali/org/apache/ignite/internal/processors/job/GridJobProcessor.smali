.class public Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobExecutionListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;,
        Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/SkipDaemon;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FINISHED_JOBS_COUNT:I


# instance fields
.field private final activeJobs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private cancelOnStop:Z

.field private final cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final canceledJobsCnt:Lorg/jsr166/LongAdder8;

.field private final cancelledJobs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final currentSess:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            ">;"
        }
    .end annotation
.end field

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

.field private final finishedJobs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final finishedJobsCnt:Lorg/jsr166/LongAdder8;

.field private final finishedJobsTime:Lorg/jsr166/LongAdder8;

.field private final handlingCollision:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final heldJobs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

.field private final internal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final jobAlwaysActivate:Z

.field private final jobExecLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private final maxFinishedJobsTime:Lorg/apache/ignite/internal/util/GridAtomicLong;

.field private final metricsLastUpdateTstamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private final metricsUpdateFreq:J

.field private final passiveJobs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/job/GridJobWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final rejectedJobsCnt:Lorg/jsr166/LongAdder8;

.field private final rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private final startedJobsCnt:Lorg/jsr166/LongAdder8;

.field private stopping:Z

.field private final topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    .line 58
    const-string v0, "IGNITE_JOBS_HISTORY_SIZE"

    const/16 v1, 0x2800

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/16 v8, 0x400

    const/16 v4, 0x100

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    .line 163
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 73
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->heldJobs:Ljava/util/Collection;

    .line 80
    new-instance v1, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    sget v5, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    sget v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    if-ge v0, v2, :cond_1

    sget v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    :goto_0
    const/16 v7, 0x10

    invoke-direct {v1, v5, v0, v3, v7}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;-><init>(IIFI)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    .line 86
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    sget v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    sget v5, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    if-ge v5, v2, :cond_0

    sget v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->FINISHED_JOBS_COUNT:I

    :cond_0
    sget-object v5, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;-><init>(IIFILorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    .line 104
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->canceledJobsCnt:Lorg/jsr166/LongAdder8;

    .line 107
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsCnt:Lorg/jsr166/LongAdder8;

    .line 110
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->startedJobsCnt:Lorg/jsr166/LongAdder8;

    .line 113
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectedJobsCnt:Lorg/jsr166/LongAdder8;

    .line 116
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsTime:Lorg/jsr166/LongAdder8;

    .line 119
    new-instance v0, Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->maxFinishedJobsTime:Lorg/apache/ignite/internal/util/GridAtomicLong;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsLastUpdateTstamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 134
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 140
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;

    invoke-direct {v0, p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    .line 143
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handlingCollision:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal:Ljava/lang/ThreadLocal;

    .line 157
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentSess:Ljava/lang/ThreadLocal;

    .line 165
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 168
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->enabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    .line 170
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsUpdateFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    .line 172
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    :goto_2
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    .line 175
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v0, :cond_4

    move-object v0, v6

    :goto_3
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;

    invoke-direct {v0, p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    .line 178
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;

    invoke-direct {v0, p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobCancelListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 179
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobExecutionListener;

    invoke-direct {v0, p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobExecutionListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobExecLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    .line 180
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;

    invoke-direct {v0, p0, v6}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 181
    return-void

    :cond_1
    move v0, v2

    .line 80
    goto/16 :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 172
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;

    move-object v1, p0

    move v2, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;IFILorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    goto :goto_2

    .line 175
    :cond_4
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;

    move-object v1, p0

    move v2, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobsMap;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;IFILorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    goto :goto_3
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelActiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->heldJobs:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->onBeforeActivateJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->executeAsync(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectedJobsCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    return-void
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->stopping:Z

    return v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handleCollisions()V

    return-void
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->updateJobMetrics()V

    return-void
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    return-void
.end method

.method static synthetic access$4600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsTime:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridAtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->maxFinishedJobsTime:Lorg/apache/ignite/internal/util/GridAtomicLong;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->processTaskSessionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V

    return-void
.end method

.method static synthetic access$5800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$6600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$6900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelPassiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v0

    return v0
.end method

.method private cancelActiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 2
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "sys"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    goto :goto_0
.end method

.method private cancelJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 2
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "sysCancel"    # Z

    .prologue
    .line 310
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isCancelled()Z

    move-result v0

    .line 314
    .local v0, "isCancelled":Z
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 315
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->canceledJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->increment()V

    .line 317
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->cancel(Z)V

    .line 318
    return-void
.end method

.method private cancelPassiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 3
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 603
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 605
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job has been cancelled before activation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 609
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->canceledJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 611
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeAsync(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 8
    .param p1, "jobWorker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    .line 1215
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1217
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1218
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->startedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v3}, Lorg/jsr166/LongAdder8;->increment()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_0
    :goto_0
    return v2

    .line 1222
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1228
    new-instance v1, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job has been rejected [jobSes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", job="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1231
    .local v1, "e2":Lorg/apache/ignite/IgniteException;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1232
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v3}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1234
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 1237
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleCollisions()V
    .locals 4

    .prologue
    .line 643
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handlingCollision:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Skipping recursive collision handling."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 811
    :cond_1
    :goto_0
    return-void

    .line 652
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handlingCollision:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Before handling collisions."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 659
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$8;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    new-instance v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$9;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    new-instance v3, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$10;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$10;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->onCollision(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 805
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 806
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->updateJobMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handlingCollision:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handlingCollision:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method private handleException(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobExecuteRequest;Lorg/apache/ignite/IgniteException;J)V
    .locals 18
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "req"    # Lorg/apache/ignite/internal/GridJobExecuteRequest;
    .param p3, "ex"    # Lorg/apache/ignite/IgniteException;
    .param p4, "endTime"    # J

    .prologue
    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    .line 1251
    .local v3, "locNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v16

    .line 1253
    .local v16, "sndNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v16, :cond_1

    .line 1254
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reply to sender node because it left grid [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1258
    new-instance v14, Lorg/apache/ignite/events/JobEvent;

    invoke-direct {v14}, Lorg/apache/ignite/events/JobEvent;-><init>()V

    .line 1260
    .local v14, "evt":Lorg/apache/ignite/events/JobEvent;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->jobId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job reply failed (original task node left grid): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->message(Ljava/lang/String;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskName(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskClassName(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskSessionId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1266
    const/16 v4, 0x30

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->type(I)V

    .line 1267
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/apache/ignite/events/JobEvent;->taskNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSubjectId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskSubjectId(Ljava/util/UUID;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1351
    .end local v14    # "evt":Lorg/apache/ignite/events/JobEvent;
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v15, 0x1

    .line 1280
    .local v15, "loc":Z
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    if-eqz v15, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-eqz v15, :cond_5

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x0

    if-eqz v15, :cond_6

    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v12}, Lorg/apache/ignite/internal/GridJobExecuteResponse;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V

    .line 1292
    .local v2, "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isSessionFullSupport()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1297
    sget-object v4, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v7

    .line 1299
    .local v7, "topic":Ljava/lang/Object;
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long v10, p4, v4

    .line 1301
    .local v10, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gtz v4, :cond_2

    .line 1303
    const-wide/16 v10, 0x1

    .line 1307
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v9, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_5
    const/4 v12, 0x0

    move-object/from16 v6, v16

    move-object v8, v2

    invoke-virtual/range {v5 .. v12}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1321
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v7    # "topic":Ljava/lang/Object;
    .end local v10    # "timeout":J
    .end local v15    # "loc":Z
    :catch_0
    move-exception v13

    .line 1323
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->isDeadNode(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to reply to sender node because it left grid [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1334
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1335
    new-instance v14, Lorg/apache/ignite/events/JobEvent;

    invoke-direct {v14}, Lorg/apache/ignite/events/JobEvent;-><init>()V

    .line 1337
    .restart local v14    # "evt":Lorg/apache/ignite/events/JobEvent;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->jobId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send reply for job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->message(Ljava/lang/String;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1340
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskName(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskClassName(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskSessionId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1343
    const/16 v4, 0x30

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->type(I)V

    .line 1344
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/apache/ignite/events/JobEvent;->taskNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSubjectId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/apache/ignite/events/JobEvent;->taskSubjectId(Ljava/util/UUID;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v14}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    goto/16 :goto_0

    .line 1278
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v14    # "evt":Lorg/apache/ignite/events/JobEvent;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1280
    .restart local v15    # "loc":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p3

    invoke-interface {v6, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v6

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v8

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v10

    goto/16 :goto_4

    .line 1307
    .restart local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .restart local v7    # "topic":Ljava/lang/Object;
    .restart local v10    # "timeout":J
    :cond_7
    sget-object v9, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    goto/16 :goto_5

    .line 1315
    .end local v7    # "topic":Ljava/lang/Object;
    .end local v10    # "timeout":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1316
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->processJobExecuteResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/GridJobExecuteResponse;)V

    goto/16 :goto_0

    .line 1319
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isInternal()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->MANAGEMENT_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6, v2, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    goto/16 :goto_0

    :cond_a
    sget-object v4, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 1328
    .end local v2    # "jobRes":Lorg/apache/ignite/internal/GridJobExecuteResponse;
    .end local v15    # "loc":Z
    .restart local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_b
    sget-boolean v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez v16, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1330
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending reply for job [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", jobId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method private isDeadNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "uid"    # Ljava/util/UUID;

    .prologue
    .line 1416
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBeforeActivateJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    .locals 6
    .param p1, "jobWorker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1163
    sget-boolean v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1165
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1170
    .local v1, "sysCancelled":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 1171
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sysCancelled":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 1173
    .restart local v1    # "sysCancelled":Ljava/lang/Boolean;
    :cond_1
    if-eqz v1, :cond_3

    .line 1176
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1180
    new-instance v0, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job was cancelled before execution [jobSes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", job="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v0, "e2":Lorg/apache/ignite/IgniteException;
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    invoke-virtual {p1, v4, v0, v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 1206
    .end local v0    # "e2":Lorg/apache/ignite/IgniteException;
    :goto_1
    return v3

    .restart local v0    # "e2":Lorg/apache/ignite/IgniteException;
    :cond_2
    move v2, v3

    .line 1184
    goto :goto_0

    .line 1192
    .end local v0    # "e2":Lorg/apache/ignite/IgniteException;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getTaskNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1195
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onMasterNodeLeft()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1198
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job is being cancelled because master task node left grid (as there is no one waiting for results, job will not be failed over): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1202
    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    :cond_4
    move v3, v2

    .line 1206
    goto :goto_1
.end method

.method private processTaskSessionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .prologue
    const/4 v11, 0x0

    .line 1359
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1362
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->stopping:Z

    if-eqz v1, :cond_1

    .line 1363
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1364
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received job session request while stopping grid (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1405
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 1407
    :goto_0
    return-void

    .line 1369
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->getSession(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v12

    .line 1371
    .local v12, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    if-nez v12, :cond_3

    .line 1372
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1373
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received job session request for non-existing session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1405
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 1378
    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v11, 0x1

    .line 1380
    .local v11, "loc":Z
    :cond_4
    if-eqz v11, :cond_6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getAttributes()Ljava/util/Map;

    move-result-object v9

    .line 1383
    .local v9, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1384
    new-instance v0, Lorg/apache/ignite/events/TaskEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v12}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v12}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/events/TaskEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    .line 1394
    .local v0, "evt":Lorg/apache/ignite/events/Event;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 1397
    .end local v0    # "evt":Lorg/apache/ignite/events/Event;
    :cond_5
    monitor-enter v12
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1398
    :try_start_3
    invoke-virtual {v12, v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setInternal(Ljava/util/Map;)V

    .line 1399
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1405
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .line 1380
    .end local v9    # "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    :try_start_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getAttributesBytes()[B

    move-result-object v2

    invoke-virtual {v12}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v1

    goto :goto_1

    .line 1399
    .restart local v9    # "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1401
    .end local v9    # "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v11    # "loc":Z
    .end local v12    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :catch_0
    move-exception v10

    .line 1402
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Failed to deserialize session attributes."

    invoke-static {v1, v2, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1405
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .end local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method private rejectJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 3
    .param p1, "job"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p2, "sndReply"    # Z

    .prologue
    .line 299
    new-instance v0, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job was cancelled before execution [taskSesId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", jobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", job="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->finishJob(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Z)V

    .line 303
    return-void
.end method

.method private release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 1
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 324
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->release()V

    .line 326
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->obsolete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 328
    :cond_0
    return-void
.end method

.method private updateJobMetrics()V
    .locals 8

    .prologue
    .line 817
    sget-boolean v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 819
    :cond_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 820
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->updateJobMetrics0()V

    .line 828
    :cond_1
    :goto_0
    return-void

    .line 822
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 823
    .local v2, "now":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsLastUpdateTstamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 825
    .local v0, "lastUpdate":J
    sub-long v4, v2, v0

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsLastUpdateTstamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 826
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->updateJobMetrics0()V

    goto :goto_0
.end method

.method private updateJobMetrics0()V
    .locals 14

    .prologue
    .line 834
    sget-boolean v10, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 836
    :cond_0
    new-instance v5, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;

    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;-><init>()V

    .line 838
    .local v5, "m":Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10}, Lorg/jsr166/LongAdder8;->sumThenReset()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setRejectJobs(I)V

    .line 839
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->startedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10}, Lorg/jsr166/LongAdder8;->sumThenReset()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setStartedJobs(I)V

    .line 842
    const/4 v0, 0x0

    .line 844
    .local v0, "cnt":I
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 845
    .local v4, "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    sget-boolean v10, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v10, :cond_2

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 847
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 849
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->held()Z

    move-result v10

    if-nez v10, :cond_1

    .line 850
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getExecuteTime()J

    move-result-wide v2

    .line 852
    .local v2, "execTime":J
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumExecutionTime()J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    .line 853
    invoke-virtual {v5, v2, v3}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setMaximumExecutionTime(J)V

    goto :goto_0

    .line 857
    .end local v2    # "execTime":J
    .end local v4    # "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_3
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setActiveJobs(I)V

    .line 859
    const/4 v0, 0x0

    .line 863
    iget-boolean v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v10, :cond_7

    .line 865
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 867
    .restart local v4    # "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    sget-boolean v10, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v10, :cond_4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 869
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 871
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getQueuedTime()J

    move-result-wide v8

    .line 873
    .local v8, "queuedTime":J
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumWaitTime()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    .line 874
    invoke-virtual {v5, v8, v9}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setMaximumWaitTime(J)V

    .line 876
    :cond_5
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getWaitTime()J

    move-result-wide v10

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getQueuedTime()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setWaitTime(J)V

    goto :goto_1

    .line 879
    .end local v4    # "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .end local v8    # "queuedTime":J
    :cond_6
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setPassiveJobs(I)V

    .line 882
    :cond_7
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10}, Lorg/jsr166/LongAdder8;->sumThenReset()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setFinishedJobs(I)V

    .line 883
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobsTime:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10}, Lorg/jsr166/LongAdder8;->sumThenReset()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setExecutionTime(J)V

    .line 884
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->canceledJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v10}, Lorg/jsr166/LongAdder8;->sumThenReset()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v5, v10}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setCancelJobs(I)V

    .line 886
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->maxFinishedJobsTime:Lorg/apache/ignite/internal/util/GridAtomicLong;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v12, v13}, Lorg/apache/ignite/internal/util/GridAtomicLong;->getAndSet(J)J

    move-result-wide v6

    .line 888
    .local v6, "maxFinishedTime":J
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->getMaximumExecutionTime()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-lez v10, :cond_8

    .line 889
    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setMaximumExecutionTime(J)V

    .line 892
    :cond_8
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->metrics()Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/internal/managers/discovery/GridLocalMetrics;->getCurrentCpuLoad()D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;->setCpuLoad(D)V

    .line 894
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v10}, Lorg/apache/ignite/internal/GridKernalContext;->jobMetric()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;->addSnapshot(Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsSnapshot;)V

    .line 895
    return-void
.end method


# virtual methods
.method public activeJob(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 273
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    return-object v0
.end method

.method public cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 7
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "sys"    # Z

    .prologue
    .line 534
    sget-boolean v3, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 536
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 539
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->stopping:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelOnStop:Z

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received job cancellation request while stopping grid with cancellation (will ignore) [sesId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", jobId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 594
    :goto_0
    return-void

    .line 548
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    if-eqz p2, :cond_5

    move-object v3, p2

    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$5;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 561
    .local v1, "idsMatch":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/job/GridJobWorker;>;"
    if-nez p2, :cond_6

    .line 562
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v3, :cond_3

    .line 564
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$6;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->forEach(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 571
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;

    invoke-direct {v4, p0, p3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$7;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->forEach(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .end local v1    # "idsMatch":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/job/GridJobWorker;>;"
    :cond_5
    move-object v3, p1

    .line 548
    goto :goto_1

    .line 578
    .restart local v1    # "idsMatch":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/job/GridJobWorker;>;"
    :cond_6
    :try_start_2
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v3, :cond_7

    .line 579
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 581
    .local v2, "passiveJob":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    if-eqz v2, :cond_7

    invoke-interface {v1, v2}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelPassiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_7

    .line 592
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 585
    .end local v2    # "passiveJob":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_7
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 587
    .local v0, "activeJob":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    if-eqz v0, :cond_4

    invoke-interface {v1, v0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    invoke-direct {p0, v0, p3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelActiveJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 592
    .end local v0    # "activeJob":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .end local v1    # "idsMatch":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/job/GridJobWorker;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3
.end method

.method public currentTaskName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1147
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-object v1

    .line 1150
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentSess:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskSession;

    .line 1152
    .local v0, "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    if-eqz v0, :cond_0

    .line 1155
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public currentTaskNameHash()I
    .locals 2

    .prologue
    .line 1136
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskName()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public currentTaskSession(Lorg/apache/ignite/compute/ComputeTaskSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentSess:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1128
    return-void
.end method

.method internal(Z)V
    .locals 2
    .param p1, "internal"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public internal()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public masterLeaveLocal(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 3
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 521
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 523
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 524
    .local v1, "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onMasterNodeLeft()Z

    goto :goto_0

    .line 526
    .end local v1    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_2
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    const/4 v5, 0x0

    .line 220
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    .line 222
    .local v0, "commMgr":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobExecLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v3, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 223
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v3, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 225
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v3, :cond_0

    .line 227
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->unsetCollisionExternalListener()V

    .line 229
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 232
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->stopping:Z

    .line 234
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelOnStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 241
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v3, :cond_2

    .line 242
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 243
    .local v2, "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-direct {p0, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rejectJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    goto :goto_0

    .line 237
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v3

    .line 248
    :cond_2
    if-eqz p1, :cond_3

    .line 249
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 250
    .restart local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->onStopping()V

    .line 252
    invoke-direct {p0, v2, v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    goto :goto_1

    .line 256
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 257
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 260
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    new-array v5, v5, [I

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 262
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Finished executing job processor onKernalStop() callback."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 264
    :cond_4
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1421
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Job processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   activeJobsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   passiveJobsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v0, :cond_0

    const-string v0, "n/a"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   cancelledJobsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   cancelReqsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->sizex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   finishedJobsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->finishedJobs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->sizex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public processJobExecuteRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobExecuteRequest;)V
    .locals 41
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "req"    # Lorg/apache/ignite/internal/GridJobExecuteRequest;

    .prologue
    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received job request message [req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 906
    :cond_0
    const/16 v33, 0x0

    .line 908
    .local v33, "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 911
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->stopping:Z

    if-eqz v2, :cond_3

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received job execution request while stopping this node (will ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    move-object/from16 v17, v33

    .line 1119
    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .local v17, "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_2
    :goto_0
    return-void

    .line 918
    .end local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_3
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getCreateTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTimeout()J

    move-result-wide v4

    add-long v12, v2, v4

    .line 921
    .local v12, "endTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_4

    .line 922
    const-wide v12, 0x7fffffffffffffffL

    .line 924
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isForceLocalDeployment()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getLocalDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v40

    .line 936
    .local v40, "tmpDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_1
    if-nez v40, :cond_9

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Checking local tasks..."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 941
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->getUsedDeploymentMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    .line 942
    .local v30, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 943
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->local()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    .end local v12    # "endTime":J
    .end local v30    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v40    # "tmpDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catchall_0
    move-exception v2

    move-object/from16 v17, v33

    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v2

    .line 924
    .end local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v12    # "endTime":J
    .restart local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getUserVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getLoaderParticipants()Ljava/util/Map;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v40

    goto/16 :goto_1

    .line 945
    .restart local v30    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v40    # "tmpDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_8
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "tmpDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    check-cast v40, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 952
    .end local v30    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v32    # "i$":Ljava/util/Iterator;
    .restart local v40    # "tmpDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_9
    move-object/from16 v7, v40

    .line 954
    .local v7, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deployment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 957
    :cond_a
    const/16 v36, 0x1

    .line 960
    .local v36, "releaseDep":Z
    if-eqz v7, :cond_1a

    :try_start_3
    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->acquire()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v2

    if-eqz v2, :cond_1a

    .line 965
    const/4 v14, 0x0

    .line 967
    .local v14, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isDynamicSiblings()Z

    move-result v2

    if-nez v2, :cond_e

    .line 968
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSiblings()Ljava/util/Collection;

    move-result-object v38

    .line 970
    .local v38, "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    if-nez v38, :cond_d

    .line 971
    sget-boolean v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSiblingsBytes()[B

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1016
    .end local v38    # "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :catch_0
    move-exception v31

    .line 1017
    .local v31, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    new-instance v11, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deserialize task attributes [taskName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", taskClsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", codeVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getUserVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", taskClsLdr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-direct {v11, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1021
    .local v11, "ex":Lorg/apache/ignite/IgniteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v11}, Lorg/apache/ignite/IgniteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1023
    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handleException(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobExecuteRequest;Lorg/apache/ignite/IgniteException;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1109
    if-eqz v7, :cond_b

    if-eqz v36, :cond_b

    .line 1110
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1114
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    move-object/from16 v17, v33

    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    goto/16 :goto_0

    .line 973
    .end local v11    # "ex":Lorg/apache/ignite/IgniteException;
    .end local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .end local v31    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v38    # "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSiblingsBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    check-cast v38, Ljava/util/Collection;

    .line 976
    .restart local v38    # "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :cond_d
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .local v37, "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    move-object/from16 v14, v37

    .line 979
    .end local v37    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .end local v38    # "siblings0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .restart local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :cond_e
    const/4 v15, 0x0

    .line 981
    .local v15, "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isSessionFullSupport()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 982
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionAttributes()Ljava/util/Map;

    move-result-object v15

    .line 984
    if-nez v15, :cond_f

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionAttributesBytes()[B

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    check-cast v15, Ljava/util/Map;

    .line 990
    .restart local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->topology()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getStartTaskTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isSessionFullSupport()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSubjectId()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v3 .. v17}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->createTaskSession(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;ZLjava/util/UUID;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v39

    .line 1004
    .local v39, "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setCheckpointSpi(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1007
    new-instance v22, Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/ignite/internal/GridJobSessionImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1009
    .local v22, "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobAttributes()Ljava/util/Map;

    move-result-object v34

    .line 1011
    .local v34, "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    if-nez v34, :cond_10

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobAttributesBytes()[B

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    check-cast v34, Ljava/util/Map;

    .line 1014
    .restart local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    :cond_10
    new-instance v23, Lorg/apache/ignite/internal/GridJobContextImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/ignite/internal/GridJobContextImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1028
    .local v23, "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    :try_start_8
    new-instance v17, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getCreateTime()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobBytes()[B

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->isInternal()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->evtLsnr:Lorg/apache/ignite/internal/processors/job/GridJobEventListener;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->holdLsnr:Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;

    move-object/from16 v29, v0

    move-object/from16 v19, v7

    move-object/from16 v26, p1

    invoke-direct/range {v17 .. v29}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;JLorg/apache/ignite/internal/GridJobSessionImpl;Lorg/apache/ignite/internal/GridJobContextImpl;[BLorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/job/GridJobEventListener;Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1041
    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :try_start_9
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridJobContextImpl;->job(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 1044
    const/16 v36, 0x0

    .line 1046
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->initialize(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1048
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1052
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->run()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1055
    const/16 v17, 0x0

    .line 1109
    .end local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .end local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v22    # "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    .end local v23    # "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    .end local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .end local v39    # "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_11
    :goto_3
    if-eqz v7, :cond_12

    if-eqz v36, :cond_12

    .line 1110
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1114
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 1117
    if-eqz v17, :cond_2

    .line 1118
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->run()V

    goto/16 :goto_0

    .line 1057
    .restart local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .restart local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v22    # "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    .restart local v23    # "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    .restart local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .restart local v39    # "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-eqz v2, :cond_17

    .line 1058
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->onBeforeActivateJob(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1061
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->executeAsync(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    .line 1064
    const/16 v17, 0x0

    goto :goto_3

    .line 1066
    :cond_14
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->startedJobsCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->increment()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 1109
    :catchall_1
    move-exception v2

    .end local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .end local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v22    # "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    .end local v23    # "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    .end local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .end local v39    # "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :goto_4
    if-eqz v7, :cond_15

    if-eqz v36, :cond_15

    .line 1110
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    :cond_15
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1114
    :catchall_2
    move-exception v2

    goto/16 :goto_2

    .line 1073
    .restart local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .restart local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v22    # "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    .restart local v23    # "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    .restart local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .restart local v39    # "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_16
    const/16 v17, 0x0

    goto :goto_3

    .line 1076
    :cond_17
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->passiveJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 1078
    .local v35, "old":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    if-nez v35, :cond_18

    .line 1079
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handleCollisions()V

    .line 1088
    :goto_5
    const/16 v17, 0x0

    .line 1089
    goto :goto_3

    .line 1081
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received computation request with duplicate job ID (could be network malfunction, source node may hang if task timeout was not set) [srcNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sesId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", locNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .line 1093
    .end local v35    # "old":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_19
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1097
    .end local v14    # "siblings":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .end local v15    # "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .end local v22    # "jobSes":Lorg/apache/ignite/internal/GridJobSessionImpl;
    .end local v23    # "jobCtx":Lorg/apache/ignite/internal/GridJobContextImpl;
    .end local v34    # "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .end local v39    # "taskSes":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .restart local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :cond_1a
    :try_start_e
    new-instance v11, Lorg/apache/ignite/IgniteDeploymentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task was not deployed or was redeployed since task execution [taskName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", taskClsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getTaskClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", codeVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getUserVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clsLdrId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seqNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", depMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/apache/ignite/IgniteDeploymentException;-><init>(Ljava/lang/String;)V

    .line 1103
    .restart local v11    # "ex":Lorg/apache/ignite/IgniteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v11}, Lorg/apache/ignite/IgniteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1105
    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->handleException(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobExecuteRequest;Lorg/apache/ignite/IgniteException;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v17, v33

    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    goto/16 :goto_3

    .line 1109
    .end local v11    # "ex":Lorg/apache/ignite/IgniteException;
    .end local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    :catchall_3
    move-exception v2

    move-object/from16 v17, v33

    .end local v33    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .restart local v17    # "job":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    goto/16 :goto_4
.end method

.method public requestJobSiblings(Lorg/apache/ignite/compute/ComputeTaskSession;)Ljava/util/Collection;
    .locals 20
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 378
    sget-boolean v3, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 380
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskNodeId()Ljava/util/UUID;

    move-result-object v4

    .line 382
    .local v4, "taskNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    .line 384
    .local v18, "taskNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v18, :cond_1

    .line 385
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Node that originated task execution has left grid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t2()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v6

    .line 390
    .local v6, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Lorg/apache/ignite/internal/GridJobSiblingsResponse;>;"
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 391
    .local v5, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 393
    .local v7, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$3;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V

    .line 433
    .local v2, "msgLsnr":Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    new-instance v8, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$4;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Ljava/util/UUID;Ljava/util/concurrent/locks/Lock;Lorg/apache/ignite/lang/IgniteBiTuple;Ljava/util/concurrent/locks/Condition;)V

    .line 457
    .local v8, "discoLsnr":Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 460
    .local v15, "loc":Z
    sget-object v3, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->topicIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;J)Ljava/lang/Object;

    move-result-object v19

    .line 464
    .local v19, "topic":Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v10

    sget-object v11, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    new-instance v12, Lorg/apache/ignite/internal/GridJobSiblingsRequest;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    if-eqz v15, :cond_2

    move-object/from16 v9, v19

    :goto_0
    if-eqz v15, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v12, v13, v9, v3}, Lorg/apache/ignite/internal/GridJobSiblingsRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;[B)V

    sget-object v3, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v11, v12, v3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v9, 0xc

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xb

    aput v12, v10, v11

    invoke-virtual {v3, v8, v9, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v18

    .line 479
    if-nez v18, :cond_4

    .line 480
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Node that originated task execution has left grid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 511
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v8, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    throw v3

    .line 467
    :cond_2
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_1

    .line 483
    :cond_4
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v16

    .line 488
    .local v16, "netTimeout":J
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 489
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-interface {v7, v0, v1, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 491
    :cond_5
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 492
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timed out waiting for job siblings (consider increasing\'networkTimeout\' configuration property) [ses="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", netTimeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    .end local v16    # "netTimeout":J
    :catch_0
    move-exception v14

    .line 503
    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupted while waiting for job siblings response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9, v14}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 506
    .end local v14    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 496
    .restart local v16    # "netTimeout":J
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 497
    new-instance v9, Lorg/apache/ignite/IgniteCheckedException;

    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v9, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 500
    :cond_7
    invoke-virtual {v6}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/GridJobSiblingsResponse;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridJobSiblingsResponse;->jobSiblings()Ljava/util/Collection;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    .line 506
    :try_start_6
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 510
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    .line 511
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v8, v10}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    return-object v3
.end method

.method public setAttributes(Lorg/apache/ignite/internal/GridJobSessionImpl;Ljava/util/Map;)V
    .locals 12
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridJobSessionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridJobSessionImpl;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 338
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getEndTime()J

    move-result-wide v8

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 340
    .local v6, "timeout":J
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_1

    .line 341
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task execution timed out (remote session attributes won\'t be set): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 370
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting session attribute(s) from job: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 349
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getTaskNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 351
    .local v2, "taskNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v2, :cond_3

    .line 352
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Node that originated task execution has left grid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getTaskNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 357
    .local v0, "loc":Z
    :goto_1
    new-instance v4, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_2
    invoke-direct {v4, v5, v8, v1, p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLjava/util/Map;)V

    .line 360
    .local v4, "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v3

    .line 363
    .local v3, "topic":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "loc":Z
    .end local v3    # "topic":Ljava/lang/Object;
    .end local v4    # "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 357
    .restart local v0    # "loc":Z
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    goto :goto_2
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 185
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 186
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for \'metricsUpdateFrequency\' configuration property (should be greater than or equals to -1): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->metricsUpdateFreq:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Job metrics are disabled (use with caution)."

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 192
    :cond_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobAlwaysActivate:Z

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->setCollisionExternalListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V

    .line 195
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    .line 197
    .local v0, "ioMgr":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 198
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->jobExecLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 200
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v3, 0xc

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 202
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Job processor started."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 204
    :cond_3
    return-void

    .line 200
    :array_0
    .array-data 4
        0xb
        0xd
    .end array-data
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->activeJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelledJobs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelReqs:Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->clear()V

    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Job processor stopped."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method
