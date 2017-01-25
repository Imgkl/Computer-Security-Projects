.class public Lorg/apache/ignite/internal/visor/query/VisorQueryTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;,
        Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;,
        Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<+",
        "Ljava/lang/Exception;",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryResultEx;",
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
    .line 42
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 174
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask;->job(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;)Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;)Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;
    .locals 2
    .param p1, "arg"    # Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryTask;->debug:Z

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryJob;-><init>(Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorQueryArg;Z)V

    return-object v0
.end method
