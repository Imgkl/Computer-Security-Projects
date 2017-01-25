.class public Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;
.source "IgfsGroupDataBlocksKeyMapper.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final grpSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "grpSize"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;-><init>()V

    .line 69
    if-lt p1, v0, :cond_0

    :goto_0
    const-string v1, "grpSize >= 1"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 71
    iput p1, p0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;->grpSize:I

    .line 72
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public affinityKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 76
    if-eqz p1, :cond_1

    const-class v1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 77
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    .line 79
    .local v0, "blockKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 87
    .end local v0    # "blockKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    :goto_0
    return-object v1

    .line 82
    .restart local v0    # "blockKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->getBlockId()J

    move-result-wide v4

    iget v1, p0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;->grpSize:I

    int-to-long v6, v1

    div-long v2, v4, v6

    .line 84
    .local v2, "grpId":J
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->getFileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v1

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 87
    .end local v0    # "blockKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v2    # "grpId":J
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;->affinityKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public groupSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;->grpSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
