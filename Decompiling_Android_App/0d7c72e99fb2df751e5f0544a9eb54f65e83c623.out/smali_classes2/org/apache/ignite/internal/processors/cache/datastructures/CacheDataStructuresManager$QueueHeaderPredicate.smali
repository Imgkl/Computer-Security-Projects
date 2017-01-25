.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;
.super Ljava/lang/Object;
.source "CacheDataStructuresManager.java"

# interfaces
.implements Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueHeaderPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
        "<TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 543
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;, "Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method


# virtual methods
.method public evaluate(Ljavax/cache/event/CacheEntryEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;, "Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate<TK;TV;>;"
    .local p1, "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;"
    invoke-virtual {p1}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;

    .prologue
    .line 560
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;, "Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate<TK;TV;>;"
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;, "Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate<TK;TV;>;"
    return-void
.end method
