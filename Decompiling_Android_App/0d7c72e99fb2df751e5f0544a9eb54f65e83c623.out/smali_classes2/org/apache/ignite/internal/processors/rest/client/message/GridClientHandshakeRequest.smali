.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientHandshakeRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final PACKET_SIZE:I = 0x5

.field private static final PROTO_VER:S = 0x1s

.field private static final serialVersionUID:J


# instance fields
.field private arr:[B

.field private marshId:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public marshallerId()B
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    return v0
.end method

.method public marshallerId(B)V
    .locals 1
    .param p1, "marshId"    # B

    .prologue
    .line 70
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_1
    iput-byte p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshId:B

    .line 73
    return-void
.end method

.method public putBytes([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    .line 86
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    invoke-static {p1, v0, v1, p2, p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 87
    return-void
.end method

.method public rawBytes()[B
    .locals 3

    .prologue
    .line 93
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 95
    .local v0, "ret":[B
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shortToBytes(S[BI)I

    .line 97
    const/4 v1, 0x2

    iget-byte v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshId:B

    shl-int/lit8 v2, v2, 0x6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    const/4 v1, 0x4

    iget-byte v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->marshId:B

    aput-byte v2, v0, v1

    .line 101
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [arr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public version()S
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->arr:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToShort([BI)S

    move-result v0

    return v0
.end method
