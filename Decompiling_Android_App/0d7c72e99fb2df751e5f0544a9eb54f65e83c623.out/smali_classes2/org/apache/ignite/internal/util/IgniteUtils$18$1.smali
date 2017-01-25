.class Lorg/apache/ignite/internal/util/IgniteUtils$18$1;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils$18;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/IgniteUtils$18;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/IgniteUtils$18;)V
    .locals 0

    .prologue
    .line 2660
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$18$1;->this$0:Lorg/apache/ignite/internal/util/IgniteUtils$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$18$1;->this$0:Lorg/apache/ignite/internal/util/IgniteUtils$18;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/IgniteUtils$18;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2667
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$18$1;->this$0:Lorg/apache/ignite/internal/util/IgniteUtils$18;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/IgniteUtils$18;->val$e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
