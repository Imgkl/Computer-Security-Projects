.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;
.super Ljava/lang/Object;
.source "CacheContinuousQueryManager.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/event/CacheEntryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->advance()V

    .line 425
    return-void
.end method

.method private advance()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 447
    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    .line 449
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :cond_1
    return-void

    .line 453
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 455
    .local v6, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$200(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v8

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$300(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->access$400(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    sget-object v2, Ljavax/cache/event/EventType;->CREATED:Ljavax/cache/event/EventType;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;-><init>(ILjavax/cache/event/EventType;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-direct {v7, v8, v9, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;-><init>(Ljavax/cache/Cache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)V

    iput-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    .line 460
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1;->val$rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;->evaluate(Ljavax/cache/event/CacheEntryEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next()Ljavax/cache/event/CacheEntryEvent;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/event/CacheEntryEvent;
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->next:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    .line 437
    .local v0, "next0":Ljavax/cache/event/CacheEntryEvent;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager$1$1;->advance()V

    .line 439
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 443
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
