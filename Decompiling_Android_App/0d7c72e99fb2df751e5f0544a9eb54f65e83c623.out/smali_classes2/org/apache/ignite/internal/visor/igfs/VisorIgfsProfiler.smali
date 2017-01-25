.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfiler;
.super Ljava/lang/Object;
.source "VisorIgfsProfiler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final UNIFORMITY_BLOCKS:I = 0x64

.field public static final UNIFORMITY_DFLT_BLOCK_SIZE:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfiler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfiler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aggregateIgfsProfilerEntries(Ljava/util/List;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfiler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static/range {p0 .. p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 44
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v3, v0, :cond_1

    .line 45
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .line 83
    :goto_0
    return-object v3

    .line 47
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->path()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "path":Ljava/lang/String;
    sget-object v3, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ENTRY_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .local v5, "ts":J
    const-wide/16 v8, 0x0

    .line 53
    .local v8, "size":J
    const-wide/16 v10, 0x0

    .line 54
    .local v10, "bytesRead":J
    const-wide/16 v12, 0x0

    .line 55
    .local v12, "readTime":J
    const-wide/16 v14, 0x0

    .line 56
    .local v14, "userReadTime":J
    const-wide/16 v16, 0x0

    .line 57
    .local v16, "bytesWritten":J
    const-wide/16 v18, 0x0

    .line 58
    .local v18, "writeTime":J
    const-wide/16 v20, 0x0

    .line 59
    .local v20, "userWriteTime":J
    const/4 v7, 0x0

    .line 60
    .local v7, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    new-instance v22, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    invoke-direct/range {v22 .. v22}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;-><init>()V

    .line 62
    .local v22, "counters":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .line 64
    .local v2, "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->timestamp()J

    move-result-wide v5

    .line 67
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->size()J

    move-result-wide v8

    .line 70
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->mode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v7

    .line 73
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesRead()J

    move-result-wide v24

    add-long v10, v10, v24

    .line 74
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->readTime()J

    move-result-wide v24

    add-long v12, v12, v24

    .line 75
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userReadTime()J

    move-result-wide v24

    add-long v14, v14, v24

    .line 76
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesWritten()J

    move-result-wide v24

    add-long v16, v16, v24

    .line 77
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->writeTime()J

    move-result-wide v24

    add-long v18, v18, v24

    .line 78
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userWriteTime()J

    move-result-wide v24

    add-long v20, v20, v24

    .line 80
    invoke-virtual {v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->counters()Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->aggregate(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;)V

    goto :goto_1

    .line 83
    .end local v2    # "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    invoke-direct/range {v3 .. v22}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;-><init>(Ljava/lang/String;JLorg/apache/ignite/igfs/IgfsMode;JJJJJJJLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;)V

    goto :goto_0
.end method
