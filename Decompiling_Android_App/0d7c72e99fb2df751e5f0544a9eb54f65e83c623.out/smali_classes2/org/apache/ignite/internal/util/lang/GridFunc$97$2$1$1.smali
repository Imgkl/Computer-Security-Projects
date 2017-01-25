.class Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;

.field final synthetic val$e:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 3537
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;->this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;->val$e:Ljava/util/Map$Entry;

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
    .line 3539
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;->val$e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV1;"
        }
    .end annotation

    .prologue
    .line 3543
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;->this$2:Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1;->this$1:Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$97;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$97;->val$trans:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$97$2$1$1;->val$e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV1;"
        }
    .end annotation

    .prologue
    .line 3547
    .local p1, "val":Ljava/lang/Object;, "TV1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Put is not supported for readonly map view."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
