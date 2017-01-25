.class public abstract Lorg/apache/ignite/internal/util/GridClientByteUtils;
.super Ljava/lang/Object;
.source "GridClientByteUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/util/GridClientByteUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 160
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->fromBytes([BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static bytesToLong([BI)J
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 171
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->fromBytes([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bytesToShort([BI)S
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    .line 149
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->fromBytes([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static bytesToUuid([BI)Ljava/util/UUID;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 182
    const/16 v1, 0x10

    invoke-static {p0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 187
    .local v4, "most":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 189
    .local v2, "least":J
    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static fromBytes([BII)J
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "off"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v6, 0x8

    .line 224
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 225
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-le p2, v6, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 226
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    array-length v1, p0

    add-int v4, p1, p2

    if-ge v1, v4, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 228
    :cond_2
    const-wide/16 v2, 0x0

    .line 230
    .local v2, "res":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 231
    shl-long/2addr v2, v6

    .line 232
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_3
    return-wide v2
.end method

.method public static intToBytes(I[BI)I
    .locals 3
    .param p0, "i"    # I
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    const/4 v2, 0x4

    .line 82
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2, v2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    .line 84
    return v2
.end method

.method public static intToBytes(I)[B
    .locals 5
    .param p0, "i"    # I

    .prologue
    const/4 v4, 0x4

    .line 44
    int-to-long v0, p0

    new-array v2, v4, [B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static longToBytes(J[BI)I
    .locals 2
    .param p0, "l"    # J
    .param p2, "bytes"    # [B
    .param p3, "off"    # I

    .prologue
    const/16 v0, 0x8

    .line 97
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    .line 99
    return v0
.end method

.method public static longToBytes(J)[B
    .locals 4
    .param p0, "l"    # J

    .prologue
    const/16 v2, 0x8

    .line 54
    new-array v0, v2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static shortToBytes(S[BI)I
    .locals 3
    .param p0, "s"    # S
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    const/4 v2, 0x2

    .line 67
    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2, v2}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    .line 69
    return v2
.end method

.method public static shortToBytes(S)[B
    .locals 5
    .param p0, "s"    # S

    .prologue
    const/4 v4, 0x2

    .line 34
    int-to-long v0, p0

    new-array v2, v4, [B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->toBytes(J[BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static toBytes(J[BII)[B
    .locals 6
    .param p0, "l"    # J
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "limit"    # I

    .prologue
    const/16 v4, 0x8

    .line 203
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-le p4, v4, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 205
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridClientByteUtils;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :cond_2
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 208
    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 209
    ushr-long/2addr p0, v4

    .line 207
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_3
    return-object p2
.end method

.method public static uuidToBytes(Ljava/util/UUID;[BI)I
    .locals 5
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x10

    .line 125
    invoke-static {p1, p2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 129
    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 138
    :goto_0
    return v4

    .line 134
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static uuidToBytes(Ljava/util/UUID;)[B
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 109
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 111
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->uuidToBytes(Ljava/util/UUID;[BI)I

    .line 113
    return-object v0
.end method
