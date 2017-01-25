.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->same(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

.field final synthetic val$p:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;->val$p:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 541
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$3;->val$p:Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
