.class final Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;
.super Ljava/lang/Object;
.source "VisorIgfsProfilerTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;->compare(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)I
    .locals 4
    .param p1, "a"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    .param p2, "b"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 116
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v0

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J
    invoke-static {p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v0

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J
    invoke-static {p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
