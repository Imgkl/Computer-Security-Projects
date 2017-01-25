.class Lorg/apache/ignite/internal/util/lang/GridTupleV$1;
.super Ljava/lang/Object;
.source "GridTupleV.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridTupleV;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private nextIdx:I

.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridTupleV;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridTupleV;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTupleV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->nextIdx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTupleV;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/lang/GridTupleV;->access$000(Lorg/apache/ignite/internal/util/lang/GridTupleV;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTupleV;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridTupleV;->access$000(Lorg/apache/ignite/internal/util/lang/GridTupleV;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->nextIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/lang/GridTupleV$1;->nextIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
