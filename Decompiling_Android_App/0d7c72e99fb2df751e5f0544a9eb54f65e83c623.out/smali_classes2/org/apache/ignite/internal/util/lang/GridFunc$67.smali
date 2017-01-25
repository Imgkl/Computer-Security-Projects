.class final Lorg/apache/ignite/internal/util/lang/GridFunc$67;
.super Lorg/apache/ignite/internal/util/GridSerializableCollection;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
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
.field final synthetic val$c1:Ljava/util/Collection;

.field final synthetic val$c2:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c1:Ljava/util/Collection;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c2:Ljava/util/Collection;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1889
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c1:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c2:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1897
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Collection;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->eqNotOrdered(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 1864
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$67;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c1:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c2:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
