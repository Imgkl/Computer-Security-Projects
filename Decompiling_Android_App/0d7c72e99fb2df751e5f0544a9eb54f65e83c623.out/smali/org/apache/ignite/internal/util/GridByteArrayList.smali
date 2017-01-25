.class public Lorg/apache/ignite/internal/util/GridByteArrayList;
.super Ljava/lang/Object;
.source "GridByteArrayList.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private data:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/GridByteArrayList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    .line 60
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    .line 86
    array-length v0, p1

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 87
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    .line 73
    iput p2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 74
    return-void
.end method

.method private capacity(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 146
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 149
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-ge p1, v0, :cond_2

    .line 150
    iput p1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    goto :goto_0
.end method

.method private requestFreeSize(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    .line 185
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 186
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity(I)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    aput-byte p1, v0, v1

    .line 198
    return-void
.end method

.method public add(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 219
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 223
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 224
    return-void
.end method

.method public add(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 271
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 273
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-static {p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 275
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 276
    return-void
.end method

.method public add(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I

    .prologue
    .line 311
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 315
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 316
    return-void
.end method

.method public add(S)V
    .locals 2
    .param p1, "i"    # S

    .prologue
    .line 232
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shortToBytes(S[BI)I

    .line 236
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 237
    return-void
.end method

.method public add([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 297
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-static {p1, p2, v0, v1, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 301
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 302
    return-void
.end method

.method public allocate(I)V
    .locals 2
    .param p1, "cnt"    # I

    .prologue
    .line 175
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 176
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public array()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    new-array v0, v1, [B

    .line 116
    .local v0, "res":[B
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 118
    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    array-length v0, v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x54

    return v0
.end method

.method public entireArray()[B
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->internalArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x2

    return v0
.end method

.method public get(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 325
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 337
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x4

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v0

    return v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 386
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;-><init>()V

    .line 388
    .local v0, "in":Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;->bytes([BI)V

    .line 390
    return-object v0
.end method

.method public internalArray()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;-><init>()V

    .line 377
    .local v0, "out":Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;->bytes([BI)V

    .line 379
    return-object v0
.end method

.method public readAll(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 353
    .local v1, "read":I
    :cond_1
    :goto_0
    if-ltz v1, :cond_3

    .line 354
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    sub-int v0, v2, v3

    .line 356
    .local v0, "free":I
    if-nez v0, :cond_2

    .line 357
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/GridByteArrayList;->requestFreeSize(I)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->capacity()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    sub-int v0, v2, v3

    .line 361
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-gtz v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 364
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    iget v3, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 366
    if-lez v1, :cond_1

    .line 367
    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    goto :goto_0

    .line 369
    .end local v0    # "free":I
    :cond_3
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 404
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    .line 406
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/ObjectInput;->readFully([BII)V

    .line 407
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 442
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 464
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    :pswitch_0
    const-string v1, "data"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    .line 449
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 455
    :pswitch_1
    const-string v1, "size"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 457
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    .line 95
    return-void
.end method

.method public set(IB)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "b"    # B

    .prologue
    .line 207
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-lt p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    aput-byte p2, v0, p1

    .line 211
    return-void
.end method

.method public set(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "i"    # I

    .prologue
    .line 259
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x4

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 262
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-static {p2, v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 263
    return-void
.end method

.method public set(IJ)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "l"    # J

    .prologue
    .line 285
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 288
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-static {p2, p3, v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    .line 289
    return-void
.end method

.method public set(IS)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "i"    # S

    .prologue
    .line 246
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 247
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridByteArrayList;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-static {p2, v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shortToBytes(S[BI)I

    .line 250
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-class v0, Lorg/apache/ignite/internal/util/GridByteArrayList;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 397
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/ObjectOutput;->write([BII)V

    .line 398
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 413
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 414
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridByteArrayList;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 420
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    :pswitch_0
    const-string v1, "data"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->data:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 428
    :pswitch_1
    const-string v1, "size"

    iget v2, p0, Lorg/apache/ignite/internal/util/GridByteArrayList;->size:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
