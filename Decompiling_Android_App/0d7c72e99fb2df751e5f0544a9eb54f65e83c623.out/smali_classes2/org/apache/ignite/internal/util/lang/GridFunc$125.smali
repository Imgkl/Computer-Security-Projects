.class final Lorg/apache/ignite/internal/util/lang/GridFunc$125;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/lang/IgniteBiClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<TX1;TX2;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/lang/IgniteBiPredicate;)V
    .locals 0

    .prologue
    .line 5282
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$125;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX1;TX2;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 5284
    .local p1, "x1":Ljava/lang/Object;, "TX1;"
    .local p2, "x2":Ljava/lang/Object;, "TX2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$125;->val$p:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5282
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/GridFunc$125;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
