.class public Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;
.super Ljava/lang/Object;
.source "GridifySetToValueAbstractAspect.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createGridifyArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .locals 2
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
    .line 175
    .local p2, "taskRes":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p2, :cond_0

    .line 181
    .end local p1    # "arg":Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    :goto_0
    return-object p1

    .line 178
    .restart local p1    # "arg":Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 179
    const/4 p1, 0x0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->createTaskArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    move-result-object p1

    goto :goto_0
.end method

.method private result(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkIsSplitToJobsAllowed(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Lorg/apache/ignite/compute/gridify/GridifySetToValue;)V
    .locals 4
    .param p1, "arg"    # Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .param p2, "ann"    # Lorg/apache/ignite/compute/gridify/GridifySetToValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Lorg/apache/ignite/compute/gridify/GridifySetToValue;->threshold()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/ignite/compute/gridify/GridifySetToValue;->splitSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 102
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to split input method argument to jobs with unknown input size and invalid annotation parameter \'splitSize\' [mtdName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inputTypeCls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getParamIndex()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ignite/compute/gridify/GridifySetToValue;->threshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", splitSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/ignite/compute/gridify/GridifySetToValue;->splitSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method protected checkMethodSignature(Ljava/lang/reflect/Method;)V
    .locals 9
    .param p1, "mtd"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x5d

    .line 44
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 46
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    .local v0, "allowedParamIdxs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 49
    aget-object v3, v4, v2

    .line 51
    .local v3, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->isMethodParameterTypeAllowed(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid method signature. Failed to get valid method parameter types [mtdName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedTypes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getAllowedMethodParameterTypes()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 62
    .local v1, "annParamIdxs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 63
    aget-object v3, v4, v2

    .line 65
    .restart local v3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->isMethodParameterTypeAnnotated([Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v3    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_5

    .line 70
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid method signature. Only one method parameter can may annotated with @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lorg/apache/ignite/compute/gridify/GridifyInput;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[mtdName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedTypes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getAllowedMethodParameterTypes()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", annParamIdxs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v6, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 77
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid method signature. Method parameter must be annotated with @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lorg/apache/ignite/compute/gridify/GridifyInput;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[mtdName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedTypes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getAllowedMethodParameterTypes()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedParamIdxs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 84
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid method signature. Invalid annotated parameter [mtdName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedTypes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/gridify/GridifyUtils;->getAllowedMethodParameterTypes()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedParamIdxs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", annParamIdxs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_7
    return-void
.end method

.method protected execute(Ljava/lang/reflect/Method;Lorg/apache/ignite/IgniteCompute;Ljava/lang/Class;Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;IIJ)Ljava/lang/Object;
    .locals 16
    .param p1, "mtd"    # Ljava/lang/reflect/Method;
    .param p2, "compute"    # Lorg/apache/ignite/IgniteCompute;
    .param p4, "arg"    # Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .param p5, "nodeFilter"    # Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;
    .param p6, "threshold"    # I
    .param p7, "splitSize"    # I
    .param p8, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lorg/apache/ignite/IgniteCompute;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;",
            "Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;",
            "IIJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 126
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 128
    .local v12, "now":J
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_1

    const-wide v10, 0x7fffffffffffffffL

    .line 131
    .local v10, "end":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_0

    .line 132
    const-wide v10, 0x7fffffffffffffffL

    .line 134
    :cond_0
    const/4 v9, 0x0

    .line 137
    .local v9, "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_1
    cmp-long v2, v12, v10

    if-lez v2, :cond_2

    .line 138
    new-instance v2, Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;

    const-string v3, "Timeout occurred while waiting for completion."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/compute/ComputeTaskTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v9    # "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v10    # "end":J
    :cond_1
    add-long v10, p8, v12

    goto :goto_0

    .line 140
    .restart local v9    # "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local v10    # "end":J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9}, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;->createGridifyArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    move-result-object v14

    .line 142
    .local v14, "taskArg":Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    if-nez v14, :cond_3

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/ignite/compute/gridify/aop/GridifySetToValueAbstractAspect;->result(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    :goto_2
    return-object v2

    .line 144
    :cond_3
    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v2

    move/from16 v0, p6

    if-gt v2, v0, :cond_4

    .line 147
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 149
    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getTarget()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_2

    .line 151
    :catch_0
    move-exception v8

    .line 152
    .local v8, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to execute method locally."

    invoke-direct {v2, v3, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v8    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    :goto_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/apache/ignite/IgniteCompute;->withTimeout(J)Lorg/apache/ignite/IgniteCompute;

    move-result-object v15

    new-instance v2, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;

    const/4 v7, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;-><init>(Ljava/lang/Class;Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;IIZ)V

    invoke-interface {v15, v2, v14}, Lorg/apache/ignite/IgniteCompute;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    check-cast v9, Ljava/util/Collection;

    .line 160
    .restart local v9    # "res":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 161
    goto :goto_1

    .line 156
    :cond_5
    sub-long v2, v10, v12

    goto :goto_4

    .line 151
    :catch_1
    move-exception v8

    goto :goto_3
.end method
