.class Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;
.super Ljava/util/AbstractSet;
.source "GridLeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map2;)V
    .locals 0

    .prologue
    .line 600
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
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

    .prologue
    .line 602
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2.1;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 645
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;, "Lorg/apache/ignite/internal/util/GridLeanMap$Map2.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$Map2$1;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap$Map2;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLeanMap$Map2;->size()I

    move-result v0

    return v0
.end method
