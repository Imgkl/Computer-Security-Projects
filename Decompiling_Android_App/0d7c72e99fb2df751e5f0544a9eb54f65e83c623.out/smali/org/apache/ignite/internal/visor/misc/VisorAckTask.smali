.class public Lorg/apache/ignite/internal/visor/misc/VisorAckTask;
.super Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;
.source "VisorAckTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/misc/VisorAckTask$1;,
        Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorMultiNodeTask",
        "<",
        "Ljava/lang/String;",
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
    .line 32
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorMultiNodeTask;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/misc/VisorAckTask;->job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/misc/VisorAckTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/misc/VisorAckTask$VisorAckJob;-><init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/misc/VisorAckTask$1;)V

    return-object v0
.end method

.method protected bridge synthetic reduce0(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/misc/VisorAckTask;->reduce0(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected reduce0(Ljava/util/List;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 43
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method
