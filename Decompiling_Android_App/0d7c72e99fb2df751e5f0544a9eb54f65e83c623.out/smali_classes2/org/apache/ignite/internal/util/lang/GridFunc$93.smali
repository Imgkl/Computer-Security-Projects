.class final Lorg/apache/ignite/internal/util/lang/GridFunc$93;
.super Lorg/apache/ignite/internal/util/GridSerializableCollection;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/Collection;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>([Lorg/apache/ignite/lang/IgnitePredicate;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 3267
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$c:Ljava/util/Collection;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 3270
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3283
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3275
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$c:Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3279
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$c:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$93;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
