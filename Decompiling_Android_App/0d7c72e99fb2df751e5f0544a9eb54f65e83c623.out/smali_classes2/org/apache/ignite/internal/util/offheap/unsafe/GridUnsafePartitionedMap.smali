.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;
.super Ljava/lang/Object;
.source "GridUnsafePartitionedMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_SEGMENT_CONCURRENCY:I = 0x4


# instance fields
.field private final concurrency:I

.field private evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

.field private evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

.field private final load:F

.field private final lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

.field private final mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

.field private final partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

.field private final parts:I

.field private final totalCnt:Lorg/jsr166/LongAdder8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V
    .locals 18
    .param p1, "parts"    # I
    .param p2, "concurrency"    # I
    .param p3, "load"    # F
    .param p4, "initCap"    # J
    .param p6, "totalMem"    # J
    .param p8, "lruStripes"    # S
    .param p9, "evictLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v2, Lorg/jsr166/LongAdder8;

    invoke-direct {v2}, Lorg/jsr166/LongAdder8;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->totalCnt:Lorg/jsr166/LongAdder8;

    .line 77
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->parts:I

    .line 78
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->concurrency:I

    .line 79
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->load:F

    .line 82
    move/from16 v0, p1

    new-array v2, v0, [Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .line 84
    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-wide/from16 v0, p6

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 86
    const-wide/16 v4, 0x0

    cmp-long v2, p6, v4

    if-lez v2, :cond_0

    .line 87
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .line 89
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, p6, v4

    if-lez v2, :cond_2

    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move/from16 v0, p8

    invoke-direct {v2, v0, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;-><init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    .line 91
    move/from16 v0, p1

    int-to-long v4, v0

    div-long v14, p4, v4

    .line 92
    .local v14, "cnt":J
    move/from16 v0, p1

    int-to-long v4, v0

    rem-long v4, p4, v4

    long-to-int v13, v4

    .line 96
    .local v13, "mod":I
    div-int p2, p2, p1

    .line 98
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ge v0, v2, :cond_1

    .line 99
    const/16 p2, 0x4

    .line 101
    :cond_1
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_4

    .line 102
    add-int/lit8 v13, v13, -0x1

    .line 104
    if-ltz v13, :cond_3

    const-wide/16 v4, 0x1

    add-long v6, v14, v4

    .line 106
    .local v6, "init":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v16, v0

    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->totalCnt:Lorg/jsr166/LongAdder8;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    new-instance v12, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$1;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)V

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IIFJLorg/jsr166/LongAdder8;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;)V

    aput-object v2, v16, v3

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v3    # "p":I
    .end local v6    # "init":J
    .end local v13    # "mod":I
    .end local v14    # "cnt":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v3    # "p":I
    .restart local v13    # "mod":I
    .restart local v14    # "cnt":J
    :cond_3
    move-wide v6, v14

    .line 104
    goto :goto_2

    .line 136
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    .prologue
    .line 34
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->parts:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    return-object v0
.end method

.method private mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 158
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->parts:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public allocatedSize()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public concurrency()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->concurrency:I

    return v0
.end method

.method public contains(II[B)Z
    .locals 1
    .param p1, "part"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->contains(I[B)Z

    move-result v0

    return v0
.end method

.method public destruct()V
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 272
    .local v3, "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->destruct()V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v3    # "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->destruct()V

    .line 276
    :cond_1
    return-void
.end method

.method public enableEviction(II[B)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->enableEviction(I[B)V

    goto :goto_0
.end method

.method public eventListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)Z
    .locals 5
    .param p1, "evtLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .prologue
    .line 243
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    if-eqz v4, :cond_0

    .line 244
    const/4 v4, 0x0

    .line 253
    :goto_0
    return v4

    .line 246
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .line 248
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 249
    .local v3, "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->eventListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    .end local v3    # "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->listen(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)V

    .line 253
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public evictListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Z
    .locals 5
    .param p1, "evictLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .prologue
    .line 258
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    if-eqz v4, :cond_0

    .line 259
    const/4 v4, 0x0

    .line 266
    :goto_0
    return v4

    .line 261
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->partMap:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 264
    .local v3, "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Z

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    .end local v3    # "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public freeSize()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->freeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public get(II[B)[B
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->get(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public insert(II[B[B)V
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B
    .param p4, "valBytes"    # [B

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->insert(I[B[B)V

    .line 204
    return-void
.end method

.method public iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$2;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;)V

    return-object v0
.end method

.method public iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/typedef/CX2",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "c":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 343
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap$3;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;Lorg/apache/ignite/internal/util/typedef/CX2;)V

    return-object v0
.end method

.method public loadFactor()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->load:F

    return v0
.end method

.method public lruMemorySize()J
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->memorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public lruSize()J
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public lruStripes()S
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->concurrency()S

    move-result v0

    return v0
.end method

.method public memorySize()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->totalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->parts:I

    return v0
.end method

.method public put(II[B[B)Z
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B
    .param p4, "valBytes"    # [B

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->put(I[B[B)Z

    move-result v0

    return v0
.end method

.method public remove(II[B)[B
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->remove(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public removex(II[B)Z
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->removex(I[B)Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->totalCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public size(Ljava/util/Set;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 215
    .local v0, "cnt":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 216
    .local v2, "part":Ljava/lang/Integer;
    int-to-long v4, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->size()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0

    .line 218
    .end local v2    # "part":Ljava/lang/Integer;
    :cond_0
    int-to-long v4, v0

    return-wide v4
.end method

.method public systemAllocatedSize()J
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->systemAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public valuePointer(II[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p1, "p"    # I
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;->mapFor(I)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;->valuePointer(I[B)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method
