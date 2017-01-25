.class public Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateHasValue;
.super Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;
.source "CacheEntryPredicateHasValue.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateHasValue;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicateHasValue;->peekVisibleValue(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
