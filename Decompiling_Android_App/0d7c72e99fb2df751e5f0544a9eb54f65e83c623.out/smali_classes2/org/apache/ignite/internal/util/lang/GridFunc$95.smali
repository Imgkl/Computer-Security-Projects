.class final Lorg/apache/ignite/internal/util/lang/GridFunc$95;
.super Lorg/apache/ignite/internal/util/GridSerializableList;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->viewListReadOnly(Ljava/util/List;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableList",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/List;

.field final synthetic val$trans:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3348
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$c:Ljava/util/List;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT2;"
        }
    .end annotation

    .prologue
    .line 3350
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3363
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT2;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3355
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$c:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3359
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$95;->val$c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
