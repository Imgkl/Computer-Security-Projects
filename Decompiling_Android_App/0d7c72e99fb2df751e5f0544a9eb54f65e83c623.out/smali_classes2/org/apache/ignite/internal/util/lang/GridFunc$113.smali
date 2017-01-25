.class final Lorg/apache/ignite/internal/util/lang/GridFunc$113;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->compose(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<TX;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/ignite/lang/IgniteClosure;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 0

    .prologue
    .line 5053
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$113;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$113;->val$f:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)Z"
        }
    .end annotation

    .prologue
    .line 5055
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$113;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$113;->val$f:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v1, p1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
