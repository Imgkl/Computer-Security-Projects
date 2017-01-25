.class Lorg/apache/ignite/lang/IgniteBiTuple$1;
.super Ljava/lang/Object;
.source "IgniteBiTuple.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/lang/IgniteBiTuple;->iterator()Ljava/util/Iterator;
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

.field final synthetic this$0:Lorg/apache/ignite/lang/IgniteBiTuple;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;)V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple$1;, "Lorg/apache/ignite/lang/IgniteBiTuple.1;"
    iput-object p1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->this$0:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple$1;, "Lorg/apache/ignite/lang/IgniteBiTuple.1;"
    iget v0, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    const/4 v1, 0x3

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
    .line 148
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple$1;, "Lorg/apache/ignite/lang/IgniteBiTuple.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteBiTuple$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 154
    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->this$0:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    .line 158
    .end local v0    # "res":Ljava/lang/Object;
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    .line 160
    return-object v0

    .line 155
    .restart local v0    # "res":Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->nextIdx:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 156
    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteBiTuple$1;->this$0:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lorg/apache/ignite/lang/IgniteBiTuple$1;, "Lorg/apache/ignite/lang/IgniteBiTuple.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
