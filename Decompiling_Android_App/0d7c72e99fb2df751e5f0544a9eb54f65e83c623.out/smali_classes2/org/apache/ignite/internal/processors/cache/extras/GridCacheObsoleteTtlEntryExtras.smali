.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheObsoleteTtlEntryExtras.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private expireTime:J

.field private obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V
    .locals 2
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "ttl"    # J
    .param p4, "expireTime"    # J

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 52
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    .line 53
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    .line 54
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
    .line 58
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteTtlEntryExtras;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    return-wide v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 80
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;-><init>(JJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x18

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    return-wide v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 96
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->ttl:J

    .line 97
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->expireTime:J

    .line 102
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    goto :goto_0
.end method
