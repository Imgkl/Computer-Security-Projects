.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
.super Ljava/lang/Object;
.source "GridUnsafeMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
        "<TK;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTES:[B

.field private static final HEADER:I = 0x1c

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MAX_CONCURRENCY:I = 0x200

.field private static final MIN_SIZE:I = 0x10


# instance fields
.field private final concurrency:I

.field private evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

.field private evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

.field private final load:F

.field private final lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

.field private final lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

.field private final lruRelease:Z

.field private final mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

.field private final part:I

.field private final segmentMask:I

.field private final segmentShift:I

.field private final segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap",
            "<TK;>.Segment<TK;>;"
        }
    .end annotation
.end field

.field private final totalCnt:Lorg/jsr166/LongAdder8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->$assertionsDisabled:Z

    .line 60
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->EMPTY_BYTES:[B

    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public constructor <init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V
    .locals 5
    .param p1, "concurrency"    # I
    .param p2, "load"    # F
    .param p3, "initCap"    # J
    .param p5, "totalMem"    # J
    .param p7, "lruStripes"    # S
    .param p8, "evictLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->concurrency:I

    .line 118
    iput p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I

    .line 122
    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-direct {v2, p5, p6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;-><init>(J)V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 124
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_1

    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-direct {v2, p7, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;-><init>(SLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    :goto_0
    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruRelease:Z

    .line 128
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-eqz v2, :cond_0

    .line 129
    iput-object p8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .line 131
    :cond_0
    new-instance v2, Lorg/jsr166/LongAdder8;

    invoke-direct {v2}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "shift":I
    const/4 v1, 0x1

    .line 137
    .local v1, "size":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 140
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "shift":I
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    .restart local v0    # "shift":I
    .restart local v1    # "size":I
    :cond_2
    rsub-int/lit8 v2, v0, 0x20

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentShift:I

    .line 144
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentMask:I

    .line 146
    new-array v2, v1, [Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .line 148
    invoke-direct {p0, p3, p4, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->init(JI)V

    .line 150
    new-instance v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    .line 175
    return-void
.end method

.method constructor <init>(IIFJLorg/jsr166/LongAdder8;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;)V
    .locals 4
    .param p1, "part"    # I
    .param p2, "concurrency"    # I
    .param p3, "load"    # F
    .param p4, "initCap"    # J
    .param p6, "totalCnt"    # Lorg/jsr166/LongAdder8;
    .param p7, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .param p8, "lru"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    .param p9, "evictLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "lruPoller"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    const/16 v2, 0x200

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I

    .line 192
    if-le p2, v2, :cond_0

    move p2, v2

    .end local p2    # "concurrency":I
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->concurrency:I

    .line 193
    iput p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F

    .line 194
    iput-object p6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;

    .line 195
    iput-object p7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .line 196
    iput-object p8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    .line 197
    iput-object p10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    .line 199
    if-eqz p8, :cond_1

    .line 200
    iput-object p9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .line 202
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruRelease:Z

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "shift":I
    const/4 v1, 0x1

    .line 208
    .local v1, "size":I
    :goto_0
    iget v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->concurrency:I

    if-ge v1, v2, :cond_2

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 211
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_2
    rsub-int/lit8 v2, v0, 0x20

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentShift:I

    .line 215
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentMask:I

    .line 217
    new-array v2, v1, [Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .line 219
    invoke-direct {p0, p4, p5, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->init(JI)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    return-object v0
.end method

.method static synthetic access$1400()[B
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->EMPTY_BYTES:[B

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)F
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    return-object v0
.end method

.method private init(JI)V
    .locals 11
    .param p1, "initCap"    # J
    .param p3, "size"    # I

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    int-to-long v4, p3

    div-long v8, p1, v4

    .line 229
    .local v8, "c":J
    const-wide/16 v4, 0x10

    cmp-long v1, v8, v4

    if-gez v1, :cond_0

    .line 230
    const-wide/16 v8, 0x10

    .line 232
    :cond_0
    int-to-long v4, p3

    mul-long/2addr v4, v8

    cmp-long v1, v4, p1

    if-gez v1, :cond_1

    .line 233
    const-wide/16 v4, 0x1

    add-long/2addr v8, v4

    .line 235
    :cond_1
    const/4 v0, 0x1

    .line 237
    .local v0, "cap":I
    :goto_0
    int-to-long v4, v0

    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    .line 238
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p3, :cond_3

    .line 242
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    int-to-long v4, v0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;IJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;)V

    aput-object v1, v10, v3
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    :catch_0
    move-exception v7

    .line 245
    .local v7, "e":Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->destruct()V

    .line 247
    throw v7

    .line 250
    .end local v7    # "e":Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
    :cond_3
    return-void
.end method

.method private segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    .locals 3
    .param p1, "hash"    # I

    .prologue
    .line 532
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public allocatedSize()J
    .locals 2

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public concurrency()I
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->concurrency:I

    return v0
.end method

.method public contains(I[B)Z
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->contains(I[B)Z

    move-result v0

    return v0
.end method

.method public destruct()V
    .locals 5

    .prologue
    .line 368
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 369
    .local v3, "seg":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->destruct()V

    .line 368
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v3    # "seg":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruRelease:Z

    if-eqz v4, :cond_2

    .line 374
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->destruct()V

    .line 375
    :cond_2
    return-void
.end method

.method public enableEviction(I[B)V
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 306
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->enableEviction(I[B)V

    .line 309
    return-void
.end method

.method public eventListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)Z
    .locals 1
    .param p1, "evtLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 257
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->listen(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)V

    .line 261
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public evictListener(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Z
    .locals 1
    .param p1, "evictLsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .prologue
    .line 266
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    .line 269
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    .line 271
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public freeSize()J
    .locals 2

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->freeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method freeSpace(SJ)I
    .locals 2
    .param p1, "order"    # S
    .param p2, "qAddr"    # J

    .prologue
    .line 543
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    if-nez v1, :cond_0

    .line 544
    const/4 v1, 0x0

    .line 548
    :goto_0
    return v1

    .line 546
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->hash(SJ)I

    move-result v0

    .line 548
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->freeSpace(ISJ)I
    invoke-static {v1, v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;ISJ)I

    move-result v1

    goto :goto_0
.end method

.method public get(I[B)[B
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->get(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public insert(I[B[B)V
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .param p3, "valBytes"    # [B

    .prologue
    .line 328
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->insert(I[B[B)V

    .line 329
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
    .line 379
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$2;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)V

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
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    .local p1, "c":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$3;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;Lorg/apache/ignite/internal/util/typedef/CX2;)V

    return-object v0
.end method

.method public loadFactor()F
    .locals 1

    .prologue
    .line 281
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F

    return v0
.end method

.method public lruMemorySize()J
    .locals 2

    .prologue
    .line 514
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->memorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public lruSize()J
    .locals 2

    .prologue
    .line 523
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public lruStripes()S
    .locals 1

    .prologue
    .line 505
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->concurrency()S

    move-result v0

    return v0
.end method

.method public memorySize()J
    .locals 2

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->totalSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I

    return v0
.end method

.method public put(I[B[B)Z
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .param p3, "valBytes"    # [B

    .prologue
    .line 323
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->put(I[B[B)Z

    move-result v0

    return v0
.end method

.method public remove(I[B)[B
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->remove(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public removex(I[B)Z
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 318
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->removex(I[B)Z

    move-result v0

    return v0
.end method

.method public size()J
    .locals 6

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    const-wide/16 v2, 0x0

    .line 340
    .local v2, "size":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segs:[Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->count()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    return-wide v2
.end method

.method public systemAllocatedSize()J
    .locals 2

    .prologue
    .line 358
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->systemAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public totalSize()J
    .locals 2

    .prologue
    .line 333
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public valuePointer(I[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->segmentFor(I)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->valuePointer(I[B)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method
