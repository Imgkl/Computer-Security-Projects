.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentHeader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:I

.field private volatile next:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

.field private volatile prev:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

.field private final reads:Lorg/jsr166/LongAdder8;

.field private volatile size:I

.field private final tbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1314
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(IILorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "id"    # I
    .param p3, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    .line 1334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->cleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1346
    new-array v0, p1, [Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->tbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 1348
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1350
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    .line 1351
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->prev:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1352
    return-void
.end method

.method synthetic constructor <init>(IILorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 1314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;-><init>(IILorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V

    return-void
.end method


# virtual methods
.method checkClean()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 1375
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1376
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    invoke-virtual {v8}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v4

    .line 1378
    .local v4, "leftReads":J
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    cmp-long v8, v4, v10

    if-gez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1381
    :cond_0
    cmp-long v8, v4, v10

    if-nez v8, :cond_2

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->cleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1382
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->tbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v0, v3

    .line 1383
    .local v1, "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v1, :cond_1

    .line 1384
    move-object v2, v1

    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :goto_1
    if-eqz v2, :cond_1

    .line 1385
    iget v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(I)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v7

    .line 1387
    .local v7, "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    iget v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->next(ILorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)V

    .line 1389
    move-object v2, v7

    .line 1390
    goto :goto_1

    .line 1382
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v7    # "next":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1395
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v1    # "bin":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v3    # "i$":I
    .end local v4    # "leftReads":J
    .end local v6    # "len$":I
    :cond_2
    return-void
.end method

.method decrementSize()I
    .locals 1

    .prologue
    .line 1479
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size:I

    return v0
.end method

.method even()Z
    .locals 1

    .prologue
    .line 1422
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasReads()Z
    .locals 4

    .prologue
    .line 1401
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method id()I
    .locals 1

    .prologue
    .line 1415
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    return v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->tbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    array-length v0, v0

    return v0
.end method

.method next()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    return-object v0
.end method

.method next(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    .locals 0
    .param p1, "next"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .prologue
    .line 1458
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->next:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1459
    return-void
.end method

.method odd()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1430
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->id:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onReadEnd()V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1367
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->checkClean()V

    .line 1368
    return-void
.end method

.method onReadStart()V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1359
    return-void
.end method

.method previous()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->prev:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    return-object v0
.end method

.method previous(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;)V
    .locals 0
    .param p1, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .prologue
    .line 1472
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->prev:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;

    .line 1473
    return-void
.end method

.method reads()J
    .locals 2

    .prologue
    .line 1408
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->reads:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size:I

    return v0
.end method

.method size(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1493
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->size:I

    .line 1494
    return-void
.end method

.method table()[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$SegmentHeader;->tbl:[Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    return-object v0
.end method
