.class final Lorg/apache/ignite/internal/util/lang/GridFunc$120;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lorg/apache/ignite/lang/IgniteClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 0

    .prologue
    .line 5198
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$120;->val$c:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 5200
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$120;->val$c:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
