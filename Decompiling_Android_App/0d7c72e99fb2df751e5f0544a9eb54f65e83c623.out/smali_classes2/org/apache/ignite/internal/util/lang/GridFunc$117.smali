.class final Lorg/apache/ignite/internal/util/lang/GridFunc$117;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->constant(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CO",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 5119
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$117;->val$val:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5121
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$117;->val$val:Ljava/lang/Object;

    return-object v0
.end method
