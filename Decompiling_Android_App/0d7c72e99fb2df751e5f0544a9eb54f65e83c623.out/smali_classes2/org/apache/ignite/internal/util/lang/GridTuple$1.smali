.class Lorg/apache/ignite/internal/util/lang/GridTuple$1;
.super Ljava/lang/Object;
.source "GridTuple.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridTuple;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private hasNext:Z

.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridTuple;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridTuple;)V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple.1;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->hasNext:Z

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridTuple;->access$000(Lorg/apache/ignite/internal/util/lang/GridTuple;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
