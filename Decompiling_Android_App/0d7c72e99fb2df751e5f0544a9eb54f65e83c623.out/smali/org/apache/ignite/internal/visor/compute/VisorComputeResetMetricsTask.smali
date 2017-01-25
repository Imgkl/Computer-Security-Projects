.class public Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorComputeResetMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$1;,
        Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask;->job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 34
    new-instance v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;-><init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$1;)V

    return-object v0
.end method
