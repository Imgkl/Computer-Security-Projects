.class public final Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;
.super Ljava/lang/Object;
.source "GridifyArgumentBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findMethodParameterIndex(Ljava/lang/String;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)I
    .locals 8
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p3, "mtdParamAnns"    # [[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "mtdTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v7, 0x5d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, "allowedParamIdxs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 83
    aget-object v3, p2, v2

    .line 85
    .local v3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->isMethodParameterTypeAllowed(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid method signature. Failed to get valid method parameter types [mtdName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mtdTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 92
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 93
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 106
    :goto_1
    return v4

    .line 95
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v1, "annParamIdxs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    :goto_2
    array-length v4, p2

    if-ge v2, v4, :cond_5

    .line 98
    aget-object v4, p3, v2

    invoke-static {v4}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->isMethodParameterTypeAnnotated([Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_5
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v6, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid method signature. Method parameter must be annotated with @"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lorg/apache/ignite/compute/gridify/GridifyInput;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[mtdName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mtdTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allowedParamIdxs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", annParamIdxs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 106
    :cond_6
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public createJobArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/compute/gridify/GridifyArgument;
    .locals 7
    .param p1, "arg"    # Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/apache/ignite/compute/gridify/GridifyArgument;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .local p2, "input":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x0

    .line 158
    new-instance v3, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;

    invoke-direct {v3}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;-><init>()V

    .line 160
    .local v3, "res":Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setTarget(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setMethodClass(Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setMethodName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setMethodParameterTypes([Ljava/lang/Class;)V

    .line 165
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Object;

    .line 167
    .local v0, "mtdArgs":[Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    invoke-virtual {v3, v0}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setMethodParameters([Ljava/lang/Object;)V

    .line 171
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v5

    aget-object v1, v4, v5

    .line 175
    .local v1, "paramCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 177
    :cond_1
    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->collectionToParameter(Ljava/lang/Class;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "paramValue":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 180
    new-instance v4, Lorg/apache/ignite/IgniteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create job argument for type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v4

    aput-object v2, v0, v4

    .line 184
    return-object v3
.end method

.method public createTaskArgument(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;[Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .locals 2
    .param p2, "mtdName"    # Ljava/lang/String;
    .param p5, "mtdParamAnns"    # [[Ljava/lang/annotation/Annotation;
    .param p6, "mtdParams"    # [Ljava/lang/Object;
    .param p7, "mtdTarget"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "mtdCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mtdReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "mtdTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;-><init>()V

    .line 56
    .local v0, "arg":Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodClass(Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodReturnType(Ljava/lang/Class;)V

    .line 59
    invoke-virtual {v0, p4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodParameterTypes([Ljava/lang/Class;)V

    .line 60
    invoke-virtual {v0, p6}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodParameters([Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0, p7}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setTarget(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0, p2, p4, p5}, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->findMethodParameterIndex(Ljava/lang/String;[Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setParamIndex(I)V

    .line 65
    return-object v0
.end method

.method public createTaskArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .locals 7
    .param p1, "arg"    # Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "input":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v6, 0x0

    .line 118
    new-instance v3, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    invoke-direct {v3}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;-><init>()V

    .line 120
    .local v3, "res":Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setTarget(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodClass(Ljava/lang/Class;)V

    .line 122
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodReturnType(Ljava/lang/Class;)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodParameterTypes([Ljava/lang/Class;)V

    .line 125
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setParamIndex(I)V

    .line 127
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    new-array v0, v4, [Ljava/lang/Object;

    .line 129
    .local v0, "mtdArgs":[Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->setMethodParameters([Ljava/lang/Object;)V

    .line 133
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 135
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v5

    aget-object v1, v4, v5

    .line 137
    .local v1, "paramCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v4, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 139
    :cond_1
    invoke-static {v1, p2}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->collectionToParameter(Ljava/lang/Class;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "paramValue":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 142
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create task argument for type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v4

    aput-object v2, v0, v4

    .line 146
    return-object v3
.end method
