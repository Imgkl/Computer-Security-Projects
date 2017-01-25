.class Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorIgfsProfilerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorIgfsProfilerJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_COL_DATA_LEN:I = 0x8

.field private static final LOG_COL_ENTRY_TYPE:I = 0x3

.field private static final LOG_COL_IGFS_MODE:I = 0x5

.field private static final LOG_COL_OVERWRITE:I = 0xa

.field private static final LOG_COL_PATH:I = 0x4

.field private static final LOG_COL_POS:I = 0xd

.field private static final LOG_COL_STREAM_ID:I = 0x6

.field private static final LOG_COL_SYSTEM_TIME:I = 0x12

.field private static final LOG_COL_THREAD_ID:I = 0x1

.field private static final LOG_COL_TIMESTAMP:I = 0x0

.field private static final LOG_COL_TOTAL_BYTES:I = 0x13

.field private static final LOG_COL_USER_TIME:I = 0x11

.field private static final LOG_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->LOG_TYPES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private aggregateParsedLines(Ljava/util/List;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    new-instance v26, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    invoke-direct/range {v26 .. v26}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;-><init>()V

    .line 315
    .local v26, "counters":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;
    invoke-static {}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask;->access$200()Ljava/util/Comparator;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 317
    const-string v8, ""

    .line 318
    .local v8, "path":Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 319
    .local v9, "ts":J
    const-wide/16 v12, 0x0

    .line 320
    .local v12, "size":J
    const-wide/16 v14, 0x0

    .line 321
    .local v14, "bytesRead":J
    const-wide/16 v16, 0x0

    .line 322
    .local v16, "readTime":J
    const-wide/16 v18, 0x0

    .line 323
    .local v18, "userReadTime":J
    const-wide/16 v20, 0x0

    .line 324
    .local v20, "bytesWritten":J
    const-wide/16 v22, 0x0

    .line 325
    .local v22, "writeTime":J
    const-wide/16 v24, 0x0

    .line 326
    .local v24, "userWriteTime":J
    const/4 v11, 0x0

    .line 328
    .local v11, "mode":Lorg/apache/ignite/igfs/IgfsMode;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .line 329
    .local v27, "line":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->path:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$300(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 330
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->path:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$300(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Ljava/lang/String;

    move-result-object v8

    .line 332
    :cond_1
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->ts:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v9

    .line 335
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->mode:Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$400(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 336
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->mode:Lorg/apache/ignite/igfs/IgfsMode;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$400(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v11

    .line 338
    :cond_2
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->entryType:I
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$500(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 378
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unexpected IGFS profiler log entry type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->entryType:I
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$500(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 340
    :pswitch_1
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->dataLen:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$600(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v12

    .line 342
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->invalidate(J)V

    goto :goto_0

    .line 346
    :pswitch_2
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->overwrite:Z
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$700(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 347
    const-wide/16 v12, 0x0

    .line 349
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->invalidate(J)V

    goto :goto_0

    .line 354
    :pswitch_3
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v14, v14, v28

    .line 355
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->sysTime:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$900(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v16, v16, v28

    .line 356
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->userTime:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v18, v18, v28

    .line 358
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->pos:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1100(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->increment(JJ)V

    goto/16 :goto_0

    .line 363
    :pswitch_4
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v12, v12, v28

    .line 364
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v20, v20, v28

    .line 365
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->sysTime:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$900(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v22, v22, v28

    .line 366
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->userTime:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1000(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    add-long v24, v24, v28

    .line 368
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->invalidate(J)V

    goto/16 :goto_0

    .line 373
    :pswitch_5
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->pos:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1100(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v28

    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->totalBytes:J
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$800(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->increment(JJ)V

    goto/16 :goto_0

    .line 383
    .end local v27    # "line":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    return-object v7

    :cond_4
    new-instance v7, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    invoke-direct/range {v7 .. v26}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;-><init>(Ljava/lang/String;JLorg/apache/ignite/igfs/IgfsMode;JJJJJJJLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;)V

    goto :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parse(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/Collection;
    .locals 12
    .param p1, "logDir"    # Ljava/nio/file/Path;
    .param p2, "igfsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0x200

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    .local v5, "parsedFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .local v0, "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    const/4 v8, 0x0

    .line 489
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "glob:igfs-log-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-*.csv"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v3

    .line 491
    .local v3, "matcher":Ljava/nio/file/PathMatcher;
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 492
    .local v4, "p":Ljava/nio/file/Path;
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 494
    :try_start_1
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseFile(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v7

    goto :goto_0

    .line 499
    :catch_1
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v7, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v7}, Lorg/apache/ignite/internal/IgniteEx;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse IGFS profiler log file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9, v1}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 488
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "matcher":Ljava/nio/file/PathMatcher;
    .end local v4    # "p":Ljava/nio/file/Path;
    :catch_2
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v8, :cond_5

    :try_start_4
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_2
    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "matcher":Ljava/nio/file/PathMatcher;
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v8, :cond_4

    :try_start_5
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 506
    :cond_3
    :goto_3
    return-object v5

    .line 504
    :catch_3
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_3

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "matcher":Ljava/nio/file/PathMatcher;
    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method private parseBoolean([Ljava/lang/String;I)Z
    .locals 2
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "ix"    # I

    .prologue
    .line 200
    array-length v0, p1

    if-ge p2, v0, :cond_0

    const-string v0, "1"

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseFile(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 21
    .param p1, "p"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x200

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v14, "parsedLines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    const-string v17, "UTF-8"

    invoke-static/range {v17 .. v17}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v2

    .local v2, "br":Ljava/io/BufferedReader;
    const/16 v18, 0x0

    .line 407
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 411
    const-string v17, "Timestamp;ThreadID;PID;Type;Path;Mode;StreamId;BufSize;DataLen;Append;Overwrite;Replication;BlockSize;Position;ReadLen;SkipCnt;ReadLimit;UserTime;SystemTime;TotalBytes;DestPath;Recursive;List"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 412
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 414
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 416
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLine(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    move-result-object v12

    .line 418
    .local v12, "ln":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    if-eqz v12, :cond_1

    .line 419
    invoke-interface {v14, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    .end local v12    # "ln":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    goto :goto_0

    .line 428
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v18, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 431
    :cond_3
    :goto_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v4, "byStreamId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;>;"
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "line":Ljava/lang/String;
    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    .line 434
    .local v10, "line":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->streamId:J
    invoke-static {v10}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1200(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 436
    .local v8, "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    if-nez v8, :cond_4

    .line 437
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .restart local v8    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    # getter for: Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->streamId:J
    invoke-static {v10}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;->access$1200(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 428
    .end local v4    # "byStreamId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;>;"
    .end local v8    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .local v10, "line":Ljava/lang/String;
    :catch_0
    move-exception v16

    .local v16, "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 406
    .end local v10    # "line":Ljava/lang/String;
    :catch_1
    move-exception v17

    :try_start_4
    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 428
    :catchall_0
    move-exception v18

    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    :goto_4
    if-eqz v2, :cond_6

    if-eqz v18, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_5
    throw v17

    :catch_2
    move-exception v16

    .restart local v16    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v16    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_5

    .line 446
    .restart local v4    # "byStreamId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 448
    .local v5, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 449
    .local v11, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->aggregateParsedLines(Ljava/util/List;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    move-result-object v6

    .line 451
    .local v6, "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    if-eqz v6, :cond_9

    .line 452
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 456
    .end local v6    # "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    .end local v11    # "lines":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;"
    :cond_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v3, "byPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    .line 459
    .restart local v6    # "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->path()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 461
    .local v7, "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    if-nez v7, :cond_b

    .line 462
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .restart local v7    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-virtual {v6}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;->path()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_b
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 471
    .end local v6    # "entry":Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;
    .end local v7    # "grp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    :cond_c
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .local v15, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 474
    .local v13, "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    invoke-static {v13}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfiler;->aggregateIgfsProfilerEntries(Ljava/util/List;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 476
    .end local v13    # "lst":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    :cond_d
    return-object v15

    .line 428
    .end local v3    # "byPath":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;>;"
    .end local v4    # "byStreamId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;>;>;"
    .end local v5    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;>;"
    :catchall_1
    move-exception v17

    goto/16 :goto_4

    .line 421
    .restart local v10    # "line":Ljava/lang/String;
    :catch_3
    move-exception v17

    goto/16 :goto_1
.end method

.method private parseIgfsMode([Ljava/lang/String;I)Lorg/apache/ignite/igfs/IgfsMode;
    .locals 3
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "ix"    # I

    .prologue
    const/4 v1, 0x0

    .line 266
    array-length v2, p1

    if-gt v2, p2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-object v1

    .line 269
    :cond_1
    aget-object v0, p1, p2

    .line 271
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/igfs/IgfsMode;->valueOf(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v1

    goto :goto_0
.end method

.method private parseInt([Ljava/lang/String;II)I
    .locals 2
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "ix"    # I
    .param p3, "dflt"    # I

    .prologue
    .line 213
    array-length v1, p1

    if-gt v1, p2, :cond_1

    .line 218
    .end local p3    # "dflt":I
    :cond_0
    :goto_0
    return p3

    .line 216
    .restart local p3    # "dflt":I
    :cond_1
    aget-object v0, p1, p2

    .line 218
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_0
.end method

.method private parseLine(Ljava/lang/String;)Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;
    .locals 26
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v5, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "ss":[Ljava/lang/String;
    const/4 v5, 0x6

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v11

    .line 286
    .local v11, "streamId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v11, v6

    if-ltz v5, :cond_0

    .line 287
    const/4 v5, 0x3

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseInt([Ljava/lang/String;II)I

    move-result v8

    .line 290
    .local v8, "entryType":I
    sget-object v5, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->LOG_TYPES:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    new-instance v5, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v14, v15}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v6

    const/4 v9, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseString([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseIgfsMode([Ljava/lang/String;I)Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v10

    const/16 v13, 0x8

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14, v15}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v13

    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseBoolean([Ljava/lang/String;I)Z

    move-result v15

    const/16 v16, 0xd

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v16

    const/16 v18, 0x11

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v18

    const/16 v20, 0x12

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v20

    const/16 v22, 0x13

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parseLong([Ljava/lang/String;IJ)J

    move-result-wide v22

    const/16 v24, 0x0

    invoke-direct/range {v5 .. v24}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerParsedLine;-><init>(JILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;JJZJJJJLorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$1;)V

    .line 306
    .end local v8    # "entryType":I
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseLong([Ljava/lang/String;IJ)J
    .locals 3
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "ix"    # I
    .param p3, "dflt"    # J

    .prologue
    .line 232
    array-length v1, p1

    if-gt v1, p2, :cond_1

    .line 237
    .end local p3    # "dflt":J
    :cond_0
    :goto_0
    return-wide p3

    .line 235
    .restart local p3    # "dflt":J
    :cond_1
    aget-object v0, p1, p2

    .line 237
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    goto :goto_0
.end method

.method private parseString([Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "ix"    # I

    .prologue
    .line 249
    array-length v1, p1

    if-gt v1, p2, :cond_1

    .line 250
    const-string v0, ""

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    aget-object v0, p1, p2

    .line 254
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 125
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->run(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Ljava/util/Collection;
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/IgniteEx;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->resolveIgfsProfilerLogsDir(Lorg/apache/ignite/IgniteFileSystem;)Ljava/nio/file/Path;

    move-result-object v1

    .line 179
    .local v1, "logsDir":Ljava/nio/file/Path;
    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0, v1, p1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;->parse(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 182
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 184
    .end local v1    # "logsDir":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Lorg/apache/ignite/IgniteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse profiler logs for IGFS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2

    .line 184
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-class v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerTask$VisorIgfsProfilerJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
