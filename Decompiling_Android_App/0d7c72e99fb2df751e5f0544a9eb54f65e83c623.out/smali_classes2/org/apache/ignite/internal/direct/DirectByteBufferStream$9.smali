.class Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;
.super Ljava/lang/Object;
.source "DirectByteBufferStream.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrayIterator([Ljava/lang/Object;)Ljava/util/Iterator;
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
.field private idx:I

.field final synthetic this$0:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

.field final synthetic val$arr:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/direct/DirectByteBufferStream;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1459
    iput-object p1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->this$0:Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    iput-object p2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->val$arr:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1463
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->idx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->val$arr:[Ljava/lang/Object;

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
    .line 1467
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1470
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->val$arr:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;->idx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
