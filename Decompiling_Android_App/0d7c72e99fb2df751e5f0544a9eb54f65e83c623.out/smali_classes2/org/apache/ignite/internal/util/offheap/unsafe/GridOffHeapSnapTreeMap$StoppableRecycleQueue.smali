.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;
.super Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoppableRecycleQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
        "<TK;TV;>.RecycleQueue;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 921
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V
    .locals 2

    .prologue
    .line 921
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    .line 923
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 926
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 921
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V

    return-void
.end method


# virtual methods
.method public add(J)Z
    .locals 3
    .param p1, "node"    # J

    .prologue
    .line 930
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 932
    .local v0, "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    const/4 v1, 0x0

    .line 939
    :goto_0
    return v1

    .line 936
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 939
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.RecycleQueue;)Z"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    .local p1, "que":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 947
    .local v0, "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    const/4 v1, 0x0

    .line 954
    :goto_0
    return v1

    .line 951
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 954
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 982
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public merge(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    .locals 2
    .param p1, "compound"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .prologue
    .line 960
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;

    .end local p1    # "compound":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z

    move-result v0

    .line 962
    .local v0, "res":Z
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 963
    :cond_0
    return-void
.end method

.method public stop()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.StoppableRecycleQueue;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 969
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$StoppableRecycleQueue;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 975
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
