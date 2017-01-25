.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
.super Ljava/lang/Object;
.source "VisorIgfsProfilerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsProfilerParsedLine"
.end annotation


# instance fields
.field private final dataLen:J

.field private final entryType:I

.field private final mode:Lorg/apache/ignite/igfs/IgfsMode;

.field private final overwrite:Z

.field private final path:Ljava/lang/String;

.field private final pos:J

.field private final streamId:J

.field private final sysTime:J

.field private final totalBytes:J

.field private final ts:J

.field private final userTime:J


# direct methods
.method private constructor <init>(JILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;JJZJJJJ)V
    .locals 3
    .param p1, "ts"    # J
    .param p3, "entryType"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p6, "streamId"    # J
    .param p8, "dataLen"    # J
    .param p10, "overwrite"    # Z
    .param p11, "pos"    # J
    .param p13, "userTime"    # J
    .param p15, "sysTime"    # J
    .param p17, "totalBytes"    # J

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J

    .line 97
    iput p3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->entryType:I

    .line 98
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->path:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 100
    iput-wide p6, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->streamId:J

    .line 101
    iput-wide p8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->dataLen:J

    .line 102
    iput-boolean p10, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->overwrite:Z

    .line 103
    iput-wide p11, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->pos:J

    .line 104
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->userTime:J

    .line 105
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->sysTime:J

    .line 106
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J

    .line 107
    return-void
.end method

.method synthetic constructor <init>(JILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;JJZJJJJLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # Z
    .param p11, "x7"    # J
    .param p13, "x8"    # J
    .param p15, "x9"    # J
    .param p17, "x10"    # J
    .param p19, "x11"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p18}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;-><init>(JILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;JJZJJJJ)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J

    return-wide v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->userTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->pos:J

    return-wide v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->streamId:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->entryType:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->dataLen:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->overwrite:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->sysTime:J

    return-wide v0
.end method
