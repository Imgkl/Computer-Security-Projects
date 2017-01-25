.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bin:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

.field final synthetic val$c:Lorg/apache/ignite/internal/util/typedef/CX2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 809
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;Lorg/apache/ignite/internal/util/typedef/CX2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    .line 810
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->bin:Ljava/util/Queue;

    .line 813
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 816
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->advance()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 821
    return-void

    .line 819
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private advance()V
    .locals 18

    .prologue
    .line 824
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    sget-boolean v13, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->bin:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 826
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v16

    add-long v10, v14, v16

    .line 828
    .local v10, "tblEnd":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J

    move-result-wide v2

    .local v2, "binAddr":J
    :goto_0
    cmp-long v13, v2, v10

    if-gez v13, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v13, v13, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v13

    invoke-static {v2, v3, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v4

    .line 831
    .local v4, "entryAddr":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-nez v13, :cond_2

    .line 828
    :cond_1
    const-wide/16 v14, 0x8

    add-long/2addr v2, v14

    goto :goto_0

    .line 834
    :cond_2
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-eqz v13, :cond_1

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v13, v13, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v6

    .line 840
    .local v6, "keyLen":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v13, v13, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v9

    .line 842
    .local v9, "valLen":I
    new-instance v7, Lorg/apache/ignite/internal/util/typedef/T2;

    const-wide/16 v14, 0x1c

    add-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    .local v7, "keyPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v12, Lorg/apache/ignite/internal/util/typedef/T2;

    const-wide/16 v14, 0x1c

    add-long/2addr v14, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 846
    .local v12, "valPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->val$c:Lorg/apache/ignite/internal/util/typedef/CX2;

    invoke-virtual {v13, v7, v12}, Lorg/apache/ignite/internal/util/typedef/CX2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 848
    .local v8, "res":Ljava/lang/Object;, "TT;"
    if-eqz v8, :cond_3

    .line 849
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->bin:Ljava/util/Queue;

    invoke-interface {v13, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->this$1:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    iget-object v13, v13, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v13

    invoke-static {v4, v5, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v4

    goto :goto_1

    .line 855
    .end local v4    # "entryAddr":J
    .end local v6    # "keyLen":I
    .end local v7    # "keyPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v8    # "res":Ljava/lang/Object;, "TT;"
    .end local v9    # "valLen":I
    .end local v12    # "valPtr":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 0

    .prologue
    .line 876
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 858
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->bin:Ljava/util/Queue;

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

.method protected onNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;->bin:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 864
    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 865
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 867
    :cond_0
    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 871
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment.2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
