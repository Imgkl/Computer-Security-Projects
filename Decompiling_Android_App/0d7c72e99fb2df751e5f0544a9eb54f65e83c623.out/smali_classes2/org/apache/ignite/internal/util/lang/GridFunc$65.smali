.class final Lorg/apache/ignite/internal/util/lang/GridFunc$65;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->print(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteInClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$post:Ljava/lang/String;

.field final synthetic val$pre:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1646
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$pre:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$post:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1648
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$pre:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, ""

    .line 1649
    .local v1, "sPre":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$post:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1651
    .local v0, "sPost":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1652
    return-void

    .line 1648
    .end local v0    # "sPost":Ljava/lang/String;
    .end local v1    # "sPre":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$pre:Ljava/lang/String;

    goto :goto_0

    .line 1649
    .restart local v1    # "sPre":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$65;->val$post:Ljava/lang/String;

    goto :goto_1
.end method
