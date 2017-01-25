.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheAttributesMvccEntryExtras.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V
    .locals 1
    .param p2, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 45
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 49
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 50
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
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
    .line 59
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 65
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

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
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    return-object v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .line 81
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 3
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x10

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 9
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;->mvcc:Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;JJ)V

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method
