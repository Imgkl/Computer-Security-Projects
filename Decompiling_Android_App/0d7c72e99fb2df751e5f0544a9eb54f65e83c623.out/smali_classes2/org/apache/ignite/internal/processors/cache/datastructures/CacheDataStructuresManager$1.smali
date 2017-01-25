.class Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;
.super Ljava/lang/Object;
.source "CacheDataStructuresManager.java"

# interfaces
.implements Ljavax/cache/event/CacheEntryUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queue0(Ljava/lang/String;IZZ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/event/CacheEntryUpdatedListener",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const-class v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdated(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "evts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/event/CacheEntryEvent<**>;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$000(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/event/CacheEntryEvent;

    .line 193
    .local v0, "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    invoke-virtual {v0}, Ljavax/cache/event/CacheEntryEvent;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    .line 194
    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    invoke-virtual {v0}, Ljavax/cache/event/CacheEntryEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 196
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$100(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .line 197
    .local v6, "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;->queueName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 198
    if-nez v1, :cond_4

    .line 199
    invoke-virtual {v0}, Ljavax/cache/event/CacheEntryEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 201
    .local v5, "oldHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-nez v5, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    .end local v5    # "oldHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .end local v6    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$000(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    throw v7

    .line 203
    .restart local v0    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .restart local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    .restart local v5    # "oldHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .restart local v6    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->onRemoved(Z)V

    .line 206
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$100(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 210
    .end local v5    # "oldHdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_4
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->onHeaderChanged(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<**>;"
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    .end local v6    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;->this$0:Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->access$000(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    goto/16 :goto_0
.end method
