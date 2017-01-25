.class public abstract Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorOneNodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<TA;TR;TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorOneNodeTask;, "Lorg/apache/ignite/internal/visor/VisorOneNodeTask<TA;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/visor/VisorOneNodeTask;, "Lorg/apache/ignite/internal/visor/VisorOneNodeTask<TA;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 34
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 36
    .local v0, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v1

    if-nez v1, :cond_1

    .line 37
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 39
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method
