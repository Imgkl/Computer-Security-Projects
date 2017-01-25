.class public Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
.super Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;
.source "GridifyRangeArgument.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private mtdReturnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private paramIdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->paramIdx:I

    return-void
.end method


# virtual methods
.method public getInputIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->paramIdx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getInputSize()I
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->paramIdx:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMethodReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->mtdReturnType:Ljava/lang/Class;

    return-object v0
.end method

.method public getParamIndex()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->paramIdx:I

    return v0
.end method

.method public setMethodReturnType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->mtdReturnType:Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public setParamIndex(I)V
    .locals 0
    .param p1, "paramIdx"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->paramIdx:I

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
