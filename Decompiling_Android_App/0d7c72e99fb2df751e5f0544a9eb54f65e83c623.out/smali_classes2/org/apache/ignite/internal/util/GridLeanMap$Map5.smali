.class Lorg/apache/ignite/internal/util/GridLeanMap$Map5;
.super Lorg/apache/ignite/internal/util/GridLeanMap$Map4;
.source "GridLeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Map5"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridLeanMap$Map4",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private k5:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private v5:Ljava/lang/Object;
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
    .line 1041
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;-><init>()V

    .line 1043
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    .local p3, "k2":Ljava/lang/Object;, "TK;"
    .local p4, "v2":Ljava/lang/Object;, "TV;"
    .local p5, "k3":Ljava/lang/Object;, "TK;"
    .local p6, "v3":Ljava/lang/Object;, "TV;"
    .local p7, "k4":Ljava/lang/Object;, "TK;"
    .local p8, "v4":Ljava/lang/Object;, "TV;"
    .local p9, "k5":Ljava/lang/Object;, "TK;"
    .local p10, "v5":Ljava/lang/Object;, "TV;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1062
    iput-object p9, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    .line 1063
    iput-object p10, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

    .line 1064
    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/GridLeanMap$Map5;

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
    .line 1092
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

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
    .line 1097
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

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
    .line 1146
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map5;)V

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
    .line 1102
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1104
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    .restart local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 1068
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->size()I

    move-result v0

    const/4 v1, 0x5

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
    .line 1118
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1120
    .local v0, "oldVal":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k1:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k1:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k1:Ljava/lang/Object;

    .line 1122
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v1:Ljava/lang/Object;

    .line 1141
    :cond_1
    :goto_0
    return-object v0

    .line 1124
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1125
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k2:Ljava/lang/Object;

    .line 1126
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v2:Ljava/lang/Object;

    goto :goto_0

    .line 1128
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1129
    :cond_5
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k3:Ljava/lang/Object;

    .line 1130
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v3:Ljava/lang/Object;

    goto :goto_0

    .line 1132
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1133
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k4:Ljava/lang/Object;

    .line 1134
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v4:Ljava/lang/Object;

    goto :goto_0

    .line 1136
    :cond_8
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    :cond_9
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    .line 1138
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

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
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    const/4 v2, 0x0

    .line 1073
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

    .line 1076
    .local v0, "res":Ljava/lang/Object;, "TV;"
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->v5:Ljava/lang/Object;

    .line 1077
    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    .line 1082
    .end local v0    # "res":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1087
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map5;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map5<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map4;->size()I

    move-result v1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map5;->k5:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
