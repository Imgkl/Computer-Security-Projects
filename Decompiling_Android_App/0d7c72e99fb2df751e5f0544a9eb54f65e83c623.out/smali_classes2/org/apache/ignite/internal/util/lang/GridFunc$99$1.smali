.class Lorg/apache/ignite/internal/util/lang/GridFunc$99$1;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc$99;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/lang/GridFunc$99;)V
    .locals 0

    .prologue
    .line 3757
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 3759
    .local p1, "e":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$99$1;->this$0:Lorg/apache/ignite/internal/util/lang/GridFunc$99;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/lang/GridFunc$99;->val$p:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v0

    return v0
.end method
