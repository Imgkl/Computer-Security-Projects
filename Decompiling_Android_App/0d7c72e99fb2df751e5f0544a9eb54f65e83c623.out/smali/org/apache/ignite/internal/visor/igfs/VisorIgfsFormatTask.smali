.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorIgfsFormatTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$1;,
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/String;",
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
    .line 29
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask;->job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$VisorIgfsFormatJob;-><init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsFormatTask$1;)V

    return-object v0
.end method
