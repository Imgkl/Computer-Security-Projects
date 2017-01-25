.class final Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$2;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->forAccess(J)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ttl:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 5912
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$2;->val$ttl:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public forAccess()J
    .locals 2

    .prologue
    .line 5914
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$2;->val$ttl:J

    return-wide v0
.end method
