.class final Lorg/apache/ignite/internal/util/lang/GridFunc$53;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->identityReducer(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/R1",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$elem:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$53;->val$elem:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1193
    .local p1, "e":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public reduce()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1197
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$53;->val$elem:Ljava/lang/Object;

    return-object v0
.end method
