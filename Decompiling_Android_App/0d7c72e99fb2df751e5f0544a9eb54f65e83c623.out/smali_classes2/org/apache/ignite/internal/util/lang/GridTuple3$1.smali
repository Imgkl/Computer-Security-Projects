.class Lorg/apache/ignite/internal/util/lang/GridTuple3$1;
.super Ljava/lang/Object;
.source "GridTuple3.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridTuple3;->iterator()Ljava/util/Iterator;
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

.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridTuple3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridTuple3;)V
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple3$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple3.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple3$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple3.1;"
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    const/4 v1, 0x4

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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple3$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple3.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 156
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v0

    .line 162
    .end local v0    # "res":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    .line 164
    return-object v0

    .line 157
    .restart local v0    # "res":Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 158
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    iget v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->nextIdx:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 160
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridTuple3$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridTuple3;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTuple3$1;, "Lorg/apache/ignite/internal/util/lang/GridTuple3.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
