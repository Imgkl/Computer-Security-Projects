.class public Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorLatestTextFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$1;,
        Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/log/VisorLogFile;",
        ">;>;"
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
    .line 37
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask;->job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$VisorLatestTextFilesJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/file/VisorLatestTextFilesTask$1;)V

    return-object v0
.end method
