.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;
.super Ljava/lang/Object;
.source "CacheContinuousQueryHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;",
        "Ljavax/cache/event/CacheEntryEvent",
        "<+TK;+TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

.field final synthetic val$cache:Lorg/apache/ignite/IgniteCache;

.field final synthetic val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->val$cache:Lorg/apache/ignite/IgniteCache;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.2;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->apply(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)Ljavax/cache/event/CacheEntryEvent;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)Ljavax/cache/event/CacheEntryEvent;
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;",
            ")",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler.2;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->val$cache:Lorg/apache/ignite/IgniteCache;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;-><init>(Ljavax/cache/Cache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)V

    return-object v0
.end method
