.class Lorg/apache/ignite/internal/util/GridLeanMap$Map4;
.super Lorg/apache/ignite/internal/util/GridLeanMap$Map3;
.source "GridLeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Map4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridLeanMap$Map3",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected k4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected v4:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 845
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;-><init>()V

    .line 847
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;TK;TV;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    .local p3, "k2":Ljava/lang/Object;, "TK;"
    .local p4, "v2":Ljava/lang/Object;, "TV;"
    .local p5, "k3":Ljava/lang/Object;, "TK;"
    .local p6, "v3":Ljava/lang/Object;, "TV;"
    .local p7, "k4":Ljava/lang/Object;, "TK;"
    .local p8, "v4":Ljava/lang/Object;, "TV;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 864
    iput-object p7, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    .line 865
    iput-object p8, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    .line 866
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
    .line 894
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 899
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
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
    .line 944
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map4;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 906
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 870
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 920
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    .local v0, "oldVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k1:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k1:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 923
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k1:Ljava/lang/Object;

    .line 924
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v1:Ljava/lang/Object;

    .line 939
    :cond_1
    :goto_0
    return-object v0

    .line 926
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k2:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k2:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 927
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k2:Ljava/lang/Object;

    .line 928
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v2:Ljava/lang/Object;

    goto :goto_0

    .line 930
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k3:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k3:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 931
    :cond_5
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k3:Ljava/lang/Object;

    .line 932
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v3:Ljava/lang/Object;

    goto :goto_0

    .line 934
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    .line 936
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    const/4 v2, 0x0

    .line 875
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    .line 878
    .local v0, "res":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->v4:Ljava/lang/Object;

    .line 879
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    .line 884
    .end local v0    # "res":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 889
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map4;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map4<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map3;->size()I

    move-result v1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->k4:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
