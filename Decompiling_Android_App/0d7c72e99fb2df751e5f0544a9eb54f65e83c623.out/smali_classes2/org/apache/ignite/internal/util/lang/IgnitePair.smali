.class public Lorg/apache/ignite/internal/util/lang/IgnitePair;
.super Lorg/apache/ignite/lang/IgniteBiTuple;
.source "IgnitePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgnitePair;, "Lorg/apache/ignite/internal/util/lang/IgnitePair<TT;>;"
    invoke-super {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
