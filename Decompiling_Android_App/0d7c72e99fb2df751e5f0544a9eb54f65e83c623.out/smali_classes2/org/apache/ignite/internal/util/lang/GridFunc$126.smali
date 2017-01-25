.class final Lorg/apache/ignite/internal/util/lang/GridFunc$126;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/internal/util/lang/GridPredicate3;)Lorg/apache/ignite/internal/util/lang/GridClosure3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C3",
        "<TX1;TX2;TX3;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lorg/apache/ignite/internal/util/lang/GridPredicate3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridPredicate3;)V
    .locals 0

    .prologue
    .line 5302
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$126;->val$p:Lorg/apache/ignite/internal/util/lang/GridPredicate3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX1;TX2;TX3;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 5304
    .local p1, "x1":Ljava/lang/Object;, "TX1;"
    .local p2, "x2":Ljava/lang/Object;, "TX2;"
    .local p3, "x3":Ljava/lang/Object;, "TX3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$126;->val$p:Lorg/apache/ignite/internal/util/lang/GridPredicate3;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridPredicate3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 5302
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridFunc$126;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
