.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;
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
    name = "BatchedSorted"
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
    .line 164
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$1;

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    .locals 7
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
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;, "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 171
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 173
    :cond_1
    const/4 v3, 0x0

    .line 174
    .local v3, "putAll":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v4, 0x0

    .line 176
    .local v4, "rmvAll":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "key":Ljava/lang/Object;, "TK;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$BatchedSorted;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    instance-of v6, v2, Ljava/lang/Comparable;

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 181
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 183
    .local v5, "val":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_4

    .line 184
    if-nez v4, :cond_3

    .line 185
    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "rmvAll":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 187
    .restart local v4    # "rmvAll":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_4
    if-nez v3, :cond_5

    .line 191
    new-instance v3, Ljava/util/TreeMap;

    .end local v3    # "putAll":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 193
    .restart local v3    # "putAll":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_5
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "val":Ljava/lang/Object;, "TV;"
    :cond_6
    invoke-static {p1, v4, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->updateAll(Lorg/apache/ignite/IgniteCache;Ljava/util/Set;Ljava/util/Map;)V

    .line 198
    return-void
.end method
