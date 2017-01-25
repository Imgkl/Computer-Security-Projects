.class public Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;
.super Ljava/io/OutputStream;
.source "GridUnsafeDataOutput.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/io/GridDataOutput;


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final CHECK_FREQ:Ljava/lang/Long;

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final byteArrOff:J

.field private static final charArrOff:J

.field private static final doubleArrOff:J

.field private static final floatArrOff:J

.field private static final intArrOff:J

.field private static final longArrOff:J

.field private static final shortArrOff:J


# instance fields
.field private bytes:[B

.field private final cbuf:[C

.field private lastCheck:J

.field private maxOff:I

.field private off:I

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    .line 36
    const-string v0, "IGNITE_MARSHAL_BUFFERS_RECHECK"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->CHECK_FREQ:Ljava/lang/Long;

    .line 39
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    .line 42
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [S

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->shortArrOff:J

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->intArrOff:J

    .line 48
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->longArrOff:J

    .line 51
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [F

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->floatArrOff:J

    .line 54
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [D

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->doubleArrOff:J

    .line 57
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [C

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->charArrOff:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 63
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    .line 78
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->lastCheck:J

    .line 85
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 63
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    .line 78
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->lastCheck:J

    .line 91
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    .line 92
    return-void
.end method

.method private onWrite(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    goto :goto_0
.end method

.method private requestFreeSize(I)V
    .locals 12
    .param p1, "size"    # I

    .prologue
    .line 140
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    add-int/2addr p1, v1

    .line 142
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->maxOff:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->maxOff:I

    .line 144
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    .line 146
    .local v10, "now":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 147
    shl-int/lit8 v1, p1, 0x1

    new-array v5, v1, [B

    .line 149
    .local v5, "newBytes":[B
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v8, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 151
    iput-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    .line 167
    .end local v5    # "newBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->lastCheck:J

    sub-long v2, v10, v2

    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->CHECK_FREQ:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    array-length v1, v1

    shr-int/lit8 v0, v1, 0x1

    .line 156
    .local v0, "halfSize":I
    iget v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->maxOff:I

    if-ge v1, v0, :cond_2

    .line 157
    new-array v5, v0, [B

    .line 159
    .restart local v5    # "newBytes":[B
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v8, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 161
    iput-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    .line 164
    .end local v5    # "newBytes":[B
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->maxOff:I

    .line 165
    iput-wide v10, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->lastCheck:J

    goto :goto_0
.end method

.method private utfLength(Ljava/lang/String;)I
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 419
    .local v1, "len":I
    const/4 v5, 0x0

    .line 421
    .local v5, "utfLen":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 422
    sub-int v6, v1, v2

    const/16 v7, 0x100

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 424
    .local v4, "size":I
    add-int v6, v2, v4

    iget-object v7, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    const/4 v8, 0x0

    invoke-virtual {p1, v2, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 426
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 427
    iget-object v6, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    aget-char v0, v6, v3

    .line 429
    .local v0, "c":C
    const/4 v6, 0x1

    if-lt v0, v6, :cond_0

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_0

    .line 430
    add-int/lit8 v5, v5, 0x1

    .line 426
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    :cond_0
    const/16 v6, 0x7ff

    if-le v0, v6, :cond_1

    const/4 v6, 0x3

    :goto_3
    add-int/2addr v5, v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    goto :goto_3

    .line 435
    .end local v0    # "c":C
    :cond_2
    add-int/2addr v2, v4

    .line 436
    goto :goto_0

    .line 438
    .end local v3    # "pos":I
    .end local v4    # "size":I
    :cond_3
    return v5
.end method

.method private writeUTF(Ljava/lang/String;I)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utfLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeBytes(Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 457
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeUTFBody(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 471
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 472
    sub-int v5, v3, v4

    const/16 v6, 0x100

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 474
    .local v2, "csize":I
    add-int v5, v4, v2

    iget-object v6, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 476
    const/4 v1, 0x0

    .local v1, "cpos":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 477
    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->cbuf:[C

    aget-char v0, v5, v1

    .line 479
    .local v0, "c":C
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    .line 476
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1

    .line 482
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    .line 483
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    .line 484
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    goto :goto_2

    .line 487
    :cond_1
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    .line 488
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->write(I)V

    goto :goto_2

    .line 492
    .end local v0    # "c":C
    :cond_2
    add-int/2addr v4, v2

    .line 493
    goto :goto_0

    .line 494
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_3
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 10

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    new-array v5, v0, [B

    .line 116
    .local v5, "bytes0":[B
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 118
    return-object v5
.end method

.method public bytes([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    .line 100
    iput p2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    .line 101
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->reset()V

    .line 306
    return-void
.end method

.method public internalArray()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    return-object v0
.end method

.method public offset()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    return v0
.end method

.method public offset(I)V
    .locals 0
    .param p1, "off"    # I

    .prologue
    .line 133
    iput p1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    .line 134
    return-void
.end method

.method public outputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->out:Ljava/io/OutputStream;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    .line 110
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->out:Ljava/io/OutputStream;

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-class v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeByte(I)V

    .line 383
    return-void
.end method

.method public write([B)V
    .locals 10
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 184
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    array-length v0, p1

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 186
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 187
    return-void
.end method

.method public write([BII)V
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
    .line 191
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 193
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    int-to-long v4, p2

    add-long v3, v2, v4

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    int-to-long v8, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 195
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 196
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 7
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 310
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 312
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 314
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 315
    return-void
.end method

.method public writeBooleanArray([Z)V
    .locals 2
    .param p1, "arr"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 217
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeBoolean(Z)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method public writeByte(I)V
    .locals 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 319
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 321
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-byte v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 323
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 324
    return-void
.end method

.method public writeByteArray([B)V
    .locals 10
    .param p1, "arr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 270
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 272
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v0, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    array-length v0, p1

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 274
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 275
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 389
    .local v1, "len":I
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeByte(I)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public writeChar(I)V
    .locals 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 337
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 339
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-char v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 341
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 342
    return-void
.end method

.method public writeCharArray([C)V
    .locals 10
    .param p1, "arr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 224
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x1

    .line 226
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 228
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->charArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 230
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 231
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 399
    .local v1, "len":I
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeChar(I)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 7
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 373
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 375
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 377
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 378
    return-void
.end method

.method public writeDoubleArray([D)V
    .locals 10
    .param p1, "arr"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 202
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x3

    .line 204
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 206
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->doubleArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 208
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 209
    return-void
.end method

.method public writeFloat(F)V
    .locals 7
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 364
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 366
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 368
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 369
    return-void
.end method

.method public writeFloatArray([F)V
    .locals 10
    .param p1, "arr"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 250
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x2

    .line 252
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 254
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->floatArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 256
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 257
    return-void
.end method

.method public writeInt(I)V
    .locals 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 346
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 348
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 350
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 351
    return-void
.end method

.method public writeIntArray([I)V
    .locals 10
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 294
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x2

    .line 296
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 298
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->intArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 300
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 301
    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 355
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 357
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 359
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 360
    return-void
.end method

.method public writeLongArray([J)V
    .locals 10
    .param p1, "arr"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 237
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x3

    .line 239
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 241
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->longArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 243
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 244
    return-void
.end method

.method public writeShort(I)V
    .locals 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 328
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 330
    sget-object v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v4, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-short v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 332
    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 333
    return-void
.end method

.method public writeShortArray([S)V
    .locals 10
    .param p1, "arr"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeInt(I)V

    .line 281
    array-length v1, p1

    shl-int/lit8 v0, v1, 0x1

    .line 283
    .local v0, "bytesToCp":I
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->requestFreeSize(I)V

    .line 285
    sget-object v1, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->shortArrOff:J

    iget-object v5, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes:[B

    sget-wide v6, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->byteArrOff:J

    iget v2, p0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->off:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    int-to-long v8, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 287
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->onWrite(I)V

    .line 288
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->utfLength(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->writeUTF(Ljava/lang/String;I)V

    .line 408
    return-void
.end method
