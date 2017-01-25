.class Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/GridSerializableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$67;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/GridSerializableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private it1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private it2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$67;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$67;)V
    .locals 1

    .prologue
    .line 1864
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$67;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c1:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    .line 1866
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$67;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$67;->val$c2:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it2:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    .line 1875
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    :goto_0
    return v0

    .line 1873
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1879
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$67$1;->it2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1883
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
