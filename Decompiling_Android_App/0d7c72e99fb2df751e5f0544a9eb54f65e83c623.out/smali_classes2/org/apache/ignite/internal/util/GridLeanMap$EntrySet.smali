.class Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "GridLeanMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
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
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridLeanMap;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;)V
    .locals 0

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/GridLeanMap;Lorg/apache/ignite/internal/util/GridLeanMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/GridLeanMap;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridLeanMap$1;

    .prologue
    .line 272
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap;)V

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
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet$1;-><init>(Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;, "Lorg/apache/ignite/internal/util/GridLeanMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridLeanMap$EntrySet;->this$0:Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridLeanMap;->size()I

    move-result v0

    return v0
.end method
