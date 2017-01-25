.class Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "GridCacheWriteBehindStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Flusher"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 732
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 734
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>.Flusher;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .line 735
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 736
    return-void
.end method

.method private awaitOperationsAvailable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>.Flusher;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 757
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Lorg/jsr166/ConcurrentLinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v0

    if-nez v0, :cond_2

    .line 758
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 759
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->canFlush:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 764
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Lorg/jsr166/ConcurrentLinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 769
    return-void

    .line 761
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->canFlush:Ljava/util/concurrent/locks/Condition;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private flushCache(Ljava/util/Iterator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue",
            "<TK;TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>.Flusher;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;>;"
    const/4 v8, 0x1

    .line 778
    const/4 v2, 0x0

    .line 780
    .local v2, "operation":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    const/4 v0, 0x0

    .line 781
    .local v0, "batch":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 783
    .local v3, "pending":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 784
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 786
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 788
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 791
    :try_start_0
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v4

    .line 793
    .local v4, "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->acquired(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z
    invoke-static {v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 828
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 797
    :cond_1
    :try_start_1
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-ne v4, v6, :cond_2

    .line 798
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 800
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-gez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    .end local v4    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .line 802
    .restart local v4    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    :cond_3
    :try_start_2
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    .line 805
    if-nez v2, :cond_4

    .line 806
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v2

    .line 808
    :cond_4
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v6

    if-eq v2, v6, :cond_6

    .line 810
    move-object v0, v3

    .line 811
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 813
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v2

    .line 815
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 821
    move-object v0, v3

    .line 822
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 824
    const/4 v2, 0x0

    .line 828
    :cond_5
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 831
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 832
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->applyBatch(Ljava/util/Map;Z)V
    invoke-static {v6, v0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Ljava/util/Map;Z)V

    .line 833
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 818
    :cond_6
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 838
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    .end local v4    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 839
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->applyBatch(Ljava/util/Map;Z)V
    invoke-static {v6, v3, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Ljava/util/Map;Z)V

    .line 840
    :cond_8
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>.Flusher;"
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Lorg/jsr166/ConcurrentLinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    if-lez v0, :cond_1

    .line 741
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->awaitOperationsAvailable()V

    .line 743
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Lorg/jsr166/ConcurrentLinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;->flushCache(Ljava/util/Iterator;)V

    goto :goto_0

    .line 745
    :cond_1
    return-void
.end method
