.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;
.super Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap",
        "<TK;TV;>.AbstractIter;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V
    .locals 0
    .param p2, "m"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .prologue
    .line 3305
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 3306
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V

    .line 3307
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V
    .locals 0
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
    .line 3318
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    .local p3, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p5, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    .line 3319
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$AbstractIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V

    .line 3320
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p3, "x2"    # Ljava/lang/Comparable;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/lang/Comparable;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 3301
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;

    .prologue
    .line 3301
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3301
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;->next()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    .locals 4

    .prologue
    .line 3324
    .local p0, "this":Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap<TK;TV;>.KeyIter;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;->this$0:Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$KeyIter;->nextNode()J

    move-result-wide v2

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->key(J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;
    invoke-static {v0, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;->access$000(Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;J)Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;

    move-result-object v0

    return-object v0
.end method
