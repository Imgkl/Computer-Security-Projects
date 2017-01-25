.class Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;
.super Ljava/lang/Object;
.source "FileSwapSpaceSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwapValuesQueue"
.end annotation


# instance fields
.field private final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final maxSize:I

.field private final mayAdd:Ljava/util/concurrent/locks/Condition;

.field private final mayTake:Ljava/util/concurrent/locks/Condition;

.field private final minTakeSize:I

.field private size:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "minTakeSize"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->deq:Ljava/util/ArrayDeque;

    .line 781
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 785
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayAdd:Ljava/util/concurrent/locks/Condition;

    .line 788
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayTake:Ljava/util/concurrent/locks/Condition;

    .line 804
    iput p1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->minTakeSize:I

    .line 805
    iput p2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->maxSize:I

    .line 806
    return-void
.end method

.method synthetic constructor <init>(IILorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$1;

    .prologue
    .line 776
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;-><init>(II)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)V
    .locals 3
    .param p1, "val"    # Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 818
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->maxSize:I

    if-le v1, v2, :cond_0

    .line 819
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayAdd:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 821
    :cond_0
    :try_start_2
    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {p1}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    .line 823
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->deq:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 825
    iget v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    iget v2, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->minTakeSize:I

    if-lt v1, v2, :cond_1

    .line 826
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayTake:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 832
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 834
    return-void
.end method

.method public take()Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 846
    :goto_0
    :try_start_0
    iget v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    iget v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->minTakeSize:I

    if-ge v6, v7, :cond_0

    .line 847
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayTake:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 874
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 849
    :cond_0
    const/4 v3, 0x0

    .line 850
    .local v3, "size":I
    const/4 v0, 0x0

    .line 852
    .local v0, "cnt":I
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->deq:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 853
    .local v4, "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    # getter for: Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->len:I
    invoke-static {v4}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;->access$400(Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;)I

    move-result v6

    add-int/2addr v3, v6

    .line 854
    add-int/lit8 v0, v0, 0x1

    .line 856
    iget v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->minTakeSize:I

    if-lt v3, v6, :cond_1

    .line 860
    .end local v4    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_2
    new-array v5, v0, [Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 862
    .local v5, "vals":[Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 863
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->deq:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;

    .line 865
    .restart local v4    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    aput-object v4, v5, v1

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 868
    .end local v4    # "val":Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;
    :cond_3
    iget v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->size:I

    iget v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->maxSize:I

    if-ge v6, v7, :cond_4

    .line 869
    iget-object v6, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->mayAdd:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 871
    :cond_4
    new-instance v6, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;

    invoke-direct {v6, v5, v3}, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValues;-><init>([Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValue;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    iget-object v7, p0, Lorg/apache/ignite/spi/swapspace/file/FileSwapSpaceSpi$SwapValuesQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6
.end method
