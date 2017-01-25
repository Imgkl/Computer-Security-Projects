.class public abstract Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtrasAdapter;
.super Ljava/lang/Object;
.source "GridCacheEntryExtrasAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/extras/GridCacheEntryExtras;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public expireTime()J
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvcc;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method
