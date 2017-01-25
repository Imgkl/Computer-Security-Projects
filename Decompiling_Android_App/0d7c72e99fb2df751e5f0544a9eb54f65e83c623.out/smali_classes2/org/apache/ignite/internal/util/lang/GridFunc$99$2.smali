.class Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$99;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)V
    .locals 0

    .prologue
    .line 3764
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3808
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->iterator()Ljava/util/Iterator;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 3766
    new-instance v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3804
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not support for readonly collection view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3800
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$c:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    iget-object v1, v1, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
