.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheMvccObsoleteTtlEntryExtras.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private expireTime:J

.field private mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

.field private obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V
    .locals 3
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 59
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    .line 60
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    .line 61
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
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
    .line 65
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    return-wide v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 82
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 98
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 125
    const/16 v0, 0x20

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    return-wide v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 114
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->ttl:J

    .line 115
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->expireTime:J

    .line 120
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    goto :goto_0
.end method
