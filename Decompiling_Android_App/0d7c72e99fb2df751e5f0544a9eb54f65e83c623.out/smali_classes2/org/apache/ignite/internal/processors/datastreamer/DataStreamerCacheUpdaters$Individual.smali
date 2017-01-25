.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;
.super Ljava/lang/Object;
.source "DataStreamerCacheUpdaters.java"

# interfaces
.implements Lorg/apache/ignite/stream/StreamReceiver;
.implements Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Individual"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/stream/StreamReceiver",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteCache",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 104
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 106
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "key":Ljava/lang/Object;, "TK;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$Individual;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 111
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "val":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_3

    .line 114
    invoke-interface {p1, v2}, Lorg/apache/ignite/IgniteCache;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {p1, v2, v3}, Lorg/apache/ignite/IgniteCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "val":Ljava/lang/Object;, "TV;"
    :cond_4
    return-void
.end method
