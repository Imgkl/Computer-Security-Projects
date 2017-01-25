.class Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;
.super Ljava/lang/Object;
.source "GridLeanMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;->getMapIterator(Z)Ljava/util/Iterator;
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
.field final synthetic this$2:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;)V
    .locals 0

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;->this$2:Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1.1;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1.1;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1.1;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
