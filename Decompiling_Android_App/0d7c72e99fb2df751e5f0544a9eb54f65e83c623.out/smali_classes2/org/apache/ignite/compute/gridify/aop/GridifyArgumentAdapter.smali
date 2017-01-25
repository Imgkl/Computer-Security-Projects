.class public Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;
.super Ljava/lang/Object;
.source "GridifyArgumentAdapter.java"

# interfaces
.implements Lorg/apache/ignite/compute/gridify/GridifyArgument;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mtdName:Ljava/lang/String;

.field private params:[Ljava/lang/Object;

.field private target:Ljava/lang/Object;

.field private types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mtdName"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;
    .param p5, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->cls:Ljava/lang/Class;

    .line 92
    iput-object p2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->mtdName:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    .line 94
    iput-object p4, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    .line 95
    iput-object p5, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->target:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/ignite/compute/gridify/GridifyArgument;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "orig"    # Lorg/apache/ignite/compute/gridify/GridifyArgument;
    .param p2, "newParams"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "orig"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->cls:Ljava/lang/Class;

    .line 67
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->mtdName:Ljava/lang/String;

    .line 68
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->target:Ljava/lang/Object;

    .line 70
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    .line 71
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    .line 73
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameters()[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-interface {p1}, Lorg/apache/ignite/compute/gridify/GridifyArgument;->getMethodParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    iget-object v2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v0, p2

    if-lez v0, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->setMethodParameters([Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public getMethodClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->mtdName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    return-object v0
.end method

.method public getMethodParameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public setMethodClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->cls:Ljava/lang/Class;

    .line 125
    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mtdName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->mtdName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public varargs setMethodParameterTypes([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    .line 143
    return-void
.end method

.method public varargs setMethodParameters([Ljava/lang/Object;)V
    .locals 0
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 180
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->target:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-class v0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMethodParameter(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "param"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->params:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 172
    return-void
.end method

.method public updateMethodParameterType(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyArgumentAdapter;->types:[Ljava/lang/Class;

    aput-object p1, v0, p2

    .line 153
    return-void
.end method
