.class public Luk/co/alt236/bluetoothlelib/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B

    .prologue
    .line 19
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 20
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 21
    .local v2, "firstEntry":Z
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 24
    .local v1, "b":B
    if-nez v2, :cond_0

    .line 25
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    :cond_0
    const-string v6, "0123456789ABCDEF"

    and-int/lit16 v7, v1, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 28
    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    const/4 v2, 0x0

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v1    # "b":B
    :cond_1
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static doesArrayBeginWith([B[B)Z
    .locals 4
    .param p0, "array"    # [B
    .param p1, "prefix"    # [B

    .prologue
    const/4 v1, 0x0

    .line 44
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 47
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getIntFrom2ByteArray([B)I
    .locals 4
    .param p0, "input"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 64
    .local v0, "result":[B
    aput-byte v2, v0, v2

    .line 65
    aput-byte v2, v0, v3

    .line 66
    const/4 v1, 0x2

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x3

    aget-byte v2, p0, v3

    aput-byte v2, v0, v1

    .line 69
    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFromByteArray([B)I

    move-result v1

    return v1
.end method

.method public static getIntFromByte(B)I
    .locals 1
    .param p0, "bite"    # B

    .prologue
    .line 81
    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getIntFromByteArray([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 91
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static getLongFromByteArray([B)J
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 101
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static invertArray([B)[B
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 112
    array-length v1, p0

    .line 115
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 117
    aget-byte v2, p0, v0

    .line 118
    .local v2, "temp":B
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, p0, v3

    aput-byte v3, p0, v0

    .line 119
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aput-byte v2, p0, v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "temp":B
    :cond_0
    return-object p0
.end method
