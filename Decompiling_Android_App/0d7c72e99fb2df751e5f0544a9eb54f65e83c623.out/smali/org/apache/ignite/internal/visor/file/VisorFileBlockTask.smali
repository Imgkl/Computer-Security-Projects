.class public Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorFileBlockTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$1;,
        Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;,
        Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<+",
        "Ljava/io/IOException;",
        "Lorg/apache/ignite/internal/visor/file/VisorFileBlock;",
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
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask;->job(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;)Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;
    .locals 3
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;

    .prologue
    .line 42
    new-instance v0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockJob;-><init>(Lorg/apache/ignite/internal/visor/file/VisorFileBlockTask$VisorFileBlockArg;ZLorg/apache/ignite/internal/visor/file/VisorFileBlockTask$1;)V

    return-object v0
.end method
