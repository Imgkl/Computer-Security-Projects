.class Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;
.super Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;
.source "SnapTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyIter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2004
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter<TK;TV;>;"
    .local p1, "m":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V

    .line 2005
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V
    .locals 0
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
    .line 2013
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter<TK;TV;>;"
    .local p1, "m":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap<TK;TV;>;"
    .local p2, "minCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    .local p4, "maxCmp":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$AbstractIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V

    .line 2014
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZLorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p2, "x1"    # Ljava/lang/Comparable;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/Comparable;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    .prologue
    .line 2002
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Ljava/lang/Comparable;ZLjava/lang/Comparable;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$1;

    .prologue
    .line 2002
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;-><init>(Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2018
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;, "Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$KeyIter;->nextNode()Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/SnapTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
