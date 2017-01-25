.class Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorComputeResetMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorComputeResetMetricsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/Void;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "debug"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Void;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$1;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;-><init>(Ljava/lang/Void;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;->run(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->resetMetrics()V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/apache/ignite/internal/visor/compute/VisorComputeResetMetricsTask$VisorComputeResetMetricsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
