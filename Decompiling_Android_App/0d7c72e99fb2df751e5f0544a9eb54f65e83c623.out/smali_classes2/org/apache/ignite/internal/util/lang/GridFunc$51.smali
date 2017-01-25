.class final Lorg/apache/ignite/internal/util/lang/GridFunc$51;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->singleReducer()Lorg/apache/ignite/lang/IgniteReducer;
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
.field private obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1145
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
    .line 1150
    .local p1, "e":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$51;->obj:Ljava/lang/Object;

    .line 1152
    const/4 v0, 0x0

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
    .line 1156
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$51;->obj:Ljava/lang/Object;

    return-object v0
.end method
