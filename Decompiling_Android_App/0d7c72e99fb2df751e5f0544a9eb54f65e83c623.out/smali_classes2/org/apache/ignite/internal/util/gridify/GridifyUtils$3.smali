.class final Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;
.super Ljava/lang/Object;
.source "GridifyUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field private idx:I

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->idx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->val$obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 157
    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->idx:I

    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->val$obj:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyUtils$3;->idx:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
