.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorIgfsProfilerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;,
        Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final PARSED_LINE_BY_TS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;->PARSED_LINE_BY_TS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;->PARSED_LINE_BY_TS_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;->job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;
    .locals 3
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;-><init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;)V

    return-object v0
.end method
