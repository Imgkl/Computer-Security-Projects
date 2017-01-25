.class public Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;
.super Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.source "GridCacheAttributesEntryExtras.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridLeanMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;-><init>()V

    .line 41
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 44
    return-void
.end method


# virtual methods
.method public attributesData(Lorg/apache/ignite/internal/util/GridLeanMap;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 0
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
    .line 53
    .local p1, "attrData":Lorg/apache/ignite/internal/util/GridLeanMap;, "Lorg/apache/ignite/internal/util/GridLeanMap<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    .line 59
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;
    :cond_0
    const/4 p0, 0x0

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
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    return-object v0
.end method

.method public mvcc(Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
    .param p1, "mvcc"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;

    .prologue
    .line 64
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesMvccEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;)V

    move-object p0, v0

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;
    :cond_0
    return-object p0
.end method

.method public obsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 2
    .param p1, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesObsoleteEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object p0, v0

    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x8

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttlAndExpireTime(JJ)Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;
    .locals 7
    .param p1, "ttl"    # J
    .param p3, "expireTime"    # J

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesEntryExtras;->attrData:Lorg/apache/ignite/internal/util/GridLeanMap;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/extras/GridCacheAttributesTtlEntryExtras;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;JJ)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
