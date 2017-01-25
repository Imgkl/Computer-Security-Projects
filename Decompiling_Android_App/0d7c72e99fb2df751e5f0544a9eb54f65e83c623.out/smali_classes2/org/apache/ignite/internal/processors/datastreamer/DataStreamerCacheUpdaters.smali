.class public Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;
.super Ljava/lang/Object;
.source "DataStreamerCacheUpdaters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Batched;,
        Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BATCHED:Lorg/apache/ignite/stream/StreamReceiver;

.field private static final BATCHED_SORTED:Lorg/apache/ignite/stream/StreamReceiver;

.field private static final INDIVIDUAL:Lorg/apache/ignite/stream/StreamReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->$assertionsDisabled:Z

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->INDIVIDUAL:Lorg/apache/ignite/stream/StreamReceiver;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Batched;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Batched;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->BATCHED:Lorg/apache/ignite/stream/StreamReceiver;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;-><init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->BATCHED_SORTED:Lorg/apache/ignite/stream/StreamReceiver;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static batched()Lorg/apache/ignite/stream/StreamReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->BATCHED:Lorg/apache/ignite/stream/StreamReceiver;

    return-object v0
.end method

.method public static batchedSorted()Lorg/apache/ignite/stream/StreamReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->BATCHED_SORTED:Lorg/apache/ignite/stream/StreamReceiver;

    return-object v0
.end method

.method public static individual()Lorg/apache/ignite/stream/StreamReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/stream/StreamReceiver",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->INDIVIDUAL:Lorg/apache/ignite/stream/StreamReceiver;

    return-object v0
.end method

.method protected static updateAll(Lorg/apache/ignite/IgniteCache;Ljava/util/Set;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p1, "rmvCol":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "putMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p0

    .line 88
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->removeAll(Ljava/util/Set;)V

    .line 90
    :cond_1
    if-eqz p2, :cond_2

    .line 91
    invoke-interface {p0, p2}, Lorg/apache/ignite/IgniteCache;->putAll(Ljava/util/Map;)V

    .line 92
    :cond_2
    return-void
.end method
