.class public Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;
.super Ljava/lang/Object;
.source "VisorIgfsProfilerUniformityCounters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private blockSize:J

.field private final counters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    return-void
.end method

.method private calcBlockSize(J)J
    .locals 5
    .param p1, "fileSize"    # J

    .prologue
    .line 54
    const-wide/16 v0, 0x1000

    const-wide/16 v2, 0x64

    div-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private capacity(I)V
    .locals 2
    .param p1, "minCap"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 126
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method private compact(J)V
    .locals 13
    .param p1, "newFileSize"    # J

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->calcBlockSize(J)J

    move-result-wide v4

    .line 82
    .local v4, "newBlockSize":J
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    iput-wide v4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    .line 115
    :cond_0
    :goto_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    .line 116
    return-void

    .line 85
    :cond_1
    const-wide/16 v8, 0x2

    iget-wide v10, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    mul-long/2addr v8, v10

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 86
    iget-wide v8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    div-long v8, v4, v8

    long-to-int v6, v8

    .line 88
    .local v6, "ratio":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "compacted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 91
    .local v7, "sum":I
    const/4 v0, 0x0

    .line 93
    .local v0, "cnt":I
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 94
    .local v2, "counter":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 97
    if-lt v0, v6, :cond_2

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    .end local v2    # "counter":Ljava/lang/Integer;
    :cond_3
    if-lez v7, :cond_4

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    iput-wide v4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    goto :goto_0
.end method


# virtual methods
.method public aggregate(Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;)V
    .locals 6
    .param p1, "other"    # Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;

    .prologue
    .line 152
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 153
    iget-wide v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->compact(J)V

    .line 157
    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, "cnt":I
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 160
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->capacity(I)V

    .line 162
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 163
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 155
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    invoke-direct {p1, v2, v3}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->compact(J)V

    goto :goto_0

    .line 164
    .restart local v0    # "cnt":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public calc()D
    .locals 18

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 173
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 198
    :goto_0
    return-wide v12

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_1

    const/4 v11, 0x1

    :goto_1
    int-to-long v14, v11

    add-long/2addr v12, v14

    long-to-int v2, v12

    .line 177
    .local v2, "cap":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->capacity(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 181
    .local v10, "sz":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->sumInt(Ljava/lang/Iterable;)I

    move-result v5

    .line 183
    .local v5, "n":I
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    int-to-double v14, v10

    div-double v6, v12, v14

    .line 190
    .local v6, "mean":D
    const-wide/16 v8, 0x0

    .line 192
    .local v8, "sigma":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 193
    .local v3, "counter":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v12

    int-to-double v14, v5

    div-double/2addr v12, v14

    sub-double/2addr v12, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v8, v12

    goto :goto_2

    .line 175
    .end local v2    # "cap":I
    .end local v3    # "counter":Ljava/lang/Integer;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "n":I
    .end local v6    # "mean":D
    .end local v8    # "sigma":D
    .end local v10    # "sz":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 195
    .restart local v2    # "cap":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "n":I
    .restart local v6    # "mean":D
    .restart local v8    # "sigma":D
    .restart local v10    # "sz":I
    :cond_2
    int-to-double v12, v10

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 198
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v8

    goto :goto_0
.end method

.method public increment(JJ)V
    .locals 9
    .param p1, "pos"    # J
    .param p3, "len"    # J

    .prologue
    .line 137
    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 138
    .local v0, "blockFrom":I
    add-long v4, p1, p3

    iget-wide v6, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    div-long/2addr v4, v6

    long-to-int v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 140
    .local v1, "blockTo":I
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->capacity(I)V

    .line 142
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 143
    iget-object v4, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public invalidate(J)V
    .locals 3
    .param p1, "newFileSize"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 64
    iput-wide p1, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->counters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->calcBlockSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->blockSize:J

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->fileSize:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/igfs/VisorIgfsProfilerUniformityCounters;->compact(J)V

    goto :goto_0
.end method
