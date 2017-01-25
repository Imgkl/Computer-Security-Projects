.class public Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
.super Ljava/lang/Object;
.source "IgfsLocalMetrics.java"


# instance fields
.field private volatile blocksRead:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/jsr166/LongAdder8;",
            "Lorg/jsr166/LongAdder8;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blocksWritten:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/jsr166/LongAdder8;",
            "Lorg/jsr166/LongAdder8;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bytesRead:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/jsr166/LongAdder8;",
            "Lorg/jsr166/LongAdder8;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bytesWritten:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/jsr166/LongAdder8;",
            "Lorg/jsr166/LongAdder8;",
            ">;"
        }
    .end annotation
.end field

.field private final filesOpenedForRead:Lorg/jsr166/LongAdder8;

.field private final filesOpenedForWrite:Lorg/jsr166/LongAdder8;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForRead:Lorg/jsr166/LongAdder8;

    .line 44
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForWrite:Lorg/jsr166/LongAdder8;

    .line 50
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->reset()V

    .line 51
    return-void
.end method


# virtual methods
.method addReadBlocks(II)V
    .locals 4
    .param p1, "total"    # I
    .param p2, "secondary"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 130
    .local v0, "blocksRead0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/jsr166/LongAdder8;Lorg/jsr166/LongAdder8;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 131
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 132
    return-void
.end method

.method addReadBytesTime(JJ)V
    .locals 3
    .param p1, "readBytes"    # J
    .param p3, "readTime"    # J

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 76
    .local v0, "bytesRead0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/jsr166/LongAdder8;Lorg/jsr166/LongAdder8;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    invoke-virtual {v1, p1, p2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 77
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    invoke-virtual {v1, p3, p4}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 78
    return-void
.end method

.method addWriteBlocks(II)V
    .locals 4
    .param p1, "total"    # I
    .param p2, "secondary"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 157
    .local v0, "blocksWritten0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/jsr166/LongAdder8;Lorg/jsr166/LongAdder8;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 158
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 159
    return-void
.end method

.method addWrittenBytesTime(JJ)V
    .locals 3
    .param p1, "writtenBytes"    # J
    .param p3, "writeTime"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 103
    .local v0, "bytesWritten0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/jsr166/LongAdder8;Lorg/jsr166/LongAdder8;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    invoke-virtual {v1, p1, p2}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 104
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/LongAdder8;

    invoke-virtual {v1, p3, p4}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 105
    return-void
.end method

.method decrementFilesOpenedForRead()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForRead:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 173
    return-void
.end method

.method decrementFilesOpenedForWrite()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForWrite:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 194
    return-void
.end method

.method filesOpenedForRead()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForRead:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method filesOpenedForWrite()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForWrite:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method incrementFilesOpenedForRead()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForRead:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 166
    return-void
.end method

.method incrementFilesOpenedForWrite()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->filesOpenedForWrite:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 187
    return-void
.end method

.method readBlocks()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method readBlocksSecondary()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method readBytes()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method readBytesTime()J
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 208
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 209
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesRead:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 210
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 211
    return-void
.end method

.method writeBlocks()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method writeBlocksSecondary()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->blocksWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method writeBytes()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method writeBytesTime()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->bytesWritten:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
