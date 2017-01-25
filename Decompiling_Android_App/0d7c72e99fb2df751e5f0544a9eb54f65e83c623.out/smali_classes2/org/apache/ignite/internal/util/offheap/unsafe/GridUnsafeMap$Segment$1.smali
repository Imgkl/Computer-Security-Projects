.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<[B[B>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bin:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 738
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 739
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->bin:Ljava/util/Queue;

    .line 742
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 745
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->advance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 750
    return-void

    .line 748
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private advance()V
    .locals 14

    .prologue
    .line 753
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    sget-boolean v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->bin:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 755
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v10

    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 757
    .local v6, "tblEnd":J
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v0

    .local v0, "binAddr":J
    :goto_0
    cmp-long v9, v0, v6

    if-gez v9, :cond_3

    .line 758
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v9, v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v9

    invoke-static {v0, v1, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v2

    .line 760
    .local v2, "entryAddr":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_2

    .line 757
    :cond_1
    const-wide/16 v10, 0x8

    add-long/2addr v0, v10

    goto :goto_0

    .line 763
    :cond_2
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_1

    .line 768
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v9, v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v4

    .line 769
    .local v4, "keyLen":I
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v9, v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v8

    .line 771
    .local v8, "valLen":I
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v9, v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v9

    const-wide/16 v10, 0x1c

    add-long/2addr v10, v2

    int-to-long v12, v4

    add-long/2addr v10, v12

    invoke-virtual {v9, v10, v11, v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v5

    .line 773
    .local v5, "valBytes":[B
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->bin:Ljava/util/Queue;

    iget-object v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v10, v10, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyBytes(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)[B

    move-result-object v10

    invoke-static {v10, v5}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v9, v9, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v2

    goto :goto_1

    .line 779
    .end local v2    # "entryAddr":J
    .end local v4    # "keyLen":I
    .end local v5    # "valBytes":[B
    .end local v8    # "valLen":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 0

    .prologue
    .line 800
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 782
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->bin:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->onNext()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;->bin:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 788
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<[B[B>;"
    if-nez v0, :cond_0

    .line 789
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 791
    :cond_0
    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 795
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
