.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->keyHasMeta(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field final synthetic val$meta:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;->val$meta:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;->apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 2
    .param p1, "k"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 317
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 319
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$15;->val$meta:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasMeta(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
