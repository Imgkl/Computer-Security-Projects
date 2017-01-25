.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
.super Ljava/lang/Object;
.source "GridUnsafeMemory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDR_SIZE:I

.field public static final BYTE_ARR_OFF:J

.field private static final FREE:B

.field private static final SAFE_RELEASE:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final allocated:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

.field private final sysAllocated:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final total:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    .line 38
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    .line 44
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->BYTE_ARR_OFF:J

    .line 47
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->ADDR_SIZE:I

    .line 50
    const-string v0, "IGNITE_OFFHEAP_SAFE_RELEASE"

    invoke-static {v0}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->SAFE_RELEASE:Z

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "total"    # J

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->sysAllocated:Ljava/util/concurrent/atomic/AtomicLong;

    .line 78
    return-void
.end method

.method private allocate0(JZZLjava/util/concurrent/atomic/AtomicLong;)J
    .locals 7
    .param p1, "size"    # J
    .param p3, "init"    # Z
    .param p4, "reserved"    # Z
    .param p5, "cnt"    # Ljava/util/concurrent/atomic/AtomicLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 170
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    :cond_0
    if-nez p4, :cond_1

    .line 173
    invoke-virtual {p5, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 176
    :cond_1
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1, p2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v2

    .line 178
    .local v2, "ptr":J
    if-eqz p3, :cond_2

    .line 179
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->fill(JJB)V

    .line 181
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    sget-object v4, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->ALLOCATE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    invoke-interface {v1, v4}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;->onEvent(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_3
    return-wide v2

    .line 186
    .end local v2    # "ptr":J
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ignore":Ljava/lang/OutOfMemoryError;
    if-nez p4, :cond_4

    .line 188
    neg-long v4, p1

    invoke-virtual {p5, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 190
    :cond_4
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->totalSize()J

    move-result-wide v4

    invoke-direct {v1, v4, v5, p1, p2}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;-><init>(JJ)V

    throw v1
.end method

.method public static compare(JJI)Z
    .locals 14
    .param p0, "ptr1"    # J
    .param p2, "ptr2"    # J
    .param p4, "size"    # I

    .prologue
    .line 475
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v11, p0, v12

    if-gtz v11, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, p0, p1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v11

    .line 476
    :cond_0
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v11, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v11, p2, v12

    if-gtz v11, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    move-wide/from16 v0, p2

    invoke-direct {v11, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v11

    .line 477
    :cond_1
    sget-boolean v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v11, :cond_2

    if-gtz p4, :cond_2

    new-instance v11, Ljava/lang/AssertionError;

    move/from16 v0, p4

    invoke-direct {v11, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v11

    .line 479
    :cond_2
    cmp-long v11, p0, p2

    if-nez v11, :cond_3

    .line 480
    const/4 v11, 0x1

    .line 508
    :goto_0
    return v11

    .line 482
    :cond_3
    div-int/lit8 v10, p4, 0x8

    .line 484
    .local v10, "words":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_5

    .line 485
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v6

    .line 486
    .local v6, "w1":J
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v8

    .line 488
    .local v8, "w2":J
    cmp-long v11, v6, v8

    if-eqz v11, :cond_4

    .line 489
    const/4 v11, 0x0

    goto :goto_0

    .line 491
    :cond_4
    const-wide/16 v12, 0x8

    add-long/2addr p0, v12

    .line 492
    const-wide/16 v12, 0x8

    add-long p2, p2, v12

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 495
    .end local v6    # "w1":J
    .end local v8    # "w2":J
    :cond_5
    rem-int/lit8 v5, p4, 0x8

    .line 497
    .local v5, "left":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    .line 498
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    .line 499
    .local v2, "b1":B
    sget-object v11, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    .line 501
    .local v3, "b2":B
    if-eq v2, v3, :cond_6

    .line 502
    const/4 v11, 0x0

    goto :goto_0

    .line 504
    :cond_6
    const-wide/16 v12, 0x1

    add-long/2addr p0, v12

    .line 505
    const-wide/16 v12, 0x1

    add-long p2, p2, v12

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 508
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :cond_7
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public static compare(J[B)Z
    .locals 20
    .param p0, "ptr"    # J
    .param p2, "bytes"    # [B

    .prologue
    .line 519
    sget v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->ADDR_SIZE:I

    .line 522
    .local v2, "addrSize":I
    int-to-long v14, v2

    rem-long v14, p0, v14

    long-to-int v9, v14

    .line 523
    .local v9, "off":I
    sub-int v3, v2, v9

    .line 525
    .local v3, "align":I
    move-object/from16 v0, p2

    array-length v8, v0

    .line 527
    .local v8, "len":I
    if-eq v3, v2, :cond_1

    .line 528
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    if-ge v6, v8, :cond_2

    .line 529
    sget-object v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v14

    aget-byte v15, p2, v6

    if-eq v14, v15, :cond_0

    .line 530
    const/4 v14, 0x0

    .line 602
    .end local v6    # "i":I
    :goto_1
    return v14

    .line 532
    .restart local v6    # "i":I
    :cond_0
    const-wide/16 v14, 0x1

    add-long p0, p0, v14

    .line 528
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 536
    .end local v6    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 538
    :cond_2
    if-gt v8, v3, :cond_3

    .line 539
    const/4 v14, 0x1

    goto :goto_1

    .line 541
    :cond_3
    sget-boolean v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v14, :cond_4

    int-to-long v14, v2

    rem-long v14, p0, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid alignment [ptr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p0

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", addrSize="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mod="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    int-to-long v0, v2

    move-wide/from16 v16, v0

    rem-long v16, p0, v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x5d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    .line 544
    :cond_4
    sub-int v14, v8, v3

    div-int v11, v14, v2

    .line 545
    .local v11, "words":I
    sub-int v14, v8, v3

    rem-int v7, v14, v2

    .line 547
    .local v7, "left":I
    packed-switch v2, :pswitch_data_0

    .line 570
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v11, :cond_7

    .line 571
    mul-int v14, v6, v2

    add-int v10, v14, v3

    .line 573
    .local v10, "step":I
    sget-object v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v12

    .line 575
    .local v12, "word":J
    const-wide/16 v4, 0x0

    .line 577
    .local v4, "comp":J
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x7

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x38

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 578
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x6

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 579
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x5

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 580
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x4

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x20

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 581
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x3

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 582
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x2

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 583
    const-wide/16 v14, 0xff

    add-int/lit8 v16, v10, 0x1

    aget-byte v16, p2, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    const/16 v16, 0x8

    shl-long v14, v14, v16

    or-long/2addr v4, v14

    .line 584
    const-wide/16 v14, 0xff

    aget-byte v16, p2, v10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    or-long/2addr v4, v14

    .line 586
    cmp-long v14, v12, v4

    if-eqz v14, :cond_6

    .line 587
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 549
    .end local v4    # "comp":J
    .end local v6    # "i":I
    .end local v10    # "step":I
    .end local v12    # "word":J
    :pswitch_0
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v11, :cond_7

    .line 550
    mul-int v14, v6, v2

    add-int v10, v14, v3

    .line 552
    .restart local v10    # "step":I
    sget-object v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v12

    .line 554
    .local v12, "word":I
    const/4 v4, 0x0

    .line 556
    .local v4, "comp":I
    int-to-long v14, v4

    const-wide/16 v16, 0xff

    add-int/lit8 v18, v10, 0x3

    aget-byte v18, p2, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    const/16 v18, 0x18

    shl-long v16, v16, v18

    or-long v14, v14, v16

    long-to-int v4, v14

    .line 557
    int-to-long v14, v4

    const-wide/16 v16, 0xff

    add-int/lit8 v18, v10, 0x2

    aget-byte v18, p2, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    const/16 v18, 0x10

    shl-long v16, v16, v18

    or-long v14, v14, v16

    long-to-int v4, v14

    .line 558
    int-to-long v14, v4

    const-wide/16 v16, 0xff

    add-int/lit8 v18, v10, 0x1

    aget-byte v18, p2, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    const/16 v18, 0x8

    shl-long v16, v16, v18

    or-long v14, v14, v16

    long-to-int v4, v14

    .line 559
    int-to-long v14, v4

    const-wide/16 v16, 0xff

    aget-byte v18, p2, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    or-long v14, v14, v16

    long-to-int v4, v14

    .line 561
    if-eq v12, v4, :cond_5

    .line 562
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 564
    :cond_5
    sget v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->ADDR_SIZE:I

    int-to-long v14, v14

    add-long p0, p0, v14

    .line 549
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 589
    .local v4, "comp":J
    .local v12, "word":J
    :cond_6
    sget v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->ADDR_SIZE:I

    int-to-long v14, v14

    add-long p0, p0, v14

    .line 570
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 595
    .end local v4    # "comp":J
    .end local v10    # "step":I
    .end local v12    # "word":J
    :cond_7
    if-eqz v7, :cond_9

    .line 597
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_9

    .line 598
    sget-object v14, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v16, v16, p0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v14

    add-int v15, v6, v3

    sget v16, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->ADDR_SIZE:I

    mul-int v16, v16, v11

    add-int v15, v15, v16

    aget-byte v15, p2, v15

    if-eq v14, v15, :cond_8

    .line 599
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 597
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 602
    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private release0(JJLjava/util/concurrent/atomic/AtomicLong;)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "size"    # J
    .param p5, "cnt"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 231
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 232
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->SAFE_RELEASE:Z

    if-eqz v0, :cond_0

    .line 233
    const/16 v6, -0x55

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->fill(JJB)V

    .line 235
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 237
    neg-long v0, p3

    invoke-virtual {p5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    sget-object v1, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->RELEASE:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;->onEvent(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;)V

    .line 242
    :cond_1
    return-void
.end method


# virtual methods
.method public allocate(J)J
    .locals 3
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(JZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public allocate(JZ)J
    .locals 3
    .param p1, "size"    # J
    .param p3, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(JZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public allocate(JZZ)J
    .locals 7
    .param p1, "size"    # J
    .param p3, "init"    # Z
    .param p4, "reserved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate0(JZZLjava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    return-wide v0
.end method

.method public allocateSystem(JZ)J
    .locals 7
    .param p1, "size"    # J
    .param p3, "init"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->sysAllocated:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate0(JZZLjava/util/concurrent/atomic/AtomicLong;)J

    move-result-wide v0

    return-wide v0
.end method

.method public allocatedSize()J
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public casInt(JII)Z
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "exp"    # I
    .param p4, "v"    # I

    .prologue
    .line 325
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public casLong(JJJ)Z
    .locals 9
    .param p1, "ptr"    # J
    .param p3, "exp"    # J
    .param p5, "v"    # J

    .prologue
    .line 283
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public copyMemory(JJJ)V
    .locals 9
    .param p1, "srcPtr"    # J
    .param p3, "destPtr"    # J
    .param p5, "len"    # J

    .prologue
    .line 668
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 669
    return-void
.end method

.method public fill(JJB)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "size"    # J
    .param p5, "b"    # B

    .prologue
    .line 200
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 201
    return-void
.end method

.method public freeSize()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 691
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 696
    :goto_0
    return-wide v2

    .line 694
    :cond_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 696
    .local v0, "diff":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .end local v0    # "diff":J
    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public get(J)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 7
    .param p1, "ptr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    sget-boolean v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 460
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v1

    .line 462
    .local v1, "size":I
    const-wide/16 v4, 0x4

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readByte(J)B

    move-result v2

    .line 463
    .local v2, "type":B
    const-wide/16 v4, 0x5

    add-long/2addr v4, p1

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v0

    .line 465
    .local v0, "bytes":[B
    new-instance v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public listen(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->lsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    .line 87
    return-void
.end method

.method public putOffHeap(J[BB)J
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "val"    # [B
    .param p4, "type"    # B

    .prologue
    const-wide/16 v4, 0x0

    .line 420
    array-length v1, p3

    .line 422
    .local v1, "size":I
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 424
    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 426
    .local v0, "allocated":I
    :goto_0
    if-eq v0, v1, :cond_2

    .line 427
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 428
    add-int/lit8 v2, v0, 0x5

    int-to-long v2, v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 430
    :cond_1
    add-int/lit8 v2, v1, 0x5

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(J)J

    move-result-wide p1

    .line 432
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 435
    :cond_2
    const-wide/16 v2, 0x4

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeByte(JB)V

    .line 436
    const-wide/16 v2, 0x5

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeBytes(J[B)V

    .line 438
    return-wide p1

    .line 424
    .end local v0    # "allocated":I
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    goto :goto_0
.end method

.method public readByte(J)B
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 381
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method public readByteVolatile(J)B
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 389
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getByteVolatile(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public readBytes(JI)[B
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "cnt"    # I

    .prologue
    .line 611
    new-array v0, p3, [B

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method public readBytes(J[B)[B
    .locals 11
    .param p1, "ptr"    # J
    .param p3, "arr"    # [B

    .prologue
    .line 620
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    sget-wide v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->BYTE_ARR_OFF:J

    array-length v0, p3

    int-to-long v8, v0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 622
    return-object p3
.end method

.method public readBytes(J[BII)[B
    .locals 13
    .param p1, "ptr"    # J
    .param p3, "arr"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    .line 633
    sget-object v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    sget-wide v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->BYTE_ARR_OFF:J

    move/from16 v0, p4

    int-to-long v8, v0

    add-long/2addr v8, v6

    move/from16 v0, p5

    int-to-long v10, v0

    move-wide v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 635
    return-object p3
.end method

.method public readDouble(J)D
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 349
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat(J)F
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 333
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public readInt(J)I
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 291
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public readIntVolatile(J)I
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 307
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public readLong(J)J
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 249
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongVolatile(J)J
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 265
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort(J)S
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 365
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method public release(JJ)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "size"    # J

    .prologue
    .line 210
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release0(JJLjava/util/concurrent/atomic/AtomicLong;)V

    .line 211
    return-void
.end method

.method public releaseSystem(JJ)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "size"    # J

    .prologue
    .line 220
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->sysAllocated:Ljava/util/concurrent/atomic/AtomicLong;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release0(JJLjava/util/concurrent/atomic/AtomicLong;)V

    .line 221
    return-void
.end method

.method public removeOffHeap(J)V
    .locals 3
    .param p1, "ptr"    # J

    .prologue
    .line 447
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 449
    :cond_0
    return-void
.end method

.method public reserve(J)Z
    .locals 11
    .param p1, "size"    # J

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 97
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 106
    :cond_0
    :goto_0
    return v4

    .line 102
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 104
    .local v2, "mem":J
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    .line 106
    .local v0, "max":J
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public systemAllocatedSize()J
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->sysAllocated:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalSize()J
    .locals 2

    .prologue
    .line 684
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->total:J

    return-wide v0
.end method

.method public unlimited()Z
    .locals 4

    .prologue
    .line 677
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->totalSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(JB)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # B

    .prologue
    .line 397
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 398
    return-void
.end method

.method public writeByteVolatile(JB)V
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "v"    # B

    .prologue
    .line 405
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lsun/misc/Unsafe;->putByteVolatile(Ljava/lang/Object;JB)V

    .line 406
    return-void
.end method

.method public writeBytes(J[B)V
    .locals 11
    .param p1, "ptr"    # J
    .param p3, "arr"    # [B

    .prologue
    .line 645
    sget-object v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->BYTE_ARR_OFF:J

    const/4 v5, 0x0

    array-length v0, p3

    int-to-long v8, v0

    move-object v2, p3

    move-wide v6, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 646
    return-void
.end method

.method public writeBytes(J[BII)V
    .locals 13
    .param p1, "ptr"    # J
    .param p3, "arr"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    .line 657
    sget-object v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->BYTE_ARR_OFF:J

    move/from16 v0, p4

    int-to-long v6, v0

    add-long v5, v4, v6

    const/4 v7, 0x0

    move/from16 v0, p5

    int-to-long v10, v0

    move-object/from16 v4, p3

    move-wide v8, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 658
    return-void
.end method

.method public writeDouble(JD)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # D

    .prologue
    .line 357
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 358
    return-void
.end method

.method public writeFloat(JF)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # F

    .prologue
    .line 341
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 342
    return-void
.end method

.method public writeInt(JI)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # I

    .prologue
    .line 299
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 300
    return-void
.end method

.method public writeIntVolatile(JI)V
    .locals 3
    .param p1, "ptr"    # J
    .param p3, "v"    # I

    .prologue
    .line 315
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 316
    return-void
.end method

.method public writeLong(JJ)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # J

    .prologue
    .line 257
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 258
    return-void
.end method

.method public writeLongVolatile(JJ)V
    .locals 7
    .param p1, "ptr"    # J
    .param p3, "v"    # J

    .prologue
    .line 273
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 274
    return-void
.end method

.method public writeShort(JS)V
    .locals 1
    .param p1, "ptr"    # J
    .param p3, "v"    # S

    .prologue
    .line 373
    sget-object v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 374
    return-void
.end method
