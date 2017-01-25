.class final Lorg/apache/ignite/internal/util/lang/GridFunc$122;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Lorg/apache/ignite/internal/util/lang/GridClosure3;)Lorg/apache/ignite/internal/util/lang/GridPredicate3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P3",
        "<TT1;TT2;TT3;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Lorg/apache/ignite/internal/util/lang/GridClosure3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridClosure3;)V
    .locals 0

    .prologue
    .line 5231
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$122;->val$c:Lorg/apache/ignite/internal/util/lang/GridClosure3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)Z"
        }
    .end annotation

    .prologue
    .line 5233
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$122;->val$c:Lorg/apache/ignite/internal/util/lang/GridClosure3;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridClosure3;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
