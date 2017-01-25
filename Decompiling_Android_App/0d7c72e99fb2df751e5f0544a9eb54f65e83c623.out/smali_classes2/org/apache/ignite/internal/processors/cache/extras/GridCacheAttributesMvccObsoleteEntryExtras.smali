.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheAttributesMvccObsoleteEntryExtras.java"


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

.field private mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

.field private obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p2, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .param p3, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 50
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 55
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 56
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 57
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
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
    .line 66
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 72
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

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
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    return-object v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 88
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 104
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x18

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 9
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;->obsoleteVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
