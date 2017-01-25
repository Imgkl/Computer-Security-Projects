.class public Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;
.super Ljava/lang/Object;
.source "GridComputeJobWrapper.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJob;
.implements Ljava/util/concurrent/Callable;
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final job:Lorg/apache/ignite/compute/ComputeJob;

.field private volatile transient p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/compute/ComputeJob;)V
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "job"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 50
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJob;->cancel()V

    .line 85
    return-void
.end method

.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectPeerDeployAware(Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->p:Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->job:Lorg/apache/ignite/compute/ComputeJob;

    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJob;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrappedJob()Lorg/apache/ignite/compute/ComputeJob;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->job:Lorg/apache/ignite/compute/ComputeJob;

    return-object v0
.end method
