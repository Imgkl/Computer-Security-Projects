.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorIgfsSamplingStateTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$1;,
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
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

    .line 38
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask;->job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$VisorIgfsSamplingStateJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsSamplingStateTask$1;)V

    return-object v0
.end method
