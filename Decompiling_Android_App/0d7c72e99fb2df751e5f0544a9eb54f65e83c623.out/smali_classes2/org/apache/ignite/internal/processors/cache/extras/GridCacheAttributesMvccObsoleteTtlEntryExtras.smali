.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheAttributesMvccObsoleteTtlEntryExtras.java"


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

.field private obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V
    .locals 2
    .param p2, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .param p3, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "ttl"    # J
    .param p6, "expireTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 58
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 64
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 65
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 66
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    .line 67
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    .line 68
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
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
    .line 77
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 83
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    move-object p0, v1

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
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    return-object v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    return-wide v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 99
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    move-object p0, v1

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 8
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 115
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V

    move-object p0, v1

    goto :goto_0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x28

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    return-wide v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 5
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 131
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->ttl:J

    .line 132
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->expireTime:J

    .line 137
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    goto :goto_0
.end method
