.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;
.super Ljavax/cache/event/CacheEntryEvent;
.source "CacheContinuousQueryEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavax/cache/event/CacheEntryEvent",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/cache/Cache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;)V
    .locals 1
    .param p1, "src"    # Ljavax/cache/Cache;
    .param p2, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "e"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->eventType()Ljavax/cache/event/EventType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/cache/event/CacheEntryEvent;-><init>(Ljavax/cache/Cache;Ljavax/cache/event/EventType;)V

    .line 49
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 50
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    .line 51
    return-void
.end method


# virtual methods
.method entry()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

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
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isOldValueAvailable()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->e:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;

    const-string v2, "evtType"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getEventType()Ljavax/cache/event/EventType;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "newVal"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getValue()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "oldVal"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v9

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEvent<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping to class is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
