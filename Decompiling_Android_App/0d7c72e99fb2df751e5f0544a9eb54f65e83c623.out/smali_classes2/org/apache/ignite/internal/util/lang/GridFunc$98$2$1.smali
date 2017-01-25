.class Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;->iterator()Ljava/util/Iterator;
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
        "<TK;TV1;>;>;"
    }
.end annotation


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3646
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3647
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$98;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$98;->val$m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$98;

    # getter for: Lorg/apache/ignite/internal/util/lang/GridFunc$98;->ep:Lorg/apache/ignite/lang/IgnitePredicate;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/lang/GridFunc$98;->access$300(Lorg/apache/ignite/internal/util/lang/GridFunc$98;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 3650
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3646
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 3654
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3656
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1$1;-><init>(Lorg/apache/ignite/internal/util/lang/GridFunc$98$2$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3673
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove is not support for readonly map view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
