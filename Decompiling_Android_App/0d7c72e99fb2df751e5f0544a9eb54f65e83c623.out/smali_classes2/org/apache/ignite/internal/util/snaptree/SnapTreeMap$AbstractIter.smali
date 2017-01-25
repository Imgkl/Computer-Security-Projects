.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;
.super Ljava/lang/Object;
.source "SnapTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private depth:I

.field private final descending:Z

.field private final endKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final forward:C

.field private final m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final reverse:C


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "m":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 2033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    iput v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    .line 2034
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .line 2035
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->descending:Z

    .line 2036
    const/16 v1, 0x52

    iput-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    .line 2037
    const/16 v1, 0x4c

    iput-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->reverse:C

    .line 2038
    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->frozen()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v0, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2039
    .local v0, "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I
    invoke-static {v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    check-cast v1, [Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2040
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    .line 2041
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2042
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V
    .locals 13
    .param p3, "minIncl"    # Z
    .param p5, "maxIncl"    # Z
    .param p6, "descending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z",
            "Ljava/lang/Comparable",
            "<-TK;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2050
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "m":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p4, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    .line 2051
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    .line 2052
    move/from16 v0, p6

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->descending:Z

    .line 2053
    if-nez p6, :cond_1

    const/16 v1, 0x52

    :goto_0
    iput-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    .line 2054
    if-nez p6, :cond_2

    const/16 v1, 0x4c

    :goto_1
    iput-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->reverse:C

    .line 2056
    if-nez p6, :cond_3

    move/from16 v9, p3

    .line 2058
    .local v9, "fromIncl":Z
    :goto_2
    if-nez p6, :cond_4

    move/from16 v12, p5

    .line 2059
    .local v12, "toIncl":Z
    :goto_3
    if-nez p6, :cond_5

    .line 2060
    move-object v8, p2

    .line 2061
    .local v8, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    move-object/from16 v11, p4

    .line 2067
    .local v11, "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_4
    # getter for: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->holderRef:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;
    invoke-static {p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$800(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$COWMgr;->frozen()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;

    iget-object v10, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$RootHolder;->right:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2069
    .local v10, "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v11, :cond_6

    .line 2070
    const/4 v6, 0x1

    iget-char v7, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->boundedExtreme(Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;
    invoke-static/range {v1 .. v7}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$1000(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZC)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    .line 2071
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 2091
    :cond_0
    :goto_5
    return-void

    .line 2053
    .end local v8    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v9    # "fromIncl":Z
    .end local v10    # "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .end local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .end local v12    # "toIncl":Z
    :cond_1
    const/16 v1, 0x4c

    goto :goto_0

    .line 2054
    :cond_2
    const/16 v1, 0x52

    goto :goto_1

    :cond_3
    move/from16 v9, p5

    .line 2056
    goto :goto_2

    .restart local v9    # "fromIncl":Z
    :cond_4
    move/from16 v12, p3

    .line 2058
    goto :goto_3

    .line 2063
    .restart local v12    # "toIncl":Z
    :cond_5
    move-object/from16 v8, p4

    .line 2064
    .restart local v8    # "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    move-object v11, p2

    .restart local v11    # "toCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    goto :goto_4

    .line 2077
    .restart local v10    # "root":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    .line 2080
    :cond_7
    # invokes: Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->height(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I
    invoke-static {v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->access$900(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    check-cast v1, [Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2082
    if-nez v8, :cond_8

    .line 2083
    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    goto :goto_5

    .line 2086
    :cond_8
    invoke-direct {p0, v10, v8, v9}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)V

    .line 2087
    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    if-lez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2088
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->advance()V

    goto :goto_5
.end method

.method private advance()V
    .locals 6

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    const/4 v5, 0x0

    .line 2142
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v2

    .line 2143
    .local v2, "t":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->endKey:Ljava/lang/Object;

    iget-object v4, v2, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 2144
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    .line 2145
    iput-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2168
    :goto_0
    return-void

    .line 2149
    :cond_1
    iget-char v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    .line 2150
    .local v0, "fwd":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_3

    .line 2151
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2160
    :cond_2
    :goto_1
    iget v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    if-nez v3, :cond_4

    .line 2162
    iput-object v5, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    goto :goto_0

    .line 2156
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    aget-object v1, v3, v4

    .line 2157
    .local v1, "popped":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget v3, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    if-lez v3, :cond_2

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    iget-char v4, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 2167
    .end local v1    # "popped":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :cond_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->vOpt:Ljava/lang/Object;

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private cmp(Ljava/lang/Comparable;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<-TK;>;TK;)I"
        }
    .end annotation

    .prologue
    .line 2094
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 2095
    .local v0, "c":I
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->descending:Z

    if-nez v1, :cond_0

    .line 2098
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

.method private path(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2110
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2111
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2113
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    aput-object p1, v0, v1

    .line 2114
    return-void
.end method

.method private pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2103
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 2104
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2105
    iget-char v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->reverse:C

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p1

    goto :goto_0

    .line 2107
    :cond_0
    return-void
.end method

.method private pushFirst(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;Ljava/lang/Comparable;Z)V
    .locals 2
    .param p3, "fromIncl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<-TK;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2117
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    .local p1, "node":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node<TK;TV;>;"
    .local p2, "fromCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    :goto_0
    if-eqz p1, :cond_2

    .line 2118
    iget-object v1, p1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->cmp(Ljava/lang/Comparable;Ljava/lang/Object;)I

    move-result v0

    .line 2119
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 2121
    :cond_0
    iget-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->forward:C

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p1

    goto :goto_0

    .line 2124
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;)V

    .line 2125
    if-nez v0, :cond_3

    .line 2134
    .end local v0    # "c":I
    :cond_2
    return-void

    .line 2130
    .restart local v0    # "c":I
    :cond_3
    iget-char v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->reverse:C

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->child(C)Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object p1

    goto :goto_0
.end method

.method private top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2137
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->path:[Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2171
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextNode()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2175
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->depth:I

    if-nez v0, :cond_0

    .line 2176
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2178
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->top()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2179
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->advance()V

    .line 2180
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2184
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    if-nez v0, :cond_0

    .line 2185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2187
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->m:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;->mostRecentNode:Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    .line 2189
    return-void
.end method
