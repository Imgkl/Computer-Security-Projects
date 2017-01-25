.class Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3766
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3767
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$c:Ljava/util/Set;

    new-array v1, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$99;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->access$400(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 3770
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3766
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3774
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3776
    .local v0, "e":Ljava/lang/Object;, "TK;"
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3793
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not support for readonly collection view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
