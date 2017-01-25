.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;
.super Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;
.source "GridJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollisionJobContext"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final passive:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1433
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V
    .locals 1
    .param p2, "jobWorker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .param p3, "passive"    # Z

    .prologue
    .line 1441
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    .line 1442
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V

    .line 1444
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1445
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1447
    :cond_1
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->passive:Z

    .line 1448
    return-void
.end method


# virtual methods
.method public activate()Z
    .locals 3

    .prologue
    .line 1452
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->getJobWorker()Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v0

    .line 1454
    .local v0, "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancel()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1461
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->getJobWorker()Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v0

    .line 1463
    .local v0, "jobWorker":Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    const/4 v1, 0x0

    .line 1467
    .local v1, "ret":Z
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->passive:Z

    if-eqz v2, :cond_2

    .line 1469
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1470
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    .line 1472
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1473
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1475
    :cond_0
    const/4 v1, 0x1

    .line 1492
    :cond_1
    :goto_0
    return v1

    .line 1479
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1480
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1484
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1489
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1487
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2, v0, v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobWorker;Z)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1497
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionJobContext;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
