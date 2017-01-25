.class final Lorg/jsr166/ConcurrentLinkedHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile transient cnt:I

.field private final loadFactor:F

.field private transient modCnt:I

.field private final segEntryQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

.field private transient threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    const-class v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;IF)V
    .locals 2
    .param p2, "initCap"    # I
    .param p3, "loadFactor"    # F

    .prologue
    .line 402
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 403
    iput p3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    .line 405
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    .line 408
    invoke-static {p2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->newArray(I)[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->setTable([Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)V

    .line 409
    return-void

    .line 405
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v0

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q_OPTIMIZED_RMV:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1300(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .prologue
    .line 327
    iget v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    return v0
.end method

.method static synthetic access$1400(Lorg/jsr166/ConcurrentLinkedHashMap$Segment;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap$Segment;

    .prologue
    .line 327
    iget v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    return v0
.end method

.method private checkRemoveEldestEntrySegment()V
    .locals 7

    .prologue
    .line 769
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    sget-boolean v3, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 771
    :cond_0
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v3

    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v4}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v4

    sub-int v2, v3, v4

    .line 773
    .local v2, "rmvCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 774
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 776
    .local v0, "e0":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-nez v0, :cond_2

    .line 784
    .end local v0    # "e0":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void

    .line 779
    .restart local v0    # "e0":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_2
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->removeLocked(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    .line 781
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v3

    iget-object v4, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v4}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    .line 972
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    if-eqz v2, :cond_1

    .line 973
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 976
    :try_start_0
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 978
    .local v1, "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 979
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    :cond_0
    iget v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    .line 983
    const/4 v2, 0x0

    iput v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 989
    .end local v0    # "i":I
    .end local v1    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_1
    return-void

    .line 986
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 524
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    if-eqz v1, :cond_1

    .line 525
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 527
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 528
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v1

    if-ne v1, p2, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    .line 535
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return v1

    .line 531
    .restart local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_0

    .line 535
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 546
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v5, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    if-eqz v5, :cond_3

    .line 547
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 549
    .local v3, "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    array-length v2, v3

    .line 551
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 552
    aget-object v0, v3, v1

    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 553
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 555
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_0

    .line 556
    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readValueUnderLock(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 558
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 559
    const/4 v5, 0x1

    .line 564
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :goto_2
    return v5

    .line 552
    .restart local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_1

    .line 551
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v2, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    if-eqz v2, :cond_2

    .line 466
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 468
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 469
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v2

    if-ne v2, p2, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 472
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 484
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 475
    .restart local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readValueUnderLock(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 477
    goto :goto_1

    .line 480
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_0

    .line 484
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 431
    .local v0, "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method getSafe(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 500
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 502
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 503
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v1

    if-ne v1, p2, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 512
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    return-object v1

    .line 506
    :cond_0
    :try_start_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 509
    :cond_1
    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 671
    const/4 v3, 0x0

    .line 674
    .local v3, "added":Z
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    .line 676
    .local v4, "c":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "c":I
    .local v5, "c":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->threshold:I

    if-le v4, v14, :cond_0

    .line 677
    invoke-virtual/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->rehash()V

    .line 679
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 681
    .local v13, "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    and-int v8, p2, v14

    .line 683
    .local v8, "idx":I
    aget-object v7, v13, v8

    .line 685
    .local v7, "first":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v6, v7

    .line 687
    .local v6, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_2

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v14

    move/from16 v0, p2

    if-ne v14, v0, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 688
    :cond_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v6

    goto :goto_0

    .line 690
    :cond_2
    const/4 v9, 0x0

    .line 692
    .local v9, "modified":Z
    if-eqz v6, :cond_5

    .line 693
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v11

    .line 695
    .local v11, "oldVal":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_4

    .line 696
    move-object/from16 v0, p3

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v6, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v6}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v10

    .line 700
    .local v10, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    if-eqz v10, :cond_3

    .line 701
    invoke-virtual {v10}, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 703
    .local v12, "qEntry":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v12, :cond_3

    if-eq v12, v6, :cond_3

    .line 704
    move-object/from16 v0, p3

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v12, v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .end local v12    # "qEntry":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_3
    const/4 v9, 0x1

    .line 728
    .end local v10    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .end local v11    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_4
    :goto_1
    sget-boolean v14, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->$assertionsDisabled:Z

    if-nez v14, :cond_6

    if-eqz v3, :cond_6

    if-eqz v9, :cond_6

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .end local v5    # "c":I
    .end local v6    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v7    # "first":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v8    # "idx":I
    .end local v9    # "modified":Z
    .end local v13    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v14

    invoke-virtual/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v14

    .line 711
    .restart local v5    # "c":I
    .restart local v6    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v7    # "first":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v8    # "idx":I
    .restart local v9    # "modified":Z
    .restart local v13    # "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_5
    const/4 v11, 0x0

    .line 713
    .restart local v11    # "oldVal":Ljava/lang/Object;, "TV;"
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    .line 715
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->size:Lorg/jsr166/LongAdder8;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$600(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jsr166/LongAdder8;->increment()V

    .line 717
    new-instance v6, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .end local v6    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v0, v1, v7, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v6, v13, v8

    .line 719
    .restart local v6    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$700(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jsr166/LongAdder8;->increment()V

    .line 721
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$700(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v14

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I
    invoke-static {v6, v14}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$802(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;I)I

    .line 723
    move-object/from16 v0, p0

    iput v5, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    .line 725
    const/4 v3, 0x1

    goto :goto_1

    .line 730
    .end local v11    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_6
    if-eqz v3, :cond_7

    .line 731
    sget-object v14, Lorg/jsr166/ConcurrentLinkedHashMap$1;->$SwitchMap$org$jsr166$ConcurrentLinkedHashMap$QueuePolicy:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {v15}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v15

    invoke-virtual {v15}, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 749
    sget-boolean v14, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->$assertionsDisabled:Z

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v14

    sget-object v15, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v14, v15, :cond_9

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 733
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    check-cast v14, Lorg/jsr166/ConcurrentLinkedDeque8;

    # invokes: Lorg/jsr166/ConcurrentLinkedHashMap;->recordInsert(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    invoke-static {v15, v6, v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$900(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v14

    if-lez v14, :cond_7

    .line 736
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->checkRemoveEldestEntrySegment()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v14

    sget-object v15, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-ne v14, v15, :cond_8

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v14

    if-lez v14, :cond_8

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # invokes: Lorg/jsr166/ConcurrentLinkedHashMap;->checkRemoveEldestEntry()V
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1200(Lorg/jsr166/ConcurrentLinkedHashMap;)V

    .line 762
    :cond_8
    return-object v11

    .line 741
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    invoke-interface {v14, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 743
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->maxCap:I
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1000(Lorg/jsr166/ConcurrentLinkedHashMap;)I

    move-result v14

    if-lez v14, :cond_7

    .line 744
    invoke-direct/range {p0 .. p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->checkRemoveEldestEntrySegment()V

    goto :goto_2

    .line 751
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v15}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v15

    # invokes: Lorg/jsr166/ConcurrentLinkedHashMap;->recordInsert(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    invoke-static {v14, v6, v15}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$900(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method readValueUnderLock(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 448
    :try_start_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {p1}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 23

    .prologue
    .line 791
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-object/from16 v20, v0

    .line 792
    .local v20, "oldTbl":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 794
    .local v19, "oldCap":I
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-lt v0, v3, :cond_0

    .line 867
    :goto_0
    return-void

    .line 811
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    .line 813
    .local v9, "c":I
    shl-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->newArray(I)[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v17

    .line 815
    .local v17, "newTbl":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v17

    array-length v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->threshold:I

    .line 817
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v22, v3, -0x1

    .line 819
    .local v22, "sizeMask":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    .line 822
    aget-object v10, v20, v11

    .line 824
    .local v10, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v10, :cond_1

    .line 825
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v10}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v18

    .line 827
    .local v18, "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v10}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v3

    and-int v12, v3, v22

    .line 830
    .local v12, "idx":I
    if-nez v18, :cond_2

    .line 831
    aput-object v10, v17, v12

    .line 819
    .end local v12    # "idx":I
    .end local v18    # "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 835
    .restart local v12    # "idx":I
    .restart local v18    # "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_2
    move-object/from16 v16, v10

    .line 837
    .local v16, "lastRun":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move v15, v12

    .line 839
    .local v15, "lastIdx":I
    move-object/from16 v14, v18

    .local v14, "last":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_2
    if-eqz v14, :cond_4

    .line 840
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v3

    and-int v13, v3, v22

    .line 842
    .local v13, "k":I
    if-eq v13, v15, :cond_3

    .line 843
    move v15, v13

    .line 844
    move-object/from16 v16, v14

    .line 839
    :cond_3
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v14}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v14

    goto :goto_2

    .line 848
    .end local v13    # "k":I
    :cond_4
    aput-object v16, v17, v15

    .line 851
    move-object/from16 v21, v10

    .local v21, "p":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 852
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v3

    and-int v13, v3, v22

    .line 854
    .restart local v13    # "k":I
    aget-object v5, v17, v13

    .line 856
    .local v5, "n":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    new-instance v2, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v4

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v6

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v7

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$800(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;Lorg/jsr166/ConcurrentLinkedDeque8$Node;I)V

    .line 858
    .local v2, "e0":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    aput-object v2, v17, v13

    .line 851
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static/range {v21 .. v21}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v21

    goto :goto_3

    .line 864
    .end local v2    # "e0":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "n":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v10    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v12    # "idx":I
    .end local v13    # "k":I
    .end local v14    # "last":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v15    # "lastIdx":I
    .end local v16    # "lastRun":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v18    # "next":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v21    # "p":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    .line 866
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    goto/16 :goto_0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "cleanupQ"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 879
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 882
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->removeLocked(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 885
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method removeLocked(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "cleanupQ"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    add-int/lit8 v8, v2, -0x1

    .line 902
    .local v8, "c":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 904
    .local v14, "tab":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    and-int v11, p2, v2

    .line 906
    .local v11, "idx":I
    aget-object v10, v14, v11

    .line 908
    .local v10, "first":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v9, v10

    .line 910
    .local v9, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 911
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v9

    goto :goto_0

    .line 913
    :cond_1
    const/4 v12, 0x0

    .line 915
    .local v12, "oldVal":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_4

    .line 916
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v15

    .line 918
    .local v15, "v":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 919
    :cond_2
    move-object v12, v15

    .line 924
    move-object/from16 v0, p0

    iget v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->modCnt:I

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->modCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$700(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->increment()V

    .line 928
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v1

    .line 930
    .local v1, "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v13, v10

    .local v13, "p":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v4, v1

    .end local v1    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local v4, "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eq v13, v9, :cond_3

    .line 931
    new-instance v1, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v3

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v5

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v6

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->modCnt:I
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$800(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;Lorg/jsr166/ConcurrentLinkedDeque8$Node;I)V

    .line 930
    .end local v4    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v1    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v13}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v13

    move-object v4, v1

    .end local v1    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v4    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    goto :goto_1

    .line 933
    :cond_3
    aput-object v4, v14, v11

    .line 935
    move-object/from16 v0, p0

    iput v8, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->cnt:I

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->size:Lorg/jsr166/LongAdder8;
    invoke-static {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$600(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/LongAdder8;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 941
    .end local v4    # "newFirst":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v12    # "oldVal":Ljava/lang/Object;, "TV;"
    .end local v13    # "p":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_4
    if-eqz v12, :cond_5

    if-eqz p4, :cond_5

    .line 942
    sget-object v2, Lorg/jsr166/ConcurrentLinkedHashMap$1;->$SwitchMap$org$jsr166$ConcurrentLinkedHashMap$QueuePolicy:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 957
    sget-boolean v2, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->qPlc:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    invoke-static {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$000(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    move-result-object v2

    sget-object v3, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    if-eq v2, v3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 944
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    check-cast v2, Lorg/jsr166/ConcurrentLinkedDeque8;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 946
    const/4 v2, 0x0

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v9, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$502(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 965
    :cond_5
    :goto_2
    return-object v12

    .line 952
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->segEntryQ:Ljava/util/Queue;

    invoke-interface {v2, v9}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 959
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap;->entryQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->access$1100(Lorg/jsr166/ConcurrentLinkedHashMap;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v2

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v9}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$500(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 961
    const/4 v2, 0x0

    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->node:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    invoke-static {v9, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$502(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    goto :goto_2

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 644
    const/4 v1, 0x0

    .line 647
    .local v1, "oldVal":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 649
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v2

    if-ne v2, p2, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_1
    if-eqz v0, :cond_2

    .line 653
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 655
    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0, p3}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .end local v1    # "oldVal":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 662
    return-object v1

    .line 659
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldVal":Ljava/lang/Object;, "TV;"
    .local p4, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 580
    const/4 v1, 0x0

    .line 583
    .local v1, "replaced":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 585
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v2

    if-ne v2, p2, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 586
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_1
    if-eqz v0, :cond_2

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    const/4 v1, 0x1

    .line 591
    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0, p4}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 598
    return v1

    .line 595
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method replacex(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldVal":Ljava/lang/Object;, "TV;"
    .local p4, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 615
    const/4 v1, 0x0

    .line 618
    .local v1, "replaced":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 620
    .local v0, "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->hash:I
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$200(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)I

    move-result v2

    if-ne v2, p2, :cond_0

    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$300(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    :cond_0
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->next:Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$400(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    goto :goto_0

    .line 623
    :cond_1
    if-eqz v0, :cond_2

    .line 624
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    move-object v1, p3

    .line 627
    # setter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0, p4}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$102(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v1    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 637
    return-object v1

    .line 630
    .restart local v1    # "replaced":Ljava/lang/Object;, "TV;"
    :cond_3
    :try_start_1
    # getter for: Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->val:Ljava/lang/Object;
    invoke-static {v0}, Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;->access$100(Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 634
    .end local v0    # "e":Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "replaced":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method setTable([Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$Segment;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "newTbl":[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;, "[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->threshold:I

    .line 419
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$Segment;->tbl:[Lorg/jsr166/ConcurrentLinkedHashMap$HashEntry;

    .line 420
    return-void
.end method
