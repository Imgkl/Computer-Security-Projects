.class final Lorg/apache/ignite/internal/util/lang/GridFunc$85;
.super Lorg/apache/ignite/internal/util/GridSerializableCollection;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->flatCollections(Ljava/util/Collection;)Ljava/util/Collection;
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


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 2887
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$85;->val$c:Ljava/util/Collection;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2898
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$85;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 2890
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$85;->val$c:Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2894
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$85;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
