.class final Lorg/apache/ignite/internal/util/lang/GridFunc$94;
.super Lorg/apache/ignite/internal/util/GridSerializableCollection;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableCollection",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/Collection;

.field final synthetic val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

.field final synthetic val$trans:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 3312
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$c:Ljava/util/Collection;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3323
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->iterator()Ljava/util/Iterator;

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
    .line 3315
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$c:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3319
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->val$c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$94;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    goto :goto_0
.end method
