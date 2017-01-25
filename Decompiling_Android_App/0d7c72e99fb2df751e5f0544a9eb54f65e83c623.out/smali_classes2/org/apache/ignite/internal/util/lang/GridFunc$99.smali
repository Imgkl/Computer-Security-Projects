.class final Lorg/apache/ignite/internal/util/lang/GridFunc$99;
.super Lorg/apache/ignite/internal/util/GridSerializableMap;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private ep:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic val$c:Ljava/util/Set;

.field final synthetic val$mapClo:Lorg/apache/ignite/lang/IgniteClosure;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 1

    .prologue
    .line 3755
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$c:Ljava/util/Set;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$mapClo:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableMap;-><init>()V

    .line 3757
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->ep:Lorg/apache/ignite/lang/IgnitePredicate;

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    .prologue
    .line 3755
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->ep:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 3833
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3764
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 3818
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3819
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$mapClo:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3821
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3814
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 3825
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Put is not supported for readonly collection view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 3829
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not supported for readonly collection view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
