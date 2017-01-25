.class public abstract Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;
.super Ljava/lang/Object;
.source "GridCollisionJobContextAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionJobContext;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 1
    .param p1, "jobWorker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-boolean v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .line 39
    return-void
.end method


# virtual methods
.method public getJob()Lorg/apache/ignite/compute/ComputeJob;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    return-object v0
.end method

.method public getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v0

    return-object v0
.end method

.method public getJobWorker()Lorg/apache/ignite/internal/processors/job/GridJobWorker;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    return-object v0
.end method

.method public bridge synthetic getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->getTaskSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public getTaskSession()Lorg/apache/ignite/internal/GridJobSessionImpl;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionJobContextAdapter;->jobWorker:Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    return-object v0
.end method
