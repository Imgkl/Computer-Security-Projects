.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;
.super Ljava/lang/Object;
.source "GridCacheEntryInfoCollectSwapListener.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final swappedEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->swappedEntries:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->log:Lorg/apache/ignite/IgniteLogger;

    .line 40
    return-void
.end method


# virtual methods
.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->swappedEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onEntryUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 4
    .param p1, "part"    # I
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "swapEntry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    .prologue
    .line 47
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unswapped event for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 51
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;-><init>()V

    .line 55
    .local v0, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 56
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->ttl(J)V

    .line 57
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->expireTime(J)V

    .line 58
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 59
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 61
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfoCollectSwapListener;->swappedEntries:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
