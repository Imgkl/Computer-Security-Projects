.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbstractIter"
.end annotation


# instance fields
.field private depth:I

.field private final descending:Z

.field private final endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

.field private final forward:C

.field private final m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

.field private mostRecentNode:J

.field private path:[J

.field private final reverse:C

.field private final rootHolderSnapshot:J

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V
    .locals 4
    .param p2, "m"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    const/4 v2, 0x0

    .line 3363
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3348
    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    .line 3364
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 3365
    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->descending:Z

    .line 3366
    const/16 v2, 0x52

    iput-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    .line 3367
    const/16 v2, 0x4c

    iput-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->reverse:C

    .line 3368
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J
    invoke-static {p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->rootHolderSnapshot:J

    .line 3369
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->rootHolderSnapshot:J

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v0

    .line 3370
    .local v0, "root":J
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I
    invoke-static {p1, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    .line 3371
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3372
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->pushFirst(J)V

    .line 3373
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V
    .locals 15
    .param p2, "m"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p4, "minIncl"    # Z
    .param p6, "maxIncl"    # Z
    .param p7, "descending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3385
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    .local p3, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p5, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    move-object/from16 v0, p1

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3348
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    .line 3386
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 3387
    move/from16 v0, p7

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->descending:Z

    .line 3388
    if-nez p7, :cond_1

    const/16 v2, 0x52

    :goto_0
    iput-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    .line 3389
    if-nez p7, :cond_2

    const/16 v2, 0x4c

    :goto_1
    iput-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->reverse:C

    .line 3391
    if-nez p7, :cond_3

    move/from16 v10, p4

    .line 3393
    .local v10, "fromIncl":Z
    :goto_2
    if-nez p7, :cond_4

    move/from16 v14, p6

    .line 3395
    .local v14, "toIncl":Z
    :goto_3
    if-nez p7, :cond_5

    .line 3396
    move-object/from16 v9, p3

    .line 3397
    .local v9, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    move-object/from16 v11, p5

    .line 3404
    .local v11, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_4
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->rootHolderSnapshot:J

    .line 3405
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->rootHolderSnapshot:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v12

    .line 3407
    .local v12, "root":J
    if-eqz v11, :cond_6

    .line 3408
    const/4 v7, 0x1

    iget-char v8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v2 .. v8}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3410
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-nez v2, :cond_7

    .line 3432
    :cond_0
    :goto_5
    return-void

    .line 3388
    .end local v9    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v10    # "fromIncl":Z
    .end local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v12    # "root":J
    .end local v14    # "toIncl":Z
    :cond_1
    const/16 v2, 0x4c

    goto :goto_0

    .line 3389
    :cond_2
    const/16 v2, 0x52

    goto :goto_1

    :cond_3
    move/from16 v10, p6

    .line 3391
    goto :goto_2

    .restart local v10    # "fromIncl":Z
    :cond_4
    move/from16 v14, p4

    .line 3393
    goto :goto_3

    .line 3400
    .restart local v14    # "toIncl":Z
    :cond_5
    move-object/from16 v9, p5

    .line 3401
    .restart local v9    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    move-object/from16 v11, p3

    .restart local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    goto :goto_4

    .line 3417
    .restart local v12    # "root":J
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3420
    :cond_7
    move-object/from16 v0, p1

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->height(J)I
    invoke-static {v0, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    .line 3422
    if-nez v9, :cond_8

    .line 3423
    invoke-direct {p0, v12, v13}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->pushFirst(J)V

    goto :goto_5

    .line 3426
    :cond_8
    invoke-direct {p0, v12, v13, v9, v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->pushFirst(JLjava/lang/Comparable;Z)V

    .line 3428
    iget v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    if-lez v2, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->top()J

    move-result-wide v2

    move-object/from16 v0, p1

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z
    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3429
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->advance()V

    goto :goto_5
.end method

.method private advance()V
    .locals 11

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    const/4 v10, 0x0

    .line 3510
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->top()J

    move-result-wide v4

    .line 3512
    .local v4, "t":J
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->endKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v7, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3513
    const/4 v6, 0x0

    iput v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    .line 3514
    iput-object v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    .line 3544
    :goto_0
    return-void

    .line 3519
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-char v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    invoke-static {v6, v4, v5, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J

    move-result-wide v0

    .line 3521
    .local v0, "fwd":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_3

    .line 3522
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->pushFirst(J)V

    .line 3534
    :cond_2
    :goto_1
    iget v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    if-nez v6, :cond_4

    .line 3536
    iput-object v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    goto :goto_0

    .line 3529
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    iget v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    aget-wide v2, v6, v7

    .line 3531
    .local v2, "popped":J
    iget v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->top()J

    move-result-wide v8

    iget-char v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    invoke-static {v6, v8, v9, v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 3543
    .end local v2    # "popped":J
    :cond_4
    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->top()J

    move-result-wide v8

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->vOptIsNull(J)Z
    invoke-static {v6, v8, v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0
.end method

.method private cmp(Ljava/lang/Comparable;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;TK;)I"
        }
    .end annotation

    .prologue
    .line 3440
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    .local p1, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p2, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 3442
    .local v0, "c":I
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->descending:Z

    if-nez v1, :cond_0

    .line 3446
    .end local v0    # "c":I
    :goto_0
    return v0

    .restart local v0    # "c":I
    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    neg-int v1, v0

    goto :goto_1
.end method

.method private path(J)V
    .locals 3
    .param p1, "node"    # J

    .prologue
    .line 3465
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 3466
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    .line 3468
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    aput-wide p1, v0, v1

    .line 3469
    return-void
.end method

.method private pushFirst(J)V
    .locals 3
    .param p1, "node"    # J

    .prologue
    .line 3454
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 3455
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path(J)V

    .line 3457
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-char v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->reverse:C

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    invoke-static {v0, p1, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J

    move-result-wide p1

    goto :goto_0

    .line 3459
    :cond_0
    return-void
.end method

.method private pushFirst(JLjava/lang/Comparable;Z)V
    .locals 5
    .param p1, "node"    # J
    .param p4, "fromIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)V"
        }
    .end annotation

    .prologue
    .line 3477
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    .local p3, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2

    .line 3478
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v1, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->cmp(Ljava/lang/Comparable;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)I

    move-result v0

    .line 3480
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 3482
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->forward:C

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    invoke-static {v1, p1, p2, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J

    move-result-wide p1

    goto :goto_0

    .line 3485
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path(J)V

    .line 3487
    if-nez v0, :cond_3

    .line 3496
    .end local v0    # "c":I
    :cond_2
    return-void

    .line 3492
    .restart local v0    # "c":I
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-char v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->reverse:C

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->child(JC)J
    invoke-static {v1, p1, p2, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JC)J

    move-result-wide p1

    goto :goto_0
.end method

.method private top()J
    .locals 2

    .prologue
    .line 3502
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->path:[J

    iget v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 3550
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextNode()J
    .locals 2

    .prologue
    .line 3557
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    iget v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->depth:I

    if-nez v0, :cond_0

    .line 3558
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3561
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->top()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->mostRecentNode:J

    .line 3563
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->advance()V

    .line 3565
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->mostRecentNode:J

    return-wide v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.AbstractIter;"
    const-wide/16 v4, 0x0

    .line 3572
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->mostRecentNode:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 3573
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3576
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->mostRecentNode:J

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3578
    iput-wide v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;->mostRecentNode:J

    .line 3579
    return-void
.end method
