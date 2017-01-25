.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
.super Ljava/lang/Object;
.source "GridMemcachedMessage.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BOOLEAN_FLAG:I = 0x100

.field public static final BYTE_ARR_FLAG:I = 0x800

.field public static final BYTE_FLAG:I = 0x500

.field public static final DATE_FLAG:I = 0x400

.field public static final DOUBLE_FLAG:I = 0x700

.field public static final FAILURE:I = 0x4

.field public static final FLAGS_LENGTH:B = 0x4t

.field public static final FLOAT_FLAG:I = 0x600

.field public static final HDR_LEN:I = 0x18

.field public static final IGNITE_HANDSHAKE_FLAG:B = -0x6ft

.field public static final IGNITE_HANDSHAKE_RES_FLAG:B = -0x6et

.field public static final IGNITE_REQ_FLAG:B = -0x70t

.field public static final INT_FLAG:I = 0x200

.field public static final KEY_NOT_FOUND:I = 0x1

.field public static final LONG_FLAG:I = 0x300

.field private static final MEMCACHED_ID:Ljava/util/UUID;

.field public static final MEMCACHE_REQ_FLAG:B = -0x80t

.field public static final MEMCACHE_RES_FLAG:B = -0x7ft

.field public static final SERIALIZED_FLAG:I = 0x1

.field public static final SUCCESS:I

.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private delta:Ljava/lang/Long;

.field private expiration:Ljava/lang/Long;

.field private extras:[B

.field private extrasLen:B

.field private init:Ljava/lang/Long;

.field private key:Ljava/lang/Object;

.field private keyLen:S

.field private opCode:B

.field private opaque:[B

.field private reqFlag:B

.field private status:I

.field private totalLen:I

.field private val:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->MEMCACHED_ID:Ljava/util/UUID;

    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)V
    .locals 4
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-byte v0, p1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->reqFlag:B

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->reqFlag:B

    .line 150
    iget-byte v0, p1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    iput-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    .line 152
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    .line 153
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 154
    return-void
.end method


# virtual methods
.method public addData()Z
    .locals 2

    .prologue
    .line 458
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x26

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFlags()Z
    .locals 2

    .prologue
    .line 478
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 405
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 407
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->cacheName:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public clientId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->MEMCACHED_ID:Ljava/util/UUID;

    return-object v0
.end method

.method public clientId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 174
    return-void
.end method

.method public delta()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->delta:Ljava/lang/Long;

    return-object v0
.end method

.method public delta(J)V
    .locals 1
    .param p1, "delta"    # J

    .prologue
    .line 377
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->delta:Ljava/lang/Long;

    .line 378
    return-void
.end method

.method public destinationId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public destinationId(Ljava/util/UUID;)V
    .locals 2
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "destId is not supported by memcached packets."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expiration()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public expiration(J)V
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 363
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->expiration:Ljava/lang/Long;

    .line 364
    return-void
.end method

.method public extras([B)V
    .locals 1
    .param p1, "extras"    # [B

    .prologue
    .line 315
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 317
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extras:[B

    .line 318
    return-void
.end method

.method public extras()[B
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extras:[B

    return-object v0
.end method

.method public extrasLength()B
    .locals 1

    .prologue
    .line 246
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLen:B

    return v0
.end method

.method public extrasLength(B)V
    .locals 1
    .param p1, "extrasLen"    # B

    .prologue
    .line 253
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_0
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLen:B

    .line 256
    return-void
.end method

.method public hasDelta()Z
    .locals 2

    .prologue
    .line 438
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpiration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 426
    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    if-eq v1, v0, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFlags()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 414
    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    if-eq v1, v0, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitial()Z
    .locals 2

    .prologue
    .line 448
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initial()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->init:Ljava/lang/Long;

    return-object v0
.end method

.method public initial(J)V
    .locals 1
    .param p1, "init"    # J

    .prologue
    .line 391
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->init:Ljava/lang/Long;

    .line 392
    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public key(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 331
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 333
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key:Ljava/lang/Object;

    .line 334
    return-void
.end method

.method public keyLength()S
    .locals 1

    .prologue
    .line 230
    iget-short v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLen:S

    return v0
.end method

.method public keyLength(S)V
    .locals 1
    .param p1, "keyLen"    # S

    .prologue
    .line 237
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_0
    iput-short p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLen:S

    .line 240
    return-void
.end method

.method public opaque([B)V
    .locals 1
    .param p1, "opaque"    # [B

    .prologue
    .line 299
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 301
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    .line 302
    return-void
.end method

.method public opaque()[B
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    return-object v0
.end method

.method public operationCode()B
    .locals 1

    .prologue
    .line 214
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    return v0
.end method

.method public operationCode(B)V
    .locals 1
    .param p1, "opCode"    # B

    .prologue
    .line 221
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_0
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opCode:B

    .line 224
    return-void
.end method

.method public requestFlag()B
    .locals 1

    .prologue
    .line 200
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->reqFlag:B

    return v0
.end method

.method public requestFlag(B)V
    .locals 0
    .param p1, "reqFlag"    # B

    .prologue
    .line 207
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->reqFlag:B

    .line 208
    return-void
.end method

.method public requestId()J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public requestId(J)V
    .locals 3
    .param p1, "reqId"    # J

    .prologue
    .line 163
    long-to-int v0, p1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I[BI)I

    .line 164
    return-void
.end method

.method public sessionToken([B)V
    .locals 0
    .param p1, "sesTok"    # [B

    .prologue
    .line 194
    return-void
.end method

.method public sessionToken()[B
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status:I

    return v0
.end method

.method public status(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 269
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status:I

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLength()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLen:I

    return v0
.end method

.method public totalLength(I)V
    .locals 1
    .param p1, "totalLen"    # I

    .prologue
    .line 283
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLen:I

    .line 286
    return-void
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public value(Ljava/lang/Object;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 347
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 349
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->val:Ljava/lang/Object;

    .line 350
    return-void
.end method
