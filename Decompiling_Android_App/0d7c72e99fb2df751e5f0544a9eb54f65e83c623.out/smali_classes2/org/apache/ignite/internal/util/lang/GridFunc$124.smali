.class final Lorg/apache/ignite/internal/util/lang/GridFunc$124;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<TX;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 5264
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$124;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 5266
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$124;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5264
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$124;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
