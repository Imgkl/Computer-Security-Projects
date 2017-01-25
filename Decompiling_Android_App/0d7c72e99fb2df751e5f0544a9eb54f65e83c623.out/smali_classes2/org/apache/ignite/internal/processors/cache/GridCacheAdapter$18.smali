.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Ljava/util/Map",
        "<TK1;TV1;>;",
        "Ljava/lang/Exception;",
        "Ljava/util/Map",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.18;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.18;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;->apply(Ljava/util/Map;Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map;Ljava/lang/Exception;)Ljava/util/Map;
    .locals 1
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK1;TV1;>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 2282
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.18;"
    .local p1, "loaded":Ljava/util/Map;, "Ljava/util/Map<TK1;TV1;>;"
    if-nez p2, :cond_0

    .line 2283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;->val$map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2285
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$18;->val$map:Ljava/util/Map;

    return-object v0
.end method
