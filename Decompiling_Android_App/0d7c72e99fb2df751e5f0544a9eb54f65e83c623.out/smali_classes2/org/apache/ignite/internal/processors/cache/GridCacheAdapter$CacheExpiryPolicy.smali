.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CacheExpiryPolicy"
.end annotation


# instance fields
.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private rdrsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 5874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
    .locals 1
    .param p0, "x0"    # Ljavax/cache/expiry/ExpiryPolicy;

    .prologue
    .line 5874
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->forPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static forAccess(J)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
    .locals 2
    .param p0, "ttl"    # J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5909
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 5910
    const/4 v0, 0x0

    .line 5912
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$2;-><init>(J)V

    goto :goto_0
.end method

.method private static forPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
    .locals 1
    .param p0, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5886
    if-nez p0, :cond_0

    .line 5887
    const/4 v0, 0x0

    .line 5889
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy$1;-><init>(Ljavax/cache/expiry/ExpiryPolicy;)V

    goto :goto_0
.end method


# virtual methods
.method public entries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5970
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public forCreate()J
    .locals 2

    .prologue
    .line 5921
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public forUpdate()J
    .locals 2

    .prologue
    .line 5926
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5975
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    return-object v0
.end method

.method public readyToFlush(I)Z
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 5980
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 5931
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 5932
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5934
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5935
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5936
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5985
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttlUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5946
    .local p3, "rdrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 5947
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    .line 5949
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->entries:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5951
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5952
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 5953
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    .line 5955
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 5956
    .local v2, "nodeId":Ljava/util/UUID;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 5958
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    if-nez v0, :cond_2

    .line 5959
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->rdrsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5961
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-direct {v3, p1, p2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5964
    .end local v0    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nodeId":Ljava/util/UUID;
    :cond_3
    return-void
.end method
