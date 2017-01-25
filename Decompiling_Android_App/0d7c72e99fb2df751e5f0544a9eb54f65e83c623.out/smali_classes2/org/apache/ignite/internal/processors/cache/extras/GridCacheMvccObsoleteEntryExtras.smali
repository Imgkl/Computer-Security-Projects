.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheMvccObsoleteEntryExtras.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

.field private obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 44
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 48
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 49
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
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
    .line 53
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
    :cond_0
    return-object p0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 69
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 85
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x10

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 9
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method
