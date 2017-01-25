.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
.super Ljava/lang/Object;
.source "VisorIgfsProfilerEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ENTRY_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final bytesRead:J

.field private final bytesWritten:J

.field private final counters:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

.field private final mode:Lorg/apache/ignite/igfs/IgfsMode;

.field private final path:Ljava/lang/String;

.field private final readSpeed:J

.field private final readTime:J

.field private final size:J

.field private final ts:J

.field private uniformity:D

.field private final userReadTime:J

.field private final userWriteTime:J

.field private final writeSpeed:J

.field private final writeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->$assertionsDisabled:Z

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ENTRY_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/apache/ignite/igfs/IgfsMode;JJJJJJJLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ts"    # J
    .param p4, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p5, "size"    # J
    .param p7, "bytesRead"    # J
    .param p9, "readTime"    # J
    .param p11, "userReadTime"    # J
    .param p13, "bytesWritten"    # J
    .param p15, "writeTime"    # J
    .param p17, "userWriteTime"    # J
    .param p19, "counters"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->uniformity:D

    .line 97
    sget-boolean v2, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p19, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->path:Ljava/lang/String;

    .line 100
    iput-wide p2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ts:J

    .line 101
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 102
    iput-wide p5, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->size:J

    .line 103
    iput-wide p7, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesRead:J

    .line 104
    iput-wide p9, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->readTime:J

    .line 105
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userReadTime:J

    .line 106
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesWritten:J

    .line 107
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->writeTime:J

    .line 108
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userWriteTime:J

    .line 109
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->counters:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    .line 111
    invoke-static {p7, p8, p9, p10}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->speed(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->readSpeed:J

    .line 112
    invoke-static/range {p13 .. p16}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->speed(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->writeSpeed:J

    .line 113
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .prologue
    .line 29
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ts:J

    return-wide v0
.end method

.method private static speed(JJ)J
    .locals 8
    .param p0, "bytes"    # J
    .param p2, "time"    # J

    .prologue
    .line 123
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_0

    .line 124
    long-to-double v4, p0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    mul-double v0, v4, v6

    .line 125
    .local v0, "bytesScaled":D
    long-to-double v4, p2

    const-wide v6, 0x40c3880000000000L    # 10000.0

    div-double v2, v4, v6

    .line 127
    .local v2, "timeScaled":D
    div-double v4, v0, v2

    double-to-long v4, v4

    .line 130
    .end local v0    # "bytesScaled":D
    .end local v2    # "timeScaled":D
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesRead:J

    return-wide v0
.end method

.method public bytesWritten()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->bytesWritten:J

    return-wide v0
.end method

.method public counters()Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->counters:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    return-object v0
.end method

.method public mode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public readSpeed()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->readSpeed:J

    return-wide v0
.end method

.method public readTime()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->readTime:J

    return-wide v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->size:J

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->ts:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniformity()D
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->uniformity:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->counters:Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->calc()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->uniformity:D

    .line 210
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->uniformity:D

    return-wide v0
.end method

.method public userReadTime()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userReadTime:J

    return-wide v0
.end method

.method public userWriteTime()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->userWriteTime:J

    return-wide v0
.end method

.method public writeSpeed()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->writeSpeed:J

    return-wide v0
.end method

.method public writeTime()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->writeTime:J

    return-wide v0
.end method
