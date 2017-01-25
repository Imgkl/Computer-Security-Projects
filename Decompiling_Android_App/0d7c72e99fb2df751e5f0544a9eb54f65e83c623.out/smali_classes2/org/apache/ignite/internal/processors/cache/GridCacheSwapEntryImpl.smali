.class public Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
.super Ljava/lang/Object;
.source "GridCacheSwapEntryImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BYTE_ARR_OFF:J

.field static final EXPIRE_TIME_OFFSET:I = 0x8

.field static final GUID_SIZE:I = 0x18

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field static final VERSION_EX_SIZE:I = 0x30

.field static final VERSION_OFFSET:I = 0x10

.field static final VERSION_SIZE:I = 0x18


# instance fields
.field private expireTime:J

.field private keyClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private ttl:J

.field private type:B

.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

.field private valBytes:Ljava/nio/ByteBuffer;

.field private valClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->$assertionsDisabled:Z

    .line 34
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    .line 37
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 2
    .param p1, "valBytes"    # Ljava/nio/ByteBuffer;
    .param p2, "type"    # B
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "ttl"    # J
    .param p6, "expireTime"    # J
    .param p8, "keyClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "valClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    .line 98
    iput-byte p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->type:B

    .line 99
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 100
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ttl:J

    .line 101
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->expireTime:J

    .line 102
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 103
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->keyClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 104
    return-void
.end method

.method public static expireTime([B)J
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 119
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getValue([B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 14
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 139
    sget-wide v6, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    const-wide/16 v8, 0x10

    add-long v3, v6, v8

    .line 141
    .local v3, "off":J
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long v10, v3, v6

    .end local v3    # "off":J
    .local v10, "off":J
    invoke-virtual {v1, p0, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v13, 0x1

    .line 143
    .local v13, "verEx":Z
    :goto_0
    if-eqz v13, :cond_1

    const-wide/16 v6, 0x30

    :goto_1
    add-long v3, v10, v6

    .line 145
    .end local v10    # "off":J
    .restart local v3    # "off":J
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, p0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 147
    .local v0, "arrLen":I
    const-wide/16 v6, 0x4

    add-long v10, v3, v6

    .line 149
    .end local v3    # "off":J
    .restart local v10    # "off":J
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long v3, v10, v6

    .end local v10    # "off":J
    .restart local v3    # "off":J
    invoke-virtual {v1, p0, v10, v11}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    .line 151
    .local v12, "type":B
    new-array v5, v0, [B

    .line 153
    .local v5, "valBytes":[B
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    int-to-long v8, v0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 155
    new-instance v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 141
    .end local v0    # "arrLen":I
    .end local v3    # "off":J
    .end local v5    # "valBytes":[B
    .end local v12    # "type":B
    .end local v13    # "verEx":Z
    .restart local v10    # "off":J
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 143
    .restart local v13    # "verEx":Z
    :cond_1
    const-wide/16 v6, 0x18

    goto :goto_1
.end method

.method public static timeToLive([B)J
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 111
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unmarshal([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    .locals 25
    .param p0, "arr"    # [B

    .prologue
    .line 292
    sget-wide v7, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    .line 294
    .local v7, "off":J
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    .line 296
    .local v14, "ttl":J
    const-wide/16 v10, 0x8

    add-long/2addr v7, v10

    .line 298
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v16

    .line 300
    .local v16, "expireTime":J
    const-wide/16 v10, 0x8

    add-long/2addr v7, v10

    .line 302
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v10, 0x1

    add-long v20, v7, v10

    .end local v7    # "off":J
    .local v20, "off":J
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v24

    .line 304
    .local v24, "verEx":Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readVersion([BJZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v23

    .line 306
    .local v23, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v24, :cond_0

    const-wide/16 v10, 0x30

    :goto_0
    add-long v7, v20, v10

    .line 308
    .end local v20    # "off":J
    .restart local v7    # "off":J
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    .line 310
    .local v4, "arrLen":I
    const-wide/16 v10, 0x4

    add-long v20, v7, v10

    .line 312
    .end local v7    # "off":J
    .restart local v20    # "off":J
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v10, 0x1

    add-long v7, v20, v10

    .end local v20    # "off":J
    .restart local v7    # "off":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v22

    .line 314
    .local v22, "type":B
    new-array v9, v4, [B

    .line 316
    .local v9, "valBytes":[B
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v10, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    int-to-long v12, v4

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v13}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 318
    int-to-long v10, v4

    add-long/2addr v7, v10

    .line 320
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid([BJ)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    .line 322
    .local v19, "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v19, :cond_1

    const-wide/16 v10, 0x1

    :goto_1
    add-long/2addr v7, v10

    .line 324
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid([BJ)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    .line 326
    .local v18, "keyClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v10, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    move/from16 v12, v22

    move-object/from16 v13, v23

    invoke-direct/range {v10 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;-><init>(Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-object v10

    .line 306
    .end local v4    # "arrLen":I
    .end local v7    # "off":J
    .end local v9    # "valBytes":[B
    .end local v18    # "keyClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v19    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v22    # "type":B
    .restart local v20    # "off":J
    :cond_0
    const-wide/16 v10, 0x18

    goto :goto_0

    .line 322
    .end local v20    # "off":J
    .restart local v4    # "arrLen":I
    .restart local v7    # "off":J
    .restart local v9    # "valBytes":[B
    .restart local v19    # "valClsLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v22    # "type":B
    :cond_1
    const-wide/16 v10, 0x19

    goto :goto_1
.end method

.method public static valueOffset([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 163
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    array-length v3, p0

    const/16 v4, 0x28

    if-gt v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 165
    :cond_0
    const/16 v0, 0x10

    .line 167
    .local v0, "off":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 169
    .local v2, "verEx":Z
    :goto_0
    if-eqz v2, :cond_2

    const/16 v3, 0x30

    :goto_1
    add-int/lit8 v0, v3, 0x11

    .line 171
    .end local v1    # "off":I
    .restart local v0    # "off":I
    add-int/lit8 v0, v0, 0x5

    .line 173
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    array-length v3, p0

    if-ge v3, v0, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 167
    .end local v0    # "off":I
    .end local v2    # "verEx":Z
    .restart local v1    # "off":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 169
    .restart local v2    # "verEx":Z
    :cond_2
    const/16 v3, 0x18

    goto :goto_1

    .line 175
    .end local v1    # "off":I
    .restart local v0    # "off":I
    :cond_3
    return v0
.end method

.method public static version([B)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 127
    const/16 v0, 0x10

    .line 129
    .local v0, "off":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "off":I
    .local v1, "off":I
    aget-byte v3, p0, v0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 131
    .local v2, "verEx":Z
    :goto_0
    int-to-long v4, v1

    invoke-static {p0, v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readVersion([BJZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    return-object v3

    .line 129
    .end local v2    # "verEx":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public expireTime()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->expireTime:J

    return-wide v0
.end method

.method public keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->keyClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public marshal()[B
    .locals 18

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    instance-of v2, v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    :goto_0
    add-int/lit8 v17, v2, 0x11

    .line 246
    .local v17, "size":I
    add-int/lit8 v17, v17, 0x1

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v16

    .line 250
    .local v16, "len":I
    add-int/lit8 v2, v16, 0x4

    add-int v17, v17, v2

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    add-int v17, v17, v2

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->keyClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    add-int v17, v17, v2

    .line 256
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 258
    .local v3, "arr":[B
    sget-wide v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    .line 260
    .local v4, "off":J
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ttl:J

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 262
    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    .line 264
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->expireTime:J

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 266
    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v3, v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeVersion([BJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)J

    move-result-wide v4

    .line 270
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move/from16 v0, v16

    invoke-virtual {v2, v3, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    .line 274
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long v12, v4, v6

    .end local v4    # "off":J
    .local v12, "off":J
    move-object/from16 v0, p0

    iget-byte v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->type:B

    invoke-virtual {v2, v3, v4, v5, v6}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 276
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    sget-wide v9, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->BYTE_ARR_OFF:J

    move/from16 v0, v16

    int-to-long v14, v0

    move-object v11, v3

    invoke-virtual/range {v7 .. v15}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 278
    move/from16 v0, v16

    int-to-long v6, v0

    add-long v4, v12, v6

    .line 280
    .end local v12    # "off":J
    .restart local v4    # "off":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v3, v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid([BJLorg/apache/ignite/lang/IgniteUuid;)J

    move-result-wide v4

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->keyClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {v3, v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid([BJLorg/apache/ignite/lang/IgniteUuid;)J

    .line 284
    return-object v3

    .line 244
    .end local v3    # "arr":[B
    .end local v4    # "off":J
    .end local v16    # "len":I
    .end local v17    # "size":I
    :cond_0
    const/16 v2, 0x18

    goto/16 :goto_0

    .line 252
    .restart local v16    # "len":I
    .restart local v17    # "size":I
    :cond_1
    const/16 v2, 0x19

    goto :goto_1

    .line 254
    :cond_2
    const/16 v2, 0x19

    goto :goto_2
.end method

.method public offheapPointer()J
    .locals 2

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ttl:J

    return-wide v0
.end method

.method public type()B
    .locals 1

    .prologue
    .line 206
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->type:B

    return v0
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 201
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 202
    return-void
.end method

.method public valueBytes([B)V
    .locals 1
    .param p1, "valBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    .line 192
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public valueBytes()[B
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 181
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->valClsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
