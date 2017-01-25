.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleQueue"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final head:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final size:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile tail:J

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V
    .locals 4

    .prologue
    .line 807
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    .line 815
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->size:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 807
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V

    return-void
.end method


# virtual methods
.method add(J)Z
    .locals 9
    .param p1, "node"    # J

    .prologue
    .line 829
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 831
    :cond_0
    const-wide/16 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(JJJ)Z

    move-result v0

    return v0
.end method

.method protected add(JJJ)Z
    .locals 5
    .param p1, "node"    # J
    .param p3, "tail"    # J
    .param p5, "size"    # J

    .prologue
    .line 867
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 869
    .local v0, "h":J
    sget-boolean v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v2

    .line 871
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->writeLink(JJ)V
    invoke-static {v2, p3, p4, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JJ)V

    .line 873
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 874
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 875
    iput-wide p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->tail:J

    .line 877
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->size:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 879
    const/4 v2, 0x1

    return v2
.end method

.method public add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.RecycleQueue;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    .local p1, "q":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    const-wide/16 v8, 0x0

    .line 846
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 848
    :cond_0
    iget-object v0, p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 849
    .local v2, "node":J
    iget-wide v4, p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->tail:J

    .line 850
    .local v4, "tail":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->size()J

    move-result-wide v6

    .line 852
    .local v6, "size":J
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 853
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, v4, v8

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 854
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    move-object v1, p0

    .line 856
    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(JJJ)Z

    move-result v0

    return v0
.end method

.method public deallocate()V
    .locals 10

    .prologue
    .line 893
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 895
    .local v0, "h":J
    :goto_0
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    .line 896
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0, v1}, Ljava/lang/AssertionError;-><init>(J)V

    throw v6

    .line 898
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v6, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v2

    .line 900
    .local v2, "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    if-eqz v2, :cond_1

    .line 901
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->decrementRefCount()V

    .line 903
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOpt(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v6, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v3

    .line 905
    .local v3, "v":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    if-eqz v3, :cond_1

    .line 906
    invoke-interface {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;->decrementRefCount()V

    .line 909
    .end local v3    # "v":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    :cond_1
    move-wide v4, v0

    .line 911
    .local v4, "prev":J
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->readLink(J)J
    invoke-static {v6, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)J

    move-result-wide v0

    .line 913
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v6, v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    const-wide/16 v8, 0x38

    invoke-virtual {v6, v4, v5, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    goto :goto_0

    .line 915
    .end local v2    # "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .end local v4    # "prev":J
    :cond_2
    return-void
.end method

.method isEmpty()Z
    .locals 4

    .prologue
    .line 888
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->head:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    .locals 2
    .param p1, "compound"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .prologue
    .line 836
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;

    .end local p1    # "compound":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;)Z

    move-result v0

    .line 838
    .local v0, "res":Z
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 839
    :cond_0
    return-void
.end method

.method size()J
    .locals 2

    .prologue
    .line 821
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.RecycleQueue;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$RecycleQueue;->size:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
