.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->versionFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

.field final synthetic val$info:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;->val$info:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    const/4 v2, 0x0

    .line 1252
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 1254
    .local v1, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;->val$info:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;->val$info:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1257
    .end local v1    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    :goto_0
    return v2

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    goto :goto_0
.end method
