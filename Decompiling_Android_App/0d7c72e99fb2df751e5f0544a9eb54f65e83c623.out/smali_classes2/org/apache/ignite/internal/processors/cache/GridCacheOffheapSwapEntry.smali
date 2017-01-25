.class public Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;
.super Ljava/lang/Object;
.source "GridCacheOffheapSwapEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private final ptr:J

.field private final type:B

.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

.field private final valPtr:J

.field private final ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    .line 43
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JI)V
    .locals 15
    .param p1, "ptr"    # J
    .param p3, "size"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-wide/from16 v0, p1

    invoke-direct {v7, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v7

    .line 66
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    const/16 v7, 0x28

    move/from16 v0, p3

    if-gt v0, v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v7

    .line 68
    :cond_1
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->ptr:J

    .line 70
    const-wide/16 v8, 0x10

    add-long v2, p1, v8

    .line 72
    .local v2, "readPtr":J
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v8, 0x1

    add-long v4, v2, v8

    .end local v2    # "readPtr":J
    .local v4, "readPtr":J
    invoke-virtual {v7, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    .line 74
    .local v6, "verEx":Z
    :goto_0
    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readVersion(JZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 76
    if-eqz v6, :cond_3

    const-wide/16 v8, 0x30

    :goto_1
    add-long v2, v4, v8

    .line 78
    .end local v4    # "readPtr":J
    .restart local v2    # "readPtr":J
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v8, 0x4

    add-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v7

    iput-byte v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->type:B

    .line 80
    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->valPtr:J

    .line 82
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    move/from16 v0, p3

    int-to-long v8, v0

    add-long v8, v8, p1

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->valPtr:J

    invoke-virtual {v7, v10, v11}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v7

    int-to-long v10, v7

    iget-wide v12, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->valPtr:J

    add-long/2addr v10, v12

    const-wide/16 v12, 0x5

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 72
    .end local v2    # "readPtr":J
    .end local v6    # "verEx":Z
    .restart local v4    # "readPtr":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    .restart local v6    # "verEx":Z
    :cond_3
    const-wide/16 v8, 0x18

    goto :goto_1

    .line 83
    .end local v4    # "readPtr":J
    .restart local v2    # "readPtr":J
    :cond_4
    return-void
.end method

.method public static expireTime(J)J
    .locals 4
    .param p0, "ptr"    # J

    .prologue
    .line 118
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x8

    add-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static timeToLive(J)J
    .locals 2
    .param p0, "ptr"    # J

    .prologue
    .line 110
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static valueAddress(JI)J
    .locals 10
    .param p0, "ptr"    # J
    .param p2, "size"    # I

    .prologue
    .line 91
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, p0, p1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v3

    .line 92
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const/16 v3, 0x28

    if-gt p2, v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v3

    .line 94
    :cond_1
    const-wide/16 v4, 0x10

    add-long/2addr p0, v4

    .line 96
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long v0, p0, v4

    .end local p0    # "ptr":J
    .local v0, "ptr":J
    invoke-virtual {v3, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 98
    .local v2, "verEx":Z
    :goto_0
    if-eqz v2, :cond_3

    const-wide/16 v4, 0x30

    :goto_1
    add-long p0, v0, v4

    .line 100
    .end local v0    # "ptr":J
    .restart local p0    # "ptr":J
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    int-to-long v4, p2

    add-long/2addr v4, p0

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v6, p0

    const-wide/16 v8, 0x5

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 96
    .end local v2    # "verEx":Z
    .end local p0    # "ptr":J
    .restart local v0    # "ptr":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    .restart local v2    # "verEx":Z
    :cond_3
    const-wide/16 v4, 0x18

    goto :goto_1

    .line 102
    .end local v0    # "ptr":J
    .restart local p0    # "ptr":J
    :cond_4
    return-wide p0
.end method

.method public static version(J)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 6
    .param p0, "ptr"    # J

    .prologue
    .line 126
    const-wide/16 v4, 0x10

    add-long v0, p0, v4

    .line 128
    .local v0, "addr":J
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 130
    .local v2, "verEx":Z
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 132
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readVersion(JZ)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    return-object v3

    .line 128
    .end local v2    # "verEx":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public expireTime()J
    .locals 6

    .prologue
    .line 172
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->ptr:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offheapPointer()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->valPtr:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 4

    .prologue
    .line 167
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->ptr:J

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public type()B
    .locals 1

    .prologue
    .line 157
    iget-byte v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->type:B

    return v0
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 153
    return-void
.end method

.method public valueBytes([B)V
    .locals 1
    .param p1, "valBytes"    # [B

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public valueBytes()[B
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
