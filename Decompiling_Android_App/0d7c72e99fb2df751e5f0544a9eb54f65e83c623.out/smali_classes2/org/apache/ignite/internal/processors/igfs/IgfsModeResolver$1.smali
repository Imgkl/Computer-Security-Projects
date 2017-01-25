.class Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver$1;
.super Ljava/lang/Object;
.source "IgfsModeResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;-><init>(Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/igfs/IgfsPath;",
        "Lorg/apache/ignite/igfs/IgfsMode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver$1;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsModeResolver$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsPath;->components()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method
