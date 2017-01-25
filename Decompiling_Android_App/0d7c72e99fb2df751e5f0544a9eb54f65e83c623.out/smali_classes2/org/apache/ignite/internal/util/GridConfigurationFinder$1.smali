.class final Lorg/apache/ignite/internal/util/GridConfigurationFinder$1;
.super Ljava/lang/Object;
.source "GridConfigurationFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridConfigurationFinder;->getConfigFiles(Ljava/io/File;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridConfigurationFinder$1;->compare(Lorg/apache/ignite/internal/util/lang/GridTuple3;Lorg/apache/ignite/internal/util/lang/GridTuple3;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/util/lang/GridTuple3;Lorg/apache/ignite/internal/util/lang/GridTuple3;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "t1":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;"
    .local p2, "t2":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/lang/String;Ljava/lang/Long;Ljava/io/File;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "s1":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, "s2":Ljava/lang/String;
    const-string v4, "(?)"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lorg/apache/ignite/internal/util/GridConfigurationFinder;->Q_PREFIX_LEN:I
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->access$000()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "q1":Ljava/lang/String;
    :goto_0
    const-string v4, "(?)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lorg/apache/ignite/internal/util/GridConfigurationFinder;->Q_PREFIX_LEN:I
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConfigurationFinder;->access$000()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "q2":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4

    .end local v0    # "q1":Ljava/lang/String;
    .end local v1    # "q2":Ljava/lang/String;
    :cond_0
    move-object v0, v2

    .line 79
    goto :goto_0

    .restart local v0    # "q1":Ljava/lang/String;
    :cond_1
    move-object v1, v3

    .line 80
    goto :goto_1
.end method
