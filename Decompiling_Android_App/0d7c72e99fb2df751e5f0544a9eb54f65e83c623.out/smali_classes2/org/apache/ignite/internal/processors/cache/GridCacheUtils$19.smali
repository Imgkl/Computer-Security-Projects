.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "GridCacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->typeFilter0(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$keyType:Ljava/lang/Class;

.field final synthetic val$valType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 840
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->val$valType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->val$keyType:Ljava/lang/Class;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 840
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    const/4 v1, 0x0

    .line 842
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->peekVisibleValue(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    .line 844
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->val$valType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$19;->val$keyType:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
