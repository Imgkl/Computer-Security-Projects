.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;
.super Ljava/lang/Object;
.source "DataStreamerEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->toEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

.field final synthetic val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry$1;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
