.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final descending:Z

.field private final m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient maxCmp:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final maxIncl:Z

.field private final maxKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

.field private transient minCmp:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final minIncl:Z

.field private final minKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZ)V
    .locals 0
    .param p3, "minKey"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p5, "minIncl"    # Z
    .param p6, "maxKey"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p8, "maxIncl"    # Z
    .param p9, "descending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3798
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p2, "m":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>;"
    .local p4, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p7, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3799
    iput-object p2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 3800
    iput-object p3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3801
    iput-object p4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    .line 3802
    iput-boolean p5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    .line 3803
    iput-object p6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3804
    iput-object p7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    .line 3805
    iput-boolean p8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    .line 3806
    iput-boolean p9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    .line 3807
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p4, "x3"    # Ljava/lang/Comparable;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .param p7, "x6"    # Ljava/lang/Comparable;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-direct/range {p0 .. p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .prologue
    .line 3761
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .prologue
    .line 3761
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    return-void
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    return v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Ljava/lang/Comparable;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    return v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    .prologue
    .line 3761
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    return v0
.end method

.method private firstEntryOrNull()Ljava/util/Map$Entry;
    .locals 7

    .prologue
    .line 4045
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method private firstKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4031
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method private inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 3844
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastEntryOrNull()Ljava/util/Map$Entry;
    .locals 7

    .prologue
    .line 4052
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method private lastKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4038
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    return-object v0
.end method

.method private maxDir()C
    .locals 1

    .prologue
    .line 3871
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4c

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x52

    goto :goto_0
.end method

.method private minDir()C
    .locals 1

    .prologue
    .line 3864
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4c

    goto :goto_0
.end method

.method private requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 3851
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez p1, :cond_0

    .line 3852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3855
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3856
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3858
    :cond_1
    return-void
.end method

.method private subMapImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 1
    .param p2, "fromIncl"    # Z
    .param p4, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4276
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-eqz p1, :cond_0

    .line 4277
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 4280
    :cond_0
    if-eqz p3, :cond_1

    .line 4281
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 4284
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method private subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 14
    .param p2, "fromIncl"    # Z
    .param p4, "toIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4295
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez p1, :cond_1

    const/4 v12, 0x0

    .line 4297
    .local v12, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    if-nez p3, :cond_2

    const/4 v13, 0x0

    .line 4299
    .local v13, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 4300
    move-object/from16 v0, p3

    invoke-interface {v12, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    .line 4302
    .local v11, "c":I
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_3

    if-lez v11, :cond_4

    .line 4303
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4295
    .end local v11    # "c":I
    .end local v12    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v13    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v12

    goto :goto_0

    .line 4297
    .restart local v12    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparable(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v13

    goto :goto_1

    .line 4302
    .restart local v11    # "c":I
    .restart local v13    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :cond_3
    if-ltz v11, :cond_0

    .line 4307
    .end local v11    # "c":I
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 4308
    .local v4, "minK":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    iget-object v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    .line 4310
    .local v5, "minC":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-boolean v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    .line 4311
    .local v6, "minI":Z
    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 4312
    .local v7, "maxK":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    iget-object v8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    .line 4313
    .local v8, "maxC":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iget-boolean v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    .line 4315
    .local v9, "maxI":Z
    if-eqz p1, :cond_5

    .line 4316
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_7

    .line 4317
    move-object v4, p1

    .line 4318
    move-object v5, v12

    .line 4319
    move/from16 v6, p2

    .line 4328
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 4329
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_8

    .line 4330
    move-object/from16 v7, p3

    .line 4331
    move-object v8, v13

    .line 4332
    move/from16 v9, p4

    .line 4341
    :cond_6
    :goto_3
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-boolean v10, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    invoke-direct/range {v1 .. v10}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZ)V

    return-object v1

    .line 4322
    :cond_7
    move-object v7, p1

    .line 4323
    move-object v8, v12

    .line 4324
    move/from16 v9, p2

    goto :goto_2

    .line 4335
    :cond_8
    move-object/from16 v4, p3

    .line 4336
    move-object v5, v13

    .line 4337
    move/from16 v6, p4

    goto :goto_3
.end method

.method private tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v1, 0x0

    .line 3829
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    if-nez v2, :cond_1

    .line 3835
    :cond_0
    :goto_0
    return v1

    .line 3833
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 3835
    .local v0, "c":I
    if-ltz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v1, 0x0

    .line 3814
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    if-nez v2, :cond_1

    .line 3820
    :cond_0
    :goto_0
    return v1

    .line 3818
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 3820
    .local v0, "c":I
    if-gtz v0, :cond_2

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->ceilingEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    .line 4113
    if-nez p1, :cond_0

    .line 4114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4117
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4121
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4117
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4121
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->firstEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public bridge synthetic ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->ceilingKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    .line 4127
    if-nez p1, :cond_0

    .line 4128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4131
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4135
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4131
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4135
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->firstKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 4007
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 4009
    .local v0, "fromM":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-eqz v1, :cond_0

    .line 4010
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 4013
    .end local v0    # "fromM":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3888
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    if-nez p1, :cond_0

    .line 3889
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 3892
    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3894
    .local v0, "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 3901
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4365
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descendingMap()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4346
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxKey:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    iget-object v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v8, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    iget-boolean v9, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Ljava/lang/Comparable;ZZ)V

    return-object v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3933
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$EntrySubSet;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 7

    .prologue
    .line 4169
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->firstKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4019
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minDir()C

    move-result v5

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$3300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->floorEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    .line 4085
    if-nez p1, :cond_0

    .line 4086
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4089
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4093
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4089
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4093
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lastEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public bridge synthetic floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->floorKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    .line 4099
    if-nez p1, :cond_0

    .line 4100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4103
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4107
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4103
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4107
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lastKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->get(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3906
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    if-nez p1, :cond_0

    .line 3907
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 3910
    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .line 3912
    .local v0, "k":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->get(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4260
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4237
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez p1, :cond_0

    .line 4238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4241
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->higherEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4141
    if-nez p1, :cond_0

    .line 4142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4145
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4149
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4145
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4149
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->firstEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, p1, v2, v0, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public bridge synthetic higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->higherKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4155
    if-nez p1, :cond_0

    .line 4156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4159
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4163
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4159
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4163
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->firstKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, p1, v2, v0, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    const/4 v5, 0x1

    .line 3876
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/16 v6, 0x4c

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4351
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 7

    .prologue
    .line 4174
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lastKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4024
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxDir()C

    move-result v5

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtremeKeyOrThrow(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$3300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZC)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lowerEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4057
    if-nez p1, :cond_0

    .line 4058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4061
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4065
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4061
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4065
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lastEntryOrNull()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, v0, v2, p1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public bridge synthetic lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lowerKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 4071
    if-nez p1, :cond_0

    .line 4072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4075
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4079
    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_1
    :goto_0
    return-object v0

    .line 4075
    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4079
    :cond_3
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->descending:Z

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooHigh(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-eqz v1, :cond_6

    .end local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->lastKeyOrNull()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tooLow(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    invoke-direct {p0, v0, v2, p1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object p0

    goto :goto_1
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4356
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;

    invoke-direct {v0, p0, p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap$1;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 8

    .prologue
    .line 4180
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4182
    .local v7, "snapshot":Ljava/util/Map$Entry;
    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4183
    :cond_1
    return-object v7
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 8

    .prologue
    .line 4191
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v3, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxDir()C

    move-result v6

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4193
    .local v7, "snapshot":Ljava/util/Map$Entry;
    if-eqz v7, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4194
    :cond_1
    return-object v7
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->put(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3917
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 3919
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->put(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->putIfAbsent(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4201
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 4203
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->putIfAbsent(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3924
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    if-nez p1, :cond_0

    .line 3925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    move-object v0, p1

    .line 3928
    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 4208
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->inRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4220
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "value":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 4222
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4213
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "key":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "oldValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    .local p3, "newValue":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->requireInRange(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)V

    .line 4215
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->replace(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 3881
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->m:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->holderRef:J
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$1500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->right(J)J

    move-result-wide v2

    .line 3883
    .local v2, "root":J
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minCmp:Ljava/lang/Comparable;

    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->minIncl:Z

    iget-object v6, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxCmp:Ljava/lang/Comparable;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->maxIncl:Z

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->computeFrozenSize(JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I
    invoke-static/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$2200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;JLjava/lang/Comparable;ZLjava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4255
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p2, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4228
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    .local p3, "toKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 4229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4232
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 3761
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    check-cast p1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4265
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
            "<TK;TV;>.SubMap;"
        }
    .end annotation

    .prologue
    .line 4246
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.SubMap;"
    .local p1, "fromKey":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;, "TK;"
    if-nez p1, :cond_0

    .line 4247
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4250
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;->subMapImpl(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;ZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;Z)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method
