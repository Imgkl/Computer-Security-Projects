.class public Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;
.super Ljava/lang/Object;
.source "GridQueryFieldsResultAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;


# instance fields
.field private final it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final metaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "metaData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .local p2, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/List<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;->metaData:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .line 46
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;->it:Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;->iterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public metaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResultAdapter;->metaData:Ljava/util/List;

    return-object v0
.end method
