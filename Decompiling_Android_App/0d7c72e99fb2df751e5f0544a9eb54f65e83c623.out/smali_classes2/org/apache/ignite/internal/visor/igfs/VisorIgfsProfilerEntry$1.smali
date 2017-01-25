.class final Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry$1;
.super Ljava/lang/Object;
.source "VisorIgfsProfilerEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
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
        "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry$1;->compare(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;)I
    .locals 4
    .param p1, "a"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    .param p2, "b"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .prologue
    .line 37
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ts:J
    invoke-static {p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;)J

    move-result-wide v0

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ts:J
    invoke-static {p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method
