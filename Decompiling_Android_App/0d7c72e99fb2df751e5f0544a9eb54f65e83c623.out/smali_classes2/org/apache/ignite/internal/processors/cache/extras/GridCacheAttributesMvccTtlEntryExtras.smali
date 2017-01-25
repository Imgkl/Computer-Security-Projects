.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheAttributesMvccTtlEntryExtras.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private attrData:Lorg/apache/ignite/internal/util/GridLeanMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private expireTime:J

.field private mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V
    .locals 3
    .param p2, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 54
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 59
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 60
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    .line 61
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    .line 62
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1    # Lorg/apache/ignite/internal/util/GridLeanMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 77
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public attributesData()Lorg/apache/ignite/internal/util/GridLeanMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    return-object v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    return-wide v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 93
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;JJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x20

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    return-wide v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 115
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->ttl:J

    .line 116
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->expireTime:J

    .line 121
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    move-object p0, v0

    goto :goto_0
.end method
