.class public Lorg/apache/ignite/internal/util/lang/GridTriple;
.super Lorg/apache/ignite/internal/util/lang/GridTuple3;
.source "GridTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<TT;TT;TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTriple;, "Lorg/apache/ignite/internal/util/lang/GridTriple<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTriple;, "Lorg/apache/ignite/internal/util/lang/GridTriple<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridTriple;, "Lorg/apache/ignite/internal/util/lang/GridTriple<TT;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
