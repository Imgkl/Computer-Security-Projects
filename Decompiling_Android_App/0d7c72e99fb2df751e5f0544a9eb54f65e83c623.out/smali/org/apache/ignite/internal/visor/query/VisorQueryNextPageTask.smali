.class public Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorQueryNextPageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$1;,
        Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryResult;",
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
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask;->job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$1;)V

    return-object v0
.end method
