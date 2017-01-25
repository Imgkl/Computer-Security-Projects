.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
.super Ljava/lang/Object;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile cap:J

.field private volatile cnt:J

.field private final idx:I

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile memCap:J

.field private volatile tblAddr:J

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

.field private threshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;IJ)V
    .locals 5
    .param p2, "idx"    # I
    .param p3, "cap"    # J

    .prologue
    .line 580
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 581
    iput p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->idx:I

    .line 582
    iput-wide p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cap:J

    .line 584
    long-to-float v0, p3

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F
    invoke-static {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    .line 586
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    .line 588
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocateSystem(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .line 589
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;IJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$1;

    .prologue
    .line 554
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;IJ)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;ISJ)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;
    .param p1, "x1"    # I
    .param p2, "x2"    # S
    .param p3, "x3"    # J

    .prologue
    .line 554
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->freeSpace(ISJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .prologue
    .line 554
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;

    .prologue
    .line 554
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    return-wide v0
.end method

.method private freeSpace(ISJ)I
    .locals 33
    .param p1, "hash"    # I
    .param p2, "order"    # S
    .param p3, "qAddr"    # J

    .prologue
    .line 975
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    sget-boolean v27, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v27

    if-nez v27, :cond_0

    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 977
    :cond_0
    const/16 v16, 0x0

    .line 978
    .local v16, "keyBytes":[B
    const/16 v25, 0x0

    .line 980
    .local v25, "valBytes":[B
    const/16 v24, 0x0

    .line 981
    .local v24, "relSize":I
    const-wide/16 v22, 0x0

    .line 983
    .local v22, "relAddr":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeLock(I)J

    move-result-wide v10

    .line 987
    .local v10, "binAddr":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->entry(SJ)J

    move-result-wide v8

    .line 989
    .local v8, "addr":J
    const-wide/16 v28, 0x0

    cmp-long v27, v8, v28

    if-eqz v27, :cond_6

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v10, v11, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v14

    .line 992
    .local v14, "first":J
    const-wide/16 v28, 0x0

    cmp-long v27, v14, v28

    if-eqz v27, :cond_6

    .line 993
    const-wide/16 v20, 0x0

    .line 994
    .local v20, "prev":J
    move-wide v12, v14

    .line 997
    .local v12, "cur":J
    :goto_0
    cmp-long v27, v12, v8

    if-eqz v27, :cond_1

    const-wide/16 v28, 0x0

    cmp-long v27, v12, v28

    if-eqz v27, :cond_1

    .line 998
    move-wide/from16 v20, v12

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v12

    goto :goto_0

    .line 1003
    :cond_1
    const-wide/16 v28, 0x0

    cmp-long v27, v12, v28

    if-eqz v27, :cond_6

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v18

    .line 1006
    .local v18, "next":J
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-eqz v27, :cond_3

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1015
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    move-result-object v27

    if-eqz v27, :cond_2

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyBytes(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)[B

    move-result-object v16

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v17

    .line 1022
    .local v17, "keyLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v26

    .line 1024
    .local v26, "valLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    const-wide/16 v28, 0x1c

    add-long v28, v28, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v25

    .line 1030
    .end local v17    # "keyLen":I
    .end local v26    # "valLen":I
    :cond_2
    sget-boolean v27, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v6

    .local v6, "a":J
    cmp-long v27, p3, v6

    if-eqz v27, :cond_5

    new-instance v27, Ljava/lang/AssertionError;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Queue node address mismatch [qAddr="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", entryQueueAddr="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x5d

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    .end local v6    # "a":J
    .end local v8    # "addr":J
    .end local v12    # "cur":J
    .end local v14    # "first":J
    .end local v18    # "next":J
    .end local v20    # "prev":J
    :catchall_0
    move-exception v27

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v28

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    throw v27

    .line 1009
    .restart local v8    # "addr":J
    .restart local v12    # "cur":J
    .restart local v14    # "first":J
    .restart local v18    # "next":J
    .restart local v20    # "prev":J
    :cond_3
    const-wide/16 v28, 0x0

    cmp-long v27, v18, v28

    if-nez v27, :cond_4

    .line 1010
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v10, v11, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->clear(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    goto/16 :goto_1

    .line 1012
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-wide/from16 v0, v18

    move-object/from16 v2, v27

    invoke-static {v10, v11, v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    goto/16 :goto_1

    .line 1033
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->size(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v24

    .line 1034
    move-wide/from16 v22, v12

    .line 1036
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x1

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/jsr166/LongAdder8;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 1044
    .end local v12    # "cur":J
    .end local v14    # "first":J
    .end local v18    # "next":J
    .end local v20    # "prev":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->poll(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v27

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1054
    if-eqz v16, :cond_8

    .line 1055
    sget-boolean v27, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v27, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    move-result-object v27

    if-nez v27, :cond_7

    new-instance v27, Ljava/lang/AssertionError;

    invoke-direct/range {v27 .. v27}, Ljava/lang/AssertionError;-><init>()V

    throw v27

    .line 1057
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v27, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evictLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v28, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v25

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;->onEvict(II[B[B)V

    .line 1060
    :cond_8
    return v24
.end method

.method private readLock(I)J
    .locals 2
    .param p1, "hash"    # I

    .prologue
    .line 684
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 687
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->binAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private readUnlock()V
    .locals 1

    .prologue
    .line 694
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 695
    return-void
.end method

.method private rehash()V
    .locals 38

    .prologue
    .line 885
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x40000000

    cmp-long v6, v34, v36

    if-gez v6, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v36, v0

    cmp-long v6, v34, v36

    if-gtz v6, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    const/16 v32, 0x0

    .line 890
    .local v32, "release":Z
    const-wide/16 v28, -0x1

    .line 891
    .local v28, "oldTblAddr":J
    const-wide/16 v26, -0x1

    .line 893
    .local v26, "oldMemCap":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 897
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cap:J

    move-wide/from16 v24, v0

    .line 898
    .local v24, "oldCap":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    move-wide/from16 v26, v0

    .line 899
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    move-wide/from16 v28, v0

    .line 901
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v34, v0

    const-wide/32 v36, 0x40000000

    cmp-long v6, v34, v36

    if-gez v6, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v36, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v34, v36

    if-gtz v6, :cond_6

    .line 951
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 954
    if-eqz v32, :cond_0

    .line 955
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    move-wide/from16 v34, v0

    cmp-long v6, v28, v34

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 957
    :cond_3
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    const-wide/16 v34, -0x1

    cmp-long v6, v28, v34

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 958
    :cond_4
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    const-wide/16 v34, -0x1

    cmp-long v6, v26, v34

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 960
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V

    goto/16 :goto_0

    .line 904
    :cond_6
    const/4 v6, 0x1

    shl-long v10, v24, v6

    .line 905
    .local v10, "newCap":J
    const-wide/16 v34, 0x8

    mul-long v18, v10, v34

    .line 912
    .local v18, "newMemCap":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    const/16 v33, 0x1

    move-wide/from16 v0, v18

    move/from16 v2, v33

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocateSystem(JZ)J

    move-result-wide v8

    .line 914
    .local v8, "newTblAddr":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    move-wide/from16 v34, v0

    add-long v30, v28, v34

    .line 916
    .local v30, "oldTblEnd":J
    move-wide/from16 v22, v28

    .local v22, "oldBinAddr":J
    :goto_1
    cmp-long v6, v22, v30

    if-gez v6, :cond_9

    .line 917
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v12

    .line 919
    .local v12, "entryAddr":J
    const-wide/16 v34, 0x0

    cmp-long v6, v12, v34

    if-nez v6, :cond_8

    .line 916
    :goto_2
    const-wide/16 v34, 0x8

    add-long v22, v22, v34

    goto :goto_1

    .line 937
    .local v7, "hash":I
    .local v14, "newBinAddr":J
    .local v16, "newFirst":J
    .local v20, "next":J
    :cond_7
    move-wide/from16 v12, v20

    .line 923
    .end local v7    # "hash":I
    .end local v14    # "newBinAddr":J
    .end local v16    # "newFirst":J
    .end local v20    # "next":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v12, v13, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->hash(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v7

    .line 924
    .restart local v7    # "hash":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v12, v13, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v20

    .restart local v20    # "next":J
    move-object/from16 v6, p0

    .line 926
    invoke-virtual/range {v6 .. v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->binAddress(IJJ)J

    move-result-wide v14

    .line 928
    .restart local v14    # "newBinAddr":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v14, v15, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v16

    .line 930
    .restart local v16    # "newFirst":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v14, v15, v12, v13, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 934
    const-wide/16 v34, 0x0

    cmp-long v6, v20, v34

    if-nez v6, :cond_7

    goto :goto_2

    .line 941
    .end local v7    # "hash":I
    .end local v12    # "entryAddr":J
    .end local v14    # "newBinAddr":J
    .end local v16    # "newFirst":J
    .end local v20    # "next":J
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .line 942
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    .line 943
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cap:J

    .line 944
    long-to-float v6, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v33, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F
    invoke-static/range {v33 .. v33}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)F

    move-result v33

    mul-float v6, v6, v33

    float-to-long v0, v6

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    .line 945
    const/16 v32, 0x1

    .line 947
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 948
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->evtLsnr:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;

    move-result-object v6

    sget-object v33, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;->REHASH:Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;

    move-object/from16 v0, v33

    invoke-interface {v6, v0}, Lorg/apache/ignite/internal/util/offheap/GridOffHeapEventListener;->onEvent(Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 954
    if-eqz v32, :cond_0

    .line 955
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    move-wide/from16 v34, v0

    cmp-long v6, v28, v34

    if-nez v6, :cond_b

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 957
    :cond_b
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_c

    const-wide/16 v34, -0x1

    cmp-long v6, v28, v34

    if-nez v6, :cond_c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 958
    :cond_c
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    const-wide/16 v34, -0x1

    cmp-long v6, v26, v34

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 960
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    move-wide/from16 v0, v28

    move-wide/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V

    goto/16 :goto_0

    .line 951
    .end local v8    # "newTblAddr":J
    .end local v10    # "newCap":J
    .end local v18    # "newMemCap":J
    .end local v22    # "oldBinAddr":J
    .end local v24    # "oldCap":J
    .end local v30    # "oldTblEnd":J
    :catchall_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 954
    if-eqz v32, :cond_11

    .line 955
    sget-boolean v33, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v33, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    move-wide/from16 v34, v0

    cmp-long v33, v28, v34

    if-nez v33, :cond_e

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 957
    :cond_e
    sget-boolean v33, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v33, :cond_f

    const-wide/16 v34, -0x1

    cmp-long v33, v28, v34

    if-nez v33, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 958
    :cond_f
    sget-boolean v33, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v33, :cond_10

    const-wide/16 v34, -0x1

    cmp-long v33, v26, v34

    if-nez v33, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 960
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v33, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v33 .. v33}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V

    :cond_11
    throw v6
.end method

.method private writeLock(I)J
    .locals 2
    .param p1, "hash"    # I

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 666
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->binAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private writeUnlock()V
    .locals 1

    .prologue
    .line 673
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 674
    return-void
.end method


# virtual methods
.method binAddress(I)J
    .locals 6
    .param p1, "hash"    # I

    .prologue
    .line 642
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cap:J

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->binAddress(IJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method binAddress(IJJ)J
    .locals 4
    .param p1, "hash"    # I
    .param p2, "tblPtr"    # J
    .param p4, "cap"    # J

    .prologue
    .line 652
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    invoke-virtual {p0, p1, p4, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->binIndex(IJ)J

    move-result-wide v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    return-wide v0
.end method

.method binIndex(IJ)J
    .locals 4
    .param p1, "hash"    # I
    .param p2, "cap"    # J

    .prologue
    .line 632
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 634
    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    and-long/2addr v0, v2

    return-wide v0
.end method

.method capacity()J
    .locals 2

    .prologue
    .line 609
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cap:J

    return-wide v0
.end method

.method contains(I[B)Z
    .locals 6
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 1352
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readLock(I)J

    move-result-wide v2

    .line 1355
    .local v2, "binAddr":J
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v0

    .line 1357
    .local v0, "addr":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 1358
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v0, v1, p2, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1359
    const/4 v4, 0x1

    .line 1367
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    :goto_1
    return v4

    .line 1361
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1364
    :cond_1
    const/4 v4, 0x0

    .line 1367
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    goto :goto_1

    .end local v0    # "addr":J
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    throw v4
.end method

.method count()J
    .locals 2

    .prologue
    .line 623
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    return-wide v0
.end method

.method destruct()V
    .locals 14

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const-wide/16 v12, 0x0

    .line 701
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 704
    :try_start_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v6, v12

    if-nez v6, :cond_0

    .line 728
    iput-wide v12, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .line 730
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 732
    :goto_0
    return-void

    .line 707
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .local v0, "binAddr":J
    :goto_1
    iget-wide v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_3

    .line 708
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v2

    .line 710
    .local v2, "entryAddr":J
    cmp-long v6, v2, v12

    if-nez v6, :cond_2

    .line 707
    :goto_2
    const-wide/16 v6, 0x8

    add-long/2addr v0, v6

    goto :goto_1

    .line 721
    .local v4, "next":J
    :cond_1
    move-wide v2, v4

    .line 714
    .end local v4    # "next":J
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v4

    .line 716
    .restart local v4    # "next":J
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->size(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v2, v3, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 718
    cmp-long v6, v4, v12

    if-nez v6, :cond_1

    goto :goto_2

    .line 725
    .end local v2    # "entryAddr":J
    .end local v4    # "next":J
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    iget-wide v8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    iget-wide v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->memCap:J

    invoke-virtual {v6, v8, v9, v10, v11}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->releaseSystem(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    iput-wide v12, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .line 730
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 728
    .end local v0    # "binAddr":J
    :catchall_0
    move-exception v6

    iput-wide v12, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    .line 730
    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method enableEviction(I[B)V
    .locals 10
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const-wide/16 v8, 0x0

    .line 1414
    sget-boolean v6, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1416
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeLock(I)J

    move-result-wide v2

    .line 1419
    .local v2, "binAddr":J
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v0

    .line 1421
    .local v0, "addr":J
    :goto_0
    cmp-long v6, v0, v8

    if-eqz v6, :cond_3

    .line 1422
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, p2, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1423
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v4

    .line 1425
    .local v4, "qAddr":J
    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 1426
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v7

    invoke-virtual {v6, v7, v0, v1, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->offer(IJI)J

    move-result-wide v4

    .line 1428
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v4, v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1440
    .end local v4    # "qAddr":J
    :goto_1
    return-void

    .line 1434
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1438
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    goto :goto_1

    .end local v0    # "addr":J
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    throw v6
.end method

.method get(I[B)[B
    .locals 12
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1448
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readLock(I)J

    move-result-wide v2

    .line 1451
    .local v2, "binAddr":J
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v0

    .line 1453
    .local v0, "addr":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 1454
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, p2, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1458
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v4

    .line 1459
    .local v4, "keyLen":I
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v5

    .line 1461
    .local v5, "valLen":I
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    const-wide/16 v8, 0x1c

    add-long/2addr v8, v0

    int-to-long v10, v4

    add-long/2addr v8, v10

    invoke-virtual {v6, v8, v9, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1471
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    .end local v4    # "keyLen":I
    .end local v5    # "valLen":I
    :goto_1
    return-object v6

    .line 1465
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 1468
    :cond_1
    const/4 v6, 0x0

    .line 1471
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    goto :goto_1

    .end local v0    # "addr":J
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    throw v6
.end method

.method id()I
    .locals 1

    .prologue
    .line 595
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->idx:I

    return v0
.end method

.method insert(I[B[B)V
    .locals 20
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .param p3, "valBytes"    # [B

    .prologue
    .line 1070
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1071
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    .line 1073
    :cond_0
    move-object/from16 v0, p2

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1c

    move-object/from16 v0, p3

    array-length v5, v0

    add-int v16, v4, v5

    .line 1075
    .local v16, "size":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->reserve(J)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v11, 0x1

    .line 1078
    .local v11, "poll":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    move/from16 v0, v16

    int-to-long v6, v0

    const/4 v5, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v6, v7, v5, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(JZZ)J

    move-result-wide v2

    .line 1081
    .local v2, "addr":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->write(JI[B[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1083
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeLock(I)J

    move-result-wide v8

    .line 1086
    .local v8, "binAddr":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v12

    .line 1088
    .local v12, "first":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v2, v3, v12, v13, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v8, v9, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v4

    if-nez v4, :cond_4

    const-wide/16 v14, 0x0

    .line 1095
    .local v14, "qAddr":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    invoke-static {v2, v3, v14, v15, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1097
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/jsr166/LongAdder8;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/LongAdder8;->increment()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1109
    if-eqz v11, :cond_1

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    move-result-object v4

    move/from16 v0, v16

    invoke-interface {v4, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;->lruPoll(I)V

    .line 1112
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 1113
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    .line 1115
    :cond_2
    return-void

    .line 1075
    .end local v2    # "addr":J
    .end local v8    # "binAddr":J
    .end local v11    # "poll":Z
    .end local v12    # "first":J
    .end local v14    # "qAddr":J
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1093
    .restart local v2    # "addr":J
    .restart local v8    # "binAddr":J
    .restart local v11    # "poll":Z
    .restart local v12    # "first":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v4, v5, v2, v3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->offer(IJI)J
    :try_end_1
    .catch Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    goto :goto_1

    .line 1101
    .end local v12    # "first":J
    :catch_0
    move-exception v10

    .line 1102
    .local v10, "e":Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v4

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-virtual {v4, v2, v3, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1104
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1107
    .end local v10    # "e":Lorg/apache/ignite/internal/util/offheap/GridOffHeapOutOfMemoryException;
    :catchall_0
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1109
    if-eqz v11, :cond_5

    .line 1110
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    invoke-static {v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;->lruPoll(I)V

    .line 1112
    :cond_5
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v18, v0

    cmp-long v5, v6, v18

    if-lez v5, :cond_6

    .line 1113
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    :cond_6
    throw v4
.end method

.method iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 738
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$1;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;)V

    return-object v0
.end method

.method iterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/typedef/CX2",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 809
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    .local p1, "c":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment$2;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;Lorg/apache/ignite/internal/util/typedef/CX2;)V

    return-object v0
.end method

.method loadFactor()F
    .locals 1

    .prologue
    .line 616
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->load:F
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)F

    move-result v0

    return v0
.end method

.method put(I[B[B)Z
    .locals 30
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .param p3, "valBytes"    # [B

    .prologue
    .line 1125
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const/4 v4, 0x1

    .line 1127
    .local v4, "isNew":Z
    const/4 v15, 0x0

    .line 1129
    .local v15, "poll":Z
    const/16 v27, 0x0

    .line 1131
    .local v27, "size":I
    const/16 v26, 0x0

    .line 1132
    .local v26, "relSize":I
    const-wide/16 v24, 0x0

    .line 1134
    .local v24, "relAddr":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeLock(I)J

    move-result-wide v16

    .line 1137
    .local v16, "binAddr":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v12

    .line 1139
    .local v12, "first":J
    const-wide/16 v10, 0x0

    .line 1141
    .local v10, "qAddr":J
    const-wide/16 v8, 0x0

    cmp-long v7, v12, v8

    if-eqz v7, :cond_b

    .line 1142
    const-wide/16 v22, 0x0

    .line 1143
    .local v22, "prev":J
    move-wide/from16 v18, v12

    .line 1146
    .local v18, "cur":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v20

    .line 1149
    .local v20, "next":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1151
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v7

    move-object/from16 v0, p3

    array-length v8, v0

    if-ne v7, v8, :cond_9

    .line 1152
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueBytes(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1154
    const/4 v4, 0x0

    .line 1156
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1157
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v10

    .line 1159
    const-wide/16 v8, 0x0

    cmp-long v7, v10, v8

    if-nez v7, :cond_5

    .line 1160
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v8

    move-wide/from16 v0, v18

    move/from16 v2, p1

    invoke-virtual {v7, v8, v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->offer(IJI)J

    move-result-wide v10

    .line 1162
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 1225
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1228
    const-wide/16 v8, 0x0

    cmp-long v8, v24, v8

    if-eqz v8, :cond_2

    .line 1229
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v8

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1231
    :cond_2
    if-eqz v15, :cond_3

    .line 1232
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    move-result-object v8

    move/from16 v0, v27

    invoke-interface {v8, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;->lruPoll(I)V

    .line 1234
    :cond_3
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v28, v0

    cmp-long v8, v8, v28

    if-lez v8, :cond_4

    .line 1235
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    .end local v18    # "cur":J
    .end local v20    # "next":J
    .end local v22    # "prev":J
    :cond_4
    :goto_1
    return v7

    .line 1165
    .restart local v18    # "cur":J
    .restart local v20    # "next":J
    .restart local v22    # "prev":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v10, v11, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->touch(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1225
    .end local v10    # "qAddr":J
    .end local v12    # "first":J
    .end local v18    # "cur":J
    .end local v20    # "next":J
    .end local v22    # "prev":J
    :catchall_0
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1228
    const-wide/16 v8, 0x0

    cmp-long v8, v24, v8

    if-eqz v8, :cond_6

    .line 1229
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v8

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v28

    invoke-virtual {v8, v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1231
    :cond_6
    if-eqz v15, :cond_7

    .line 1232
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    move-result-object v8

    move/from16 v0, v27

    invoke-interface {v8, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;->lruPoll(I)V

    .line 1234
    :cond_7
    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v28, v0

    cmp-long v8, v8, v28

    if-lez v8, :cond_8

    .line 1235
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    :cond_8
    throw v7

    .line 1171
    .restart local v10    # "qAddr":J
    .restart local v12    # "first":J
    .restart local v18    # "cur":J
    .restart local v20    # "next":J
    .restart local v22    # "prev":J
    :cond_9
    const-wide/16 v8, 0x0

    cmp-long v7, v22, v8

    if-eqz v7, :cond_10

    .line 1172
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1176
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v10

    .line 1178
    const-wide/16 v8, 0x0

    cmp-long v7, v10, v8

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1179
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v8

    move-wide/from16 v0, v18

    move/from16 v2, p1

    invoke-virtual {v7, v8, v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->offer(IJI)J

    move-result-wide v10

    .line 1181
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v10, v11, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1185
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->size(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v26

    .line 1186
    move-wide/from16 v24, v18

    .line 1188
    const/4 v4, 0x0

    .line 1202
    .end local v18    # "cur":J
    .end local v20    # "next":J
    .end local v22    # "prev":J
    :cond_b
    :goto_3
    move-object/from16 v0, p2

    array-length v7, v0

    add-int/lit8 v7, v7, 0x1c

    move-object/from16 v0, p3

    array-length v8, v0

    add-int v27, v7, v8

    .line 1204
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move/from16 v0, v27

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->reserve(J)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v15, 0x1

    .line 1206
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move/from16 v0, v27

    int-to-long v8, v0

    const/4 v14, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v8, v9, v14, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->allocate(JZZ)J

    move-result-wide v5

    .line 1208
    .local v5, "addr":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v5, v6, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1210
    if-eqz v4, :cond_14

    .line 1211
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    const-wide/16 v28, 0x1

    add-long v8, v8, v28

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    .line 1213
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/jsr166/LongAdder8;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1215
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    if-nez v7, :cond_13

    const-wide/16 v10, 0x0

    .line 1220
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v14

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v5 .. v14}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->write(JI[B[BJJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1228
    const-wide/16 v8, 0x0

    cmp-long v7, v24, v8

    if-eqz v7, :cond_d

    .line 1229
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v7

    move/from16 v0, v26

    int-to-long v8, v0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    .line 1231
    :cond_d
    if-eqz v15, :cond_e

    .line 1232
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lruPoller:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;

    move-result-object v7

    move/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLruPoller;->lruPoll(I)V

    .line 1234
    :cond_e
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->threshold:J

    move-wide/from16 v28, v0

    cmp-long v7, v8, v28

    if-lez v7, :cond_f

    .line 1235
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->rehash()V

    :cond_f
    move v7, v4

    goto/16 :goto_1

    .line 1174
    .end local v5    # "addr":J
    .restart local v18    # "cur":J
    .restart local v20    # "next":J
    .restart local v22    # "prev":J
    :cond_10
    move-wide/from16 v12, v20

    goto/16 :goto_2

    .line 1193
    :cond_11
    move-wide/from16 v22, v18

    .line 1194
    move-wide/from16 v18, v20

    .line 1197
    const-wide/16 v8, 0x0

    cmp-long v7, v20, v8

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 1204
    .end local v18    # "cur":J
    .end local v20    # "next":J
    .end local v22    # "prev":J
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1215
    .restart local v5    # "addr":J
    :cond_13
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->part:I
    invoke-static {v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)I

    move-result v8

    move/from16 v0, p1

    invoke-virtual {v7, v8, v5, v6, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->offer(IJI)J

    move-result-wide v10

    goto :goto_5

    .line 1217
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1218
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v7

    invoke-virtual {v7, v10, v11, v5, v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->touch(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method remove(I[B)[B
    .locals 1
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .line 1246
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->remove(I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method remove(I[BZ)[B
    .locals 30
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .param p3, "retval"    # Z

    .prologue
    .line 1266
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const/4 v13, 0x0

    .line 1267
    .local v13, "relSize":I
    const-wide/16 v20, 0x0

    .line 1268
    .local v20, "relAddr":J
    const-wide/16 v18, 0x0

    .line 1270
    .local v18, "qAddr":J
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeLock(I)J

    move-result-wide v6

    .line 1273
    .local v6, "binAddr":J
    const/16 v22, 0x0

    .line 1275
    .local v22, "valBytes":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v10

    .line 1277
    .local v10, "first":J
    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-eqz v24, :cond_0

    .line 1278
    const-wide/16 v16, 0x0

    .line 1279
    .local v16, "prev":J
    move-wide v8, v10

    .line 1282
    .local v8, "cur":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v14

    .line 1285
    .local v14, "next":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v8, v9, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1286
    const-wide/16 v24, 0x0

    cmp-long v24, v16, v24

    if-eqz v24, :cond_3

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-wide/from16 v0, v16

    move-object/from16 v2, v24

    invoke-static {v0, v1, v14, v15, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1298
    :goto_1
    if-eqz p3, :cond_7

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v12

    .line 1300
    .local v12, "keyLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v23

    .line 1302
    .local v23, "valLen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    const-wide/16 v26, 0x1c

    add-long v26, v26, v8

    int-to-long v0, v12

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v22

    .line 1309
    .end local v12    # "keyLen":I
    .end local v23    # "valLen":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v18

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->size(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v13

    .line 1311
    move-wide/from16 v20, v8

    .line 1313
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->cnt:J

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->totalCnt:Lorg/jsr166/LongAdder8;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/jsr166/LongAdder8;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/jsr166/LongAdder8;->decrement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    .end local v8    # "cur":J
    .end local v14    # "next":J
    .end local v16    # "prev":J
    :cond_0
    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 1334
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-eqz v24, :cond_1

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->remove(J)V

    .line 1338
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1341
    const-wide/16 v24, 0x0

    cmp-long v24, v20, v24

    if-eqz v24, :cond_2

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v20

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    :cond_2
    return-object v22

    .line 1289
    .restart local v8    # "cur":J
    .restart local v14    # "next":J
    .restart local v16    # "prev":J
    :cond_3
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-nez v24, :cond_6

    .line 1290
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->clear(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1333
    .end local v8    # "cur":J
    .end local v10    # "first":J
    .end local v14    # "next":J
    .end local v16    # "prev":J
    :catchall_0
    move-exception v24

    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v25, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 1334
    const-wide/16 v26, 0x0

    cmp-long v25, v18, v26

    if-eqz v25, :cond_4

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v25, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->remove(J)V

    .line 1338
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->writeUnlock()V

    .line 1341
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-eqz v25, :cond_5

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v25, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v25 .. v25}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v25

    int-to-long v0, v13

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->release(JJ)V

    :cond_5
    throw v24

    .line 1292
    .restart local v8    # "cur":J
    .restart local v10    # "first":J
    .restart local v14    # "next":J
    .restart local v16    # "prev":J
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move-object/from16 v24, v0

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static/range {v24 .. v24}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v6, v7, v14, v15, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    goto/16 :goto_1

    .line 1305
    :cond_7
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->EMPTY_BYTES:[B
    invoke-static {}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1400()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v22

    goto/16 :goto_2

    .line 1321
    :cond_8
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-eqz v24, :cond_0

    .line 1324
    move-wide/from16 v16, v8

    .line 1325
    move-wide v8, v14

    .line 1326
    goto/16 :goto_0
.end method

.method removex(I[B)Z
    .locals 3
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->remove(I[BZ)[B

    move-result-object v1

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->EMPTY_BYTES:[B
    invoke-static {}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$1400()[B

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method tableAddress()J
    .locals 2

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->tblAddr:J

    return-wide v0
.end method

.method valuePointer(I[B)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 16
    .param p1, "hash"    # I
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1379
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap<TK;>.Segment<TK;>;"
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readLock(I)J

    move-result-wide v4

    .line 1382
    .local v4, "binAddr":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v4, v5, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;->first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v2

    .line 1384
    .local v2, "addr":J
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_2

    .line 1385
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1386
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1387
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J

    move-result-wide v8

    .line 1389
    .local v8, "qAddr":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v8, v9, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->clearQueueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1390
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->lru:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeLru;->remove(J)V

    .line 1393
    .end local v8    # "qAddr":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v6

    .line 1394
    .local v6, "keyLen":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v7

    .line 1396
    .local v7, "valLen":I
    new-instance v10, Lorg/apache/ignite/lang/IgniteBiTuple;

    const-wide/16 v12, 0x1c

    add-long/2addr v12, v2

    int-to-long v14, v6

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    .end local v6    # "keyLen":I
    .end local v7    # "valLen":I
    :goto_1
    return-object v10

    .line 1399
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->mem:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;
    invoke-static {v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    move-result-object v10

    invoke-static {v2, v3, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto/16 :goto_0

    .line 1402
    :cond_2
    const/4 v10, 0x0

    .line 1405
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    goto :goto_1

    .end local v2    # "addr":J
    :catchall_0
    move-exception v10

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Segment;->readUnlock()V

    throw v10
.end method
