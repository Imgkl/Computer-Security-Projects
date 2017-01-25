.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;
.super Ljava/lang/Object;
.source "GridCacheSetImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteReducer;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SumReducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteReducer",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2fb2a228301a2574L


# instance fields
.field private cntr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 522
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;->cntr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;->cntr:I

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 540
    return-void
.end method

.method public reduce()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;->cntr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;->reduce()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    return-void
.end method
