.class public Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;
.super Ljava/io/InputStream;
.source "GridUnsafeDataInput.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/io/GridDataInput;


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final CHECK_FREQ:Ljava/lang/Long;

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final byteArrOff:J

.field private static final charArrOff:J

.field private static final doubleArrOff:J

.field private static final floatArrOff:J

.field private static final intArrOff:J

.field private static final longArrOff:J

.field private static final shortArrOff:J


# instance fields
.field private buf:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private end:I

.field private in:Ljava/io/InputStream;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private inBuf:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private lastCheck:J

.field private max:I

.field private maxOff:I

.field private off:I

.field private pos:I

.field private final urfCBuf:[C
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final utfBuf:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    .line 37
    const-string v0, "IGNITE_MARSHAL_BUFFERS_RECHECK"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->CHECK_FREQ:Ljava/lang/Long;

    .line 40
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    .line 43
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [S

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->shortArrOff:J

    .line 46
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->intArrOff:J

    .line 49
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->longArrOff:J

    .line 52
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [F

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->floatArrOff:J

    .line 55
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [D

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->doubleArrOff:J

    .line 58
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [C

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->charArrOff:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 67
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    .line 71
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->urfCBuf:[C

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    .line 95
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    return-void
.end method

.method private fromStream(I)V
    .locals 14
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 135
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 171
    :cond_0
    return-void

    .line 138
    :cond_1
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->maxOff:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->maxOff:I

    .line 140
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    .line 143
    .local v10, "now":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    array-length v1, v1

    if-le p1, v1, :cond_3

    .line 144
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    iput-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    .line 160
    :cond_2
    :goto_0
    iput v13, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 161
    iput v13, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    .line 163
    :goto_1
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    if-eq v1, p1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .line 166
    .local v12, "read":I
    const/4 v1, -0x1

    if-ne v12, v1, :cond_5

    .line 167
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of stream reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    .end local v12    # "read":I
    :cond_3
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->lastCheck:J

    sub-long v2, v10, v2

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->CHECK_FREQ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    array-length v1, v1

    shr-int/lit8 v0, v1, 0x1

    .line 148
    .local v0, "halfSize":I
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->maxOff:I

    if-ge v1, v0, :cond_4

    .line 149
    new-array v5, v0, [B

    .line 151
    .local v5, "newInBuf":[B
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    iget v8, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 153
    iput-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    iput-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    .line 156
    .end local v5    # "newInBuf":[B
    :cond_4
    iput v13, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->maxOff:I

    .line 157
    iput-wide v10, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->lastCheck:J

    goto :goto_0

    .line 169
    .end local v0    # "halfSize":I
    .restart local v12    # "read":I
    :cond_5
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    add-int/2addr v1, v12

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    goto :goto_1
.end method

.method private offset(I)I
    .locals 4
    .param p1, "more"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 181
    .local v0, "old":I
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 183
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    if-le v1, v2, :cond_0

    .line 184
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to read beyond the end of the stream [pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", more="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    return v0
.end method

.method private readUTFBody(J)Ljava/lang/String;
    .locals 13
    .param p1, "utfLen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 488
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v10, "sbuf":Ljava/lang/StringBuilder;
    iput v11, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    iput v11, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    .line 492
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_3

    .line 493
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int v0, v1, v2

    .line 495
    .local v0, "avail":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    int-to-long v2, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 496
    :cond_0
    invoke-direct {p0, v10, p1, p2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    goto :goto_0

    .line 499
    :cond_1
    if-lez v0, :cond_2

    .line 500
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    sget-wide v4, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    int-to-long v6, v3

    add-long v3, v4, v6

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    int-to-long v8, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 502
    :cond_2
    iput v11, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 503
    const-wide/16 v2, 0x400

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    .line 505
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readFully([BII)V

    goto :goto_0

    .line 509
    .end local v0    # "avail":I
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readUTFSpan(Ljava/lang/StringBuilder;J)J
    .locals 16
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utfLen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v6, 0x0

    .line 526
    .local v6, "cpos":I
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 527
    .local v10, "start":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->end:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int/2addr v12, v13

    const/16 v13, 0x100

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 528
    .local v2, "avail":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    int-to-long v14, v2

    cmp-long v12, p2, v14

    if-lez v12, :cond_1

    add-int/lit8 v12, v2, -0x2

    :goto_0
    add-int v11, v13, v12

    .line 529
    .local v11, "stop":I
    const/4 v9, 0x0

    .local v9, "outOfBounds":Z
    move v7, v6

    .line 532
    .end local v6    # "cpos":I
    .local v7, "cpos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    if-ge v12, v11, :cond_6

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    aget-byte v12, v12, v13

    and-int/lit16 v3, v12, 0xff

    .line 537
    .local v3, "b1":I
    shr-int/lit8 v12, v3, 0x4

    packed-switch v12, :pswitch_data_0

    .line 579
    :pswitch_0
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .end local v3    # "b1":I
    :catch_0
    move-exception v8

    move v6, v7

    .line 584
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    .local v8, "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const/4 v9, 0x1

    .line 587
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_a

    .line 588
    :cond_0
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 590
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 528
    .end local v8    # "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v9    # "outOfBounds":Z
    .end local v11    # "stop":I
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v12, v0

    goto :goto_0

    .line 547
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v7    # "cpos":I
    .restart local v9    # "outOfBounds":Z
    .restart local v11    # "stop":I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->urfCBuf:[C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    int-to-char v13, v3

    :try_start_2
    aput-char v13, v12, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    move v7, v6

    .line 581
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    goto :goto_1

    .line 554
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    aget-byte v4, v12, v13

    .line 556
    .local v4, "b2":I
    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 557
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :catchall_0
    move-exception v12

    move v6, v7

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :goto_4
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int/2addr v13, v10

    int-to-long v14, v13

    cmp-long v13, v14, p2

    if-lez v13, :cond_8

    .line 588
    :cond_2
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 590
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 559
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v4    # "b2":I
    .restart local v7    # "cpos":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->urfCBuf:[C
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0x1f

    shl-int/lit8 v13, v13, 0x6

    and-int/lit8 v14, v4, 0x3f

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_5
    aput-char v13, v12, v7
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 583
    .end local v4    # "b2":I
    :catch_1
    move-exception v8

    goto :goto_2

    .line 565
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    add-int/lit8 v13, v13, 0x1

    aget-byte v5, v12, v13

    .line 566
    .local v5, "b3":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->utfBuf:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    aget-byte v4, v12, v13

    .line 568
    .restart local v4    # "b2":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 570
    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_4

    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_5

    .line 571
    :cond_4
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 573
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->urfCBuf:[C
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0xf

    shl-int/lit8 v13, v13, 0xc

    and-int/lit8 v14, v4, 0x3f

    shl-int/lit8 v14, v14, 0x6

    or-int/2addr v13, v14

    and-int/lit8 v14, v5, 0x3f

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_7
    aput-char v13, v12, v7
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 587
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    :catchall_1
    move-exception v12

    goto :goto_4

    .end local v3    # "b1":I
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    :cond_6
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_9

    .line 588
    :cond_7
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    .line 590
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :cond_8
    throw v12

    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    :cond_9
    move v6, v7

    .line 594
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->urfCBuf:[C

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 596
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    return-wide v12

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bytes([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "len"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->bytes([BII)V

    .line 107
    return-void
.end method

.method public bytes([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    .line 117
    iput p3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    .line 118
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 119
    return-void
.end method

.method public inputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->inBuf:[B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    .line 126
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readUnsignedByte()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 416
    :goto_0
    return v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ignored":Ljava/io/EOFException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 425
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_2

    .line 426
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 428
    :cond_2
    if-nez p3, :cond_3

    .line 429
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    .line 431
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 432
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 434
    :cond_4
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 436
    .local v0, "toRead":I
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v4, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v6, v3

    add-long v3, v4, v6

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    int-to-long v8, p2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 342
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 344
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public readBooleanArray()[Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 261
    .local v0, "arrSize":I
    new-array v2, v0, [Z

    .line 263
    .local v2, "vals":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readBoolean()Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-object v2
.end method

.method public readByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 349
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 351
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 203
    .local v0, "arrSize":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 205
    new-array v5, v0, [B

    .line 207
    .local v5, "arr":[B
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    int-to-long v8, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 209
    return-object v5
.end method

.method public readChar()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 373
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 375
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v4, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    iget v3, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    .line 377
    .local v0, "v":C
    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    .line 379
    return v0
.end method

.method public readCharArray()[C
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 273
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x1

    .line 275
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 277
    new-array v5, v0, [C

    .line 279
    .local v5, "arr":[C
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->charArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 281
    return-object v5
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 405
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 407
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleArray()[D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 246
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x3

    .line 248
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 250
    new-array v5, v0, [D

    .line 252
    .local v5, "arr":[D
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->doubleArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 254
    return-object v5
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 398
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 400
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public readFloatArray()[F
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 303
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x2

    .line 305
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 307
    new-array v5, v0, [F

    .line 309
    .local v5, "arr":[F
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->floatArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 311
    return-object v5
.end method

.method public readFully([B)V
    .locals 10
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    array-length v0, p1

    .line 318
    .local v0, "len":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 320
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v4, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v6, v3

    add-long v3, v4, v6

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    int-to-long v8, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 321
    return-void
.end method

.method public readFully([BII)V
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 327
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v4, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v0

    int-to-long v6, v0

    add-long v3, v4, v6

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    int-to-long v8, p2

    add-long/2addr v6, v8

    int-to-long v8, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 328
    return-void
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 384
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 386
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public readIntArray()[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 231
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x2

    .line 233
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 235
    new-array v5, v0, [I

    .line 237
    .local v5, "arr":[I
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->intArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 239
    return-object v5
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v2, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 448
    .local v2, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->read()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_2

    .line 449
    int-to-char v1, v0

    .line 451
    .local v1, "c":C
    packed-switch v1, :pswitch_data_0

    .line 466
    :pswitch_0
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 453
    :pswitch_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    .end local v1    # "c":C
    :goto_1
    return-object v3

    .line 456
    .restart local v1    # "c":C
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->read()I

    move-result v0

    .line 458
    if-ltz v0, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 459
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 461
    :cond_1
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_0

    .line 470
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 391
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 393
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongArray()[J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 288
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x3

    .line 290
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 292
    new-array v5, v0, [J

    .line 294
    .local v5, "arr":[J
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->longArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 296
    return-object v5
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 361
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 363
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method public readShortArray()[S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    .line 216
    .local v0, "arrSize":I
    shl-int/lit8 v10, v0, 0x1

    .line 218
    .local v10, "bytesToCp":I
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->fromStream(I)V

    .line 220
    new-array v5, v0, [S

    .line 222
    .local v5, "arr":[S
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->buf:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->byteArrOff:J

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->offset(I)I

    move-result v3

    int-to-long v8, v3

    add-long v3, v6, v8

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->shortArrOff:J

    int-to-long v8, v10

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 224
    return-object v5
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->in:Ljava/io/InputStream;

    .line 195
    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 196
    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    .line 197
    return-void
.end method

.method public skipBytes(I)I
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    if-le v0, v1, :cond_0

    .line 333
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->max:I

    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    sub-int p1, v0, v1

    .line 335
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->off:I

    .line 337
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    const-class v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
