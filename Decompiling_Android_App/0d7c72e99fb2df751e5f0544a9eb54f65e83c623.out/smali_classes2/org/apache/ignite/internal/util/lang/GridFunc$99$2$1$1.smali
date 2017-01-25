.class Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;

.field final synthetic val$e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3776
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;->this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;->val$e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3778
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;->val$e:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3782
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;->this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$mapClo:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$2$1$1;->val$e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3786
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Put is not supported for readonly collection view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
