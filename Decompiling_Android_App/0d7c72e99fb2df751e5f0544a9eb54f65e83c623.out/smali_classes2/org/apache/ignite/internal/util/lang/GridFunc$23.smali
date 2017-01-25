.class final Lorg/apache/ignite/internal/util/lang/GridFunc$23;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "Print line closure."

    return-object v0
.end method
