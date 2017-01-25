.class final Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->forPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;


# direct methods
.method constructor <init>(Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 0

    .prologue
    .line 5889
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public forAccess()J
    .locals 2

    .prologue
    .line 5891
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v0}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public forCreate()J
    .locals 2

    .prologue
    .line 5895
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v0}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public forUpdate()J
    .locals 2

    .prologue
    .line 5899
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;->val$expiryPlc:Ljavax/cache/expiry/ExpiryPolicy;

    invoke-interface {v0}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v0

    return-wide v0
.end method
