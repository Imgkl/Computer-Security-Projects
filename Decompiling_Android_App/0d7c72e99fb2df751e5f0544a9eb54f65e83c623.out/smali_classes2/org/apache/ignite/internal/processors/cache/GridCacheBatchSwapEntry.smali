.class public Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
.source "GridCacheBatchSwapEntry.java"


# instance fields
.field private key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field private part:I


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILjava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "part"    # I
    .param p3, "valBytes"    # Ljava/nio/ByteBuffer;
    .param p4, "type"    # B
    .param p5, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "ttl"    # J
    .param p8, "expireTime"    # J
    .param p10, "keyClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p11, "valClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;-><init>(Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 61
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->part:I

    .line 62
    return-void
.end method


# virtual methods
.method public key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    return-object v0
.end method

.method public partition()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->part:I

    return v0
.end method
