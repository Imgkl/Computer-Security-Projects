.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheTtlEntryExtras.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private expireTime:J

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 44
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    .line 47
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    .line 48
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
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
    .line 52
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    return-wide v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 6
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x10

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    return-wide v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 78
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->ttl:J

    .line 79
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;->expireTime:J

    .line 84
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheTtlEntryExtras;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
