.class public Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorThreadDumpTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$1;,
        Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/Void;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<[",
        "Lorg/apache/ignite/internal/visor/debug/VisorThreadInfo;",
        "[J>;>;"
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
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask;->job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/Void;)Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Void;

    .prologue
    .line 37
    new-instance v0, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$VisorDumpThreadJob;-><init>(Ljava/lang/Void;ZLorg/apache/ignite/internal/visor/debug/VisorThreadDumpTask$1;)V

    return-object v0
.end method
