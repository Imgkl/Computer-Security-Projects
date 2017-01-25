.class final Lorg/apache/ignite/internal/util/lang/GridFunc$62;
.super Lorg/apache/ignite/internal/util/typedef/CA;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->print(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$62;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CA;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 1588
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$62;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1589
    return-void
.end method
