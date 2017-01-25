.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->addData(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgniteFuture;
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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)V
    .locals 0

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.4;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->apply(Ljava/util/Map$Entry;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map$Entry;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl.4;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v5, 0x1

    .line 404
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheKeyObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 405
    .local v0, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$500(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;->access$400(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;)Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->toCacheObject(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    .line 407
    .local v1, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v2, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    return-object v2
.end method
