.class public abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;
.super Ljava/lang/Object;
.source "HadoopInputSplit.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected hosts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public hosts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;->hosts:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;->hosts:[Ljava/lang/String;

    return-object v0
.end method
