.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorIgfsResetMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$1;,
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
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
    .line 31
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask;->job(Ljava/util/Set;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/util/Set;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "arg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$VisorIgfsResetMetricsJob;-><init>(Ljava/util/Set;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsResetMetricsTask$1;)V

    return-object v0
.end method
