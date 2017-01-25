.class public Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;
.super Ljavax/management/StandardMBean;
.source "IgniteStandardMXBean.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final primCls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    .line 41
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "implementation":Ljava/lang/Object;, "TT;"
    .local p2, "mbeanInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Ljavax/management/StandardMBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 72
    return-void
.end method

.method private findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "itf"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Class;

    .prologue
    .line 250
    sget-boolean v7, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 252
    :cond_0
    const/4 v3, 0x0

    .line 256
    .local v3, "res":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 258
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 275
    .end local v3    # "res":Ljava/lang/reflect/Method;
    .local v4, "res":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 261
    .end local v4    # "res":Ljava/lang/reflect/Method;
    .restart local v3    # "res":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    .line 268
    .local v6, "superItfs":[Ljava/lang/Class;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 269
    .local v5, "superItf":Ljava/lang/Class;
    invoke-direct {p0, v5, p2, p3}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_2

    move-object v4, v3

    .line 272
    .end local v3    # "res":Ljava/lang/reflect/Method;
    .restart local v4    # "res":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 268
    .end local v4    # "res":Ljava/lang/reflect/Method;
    .restart local v3    # "res":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "superItf":Ljava/lang/Class;
    :cond_3
    move-object v4, v3

    .line 275
    .end local v3    # "res":Ljava/lang/reflect/Method;
    .restart local v4    # "res":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private getMethod(Ljavax/management/MBeanOperationInfo;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "op"    # Ljavax/management/MBeanOperationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Ljavax/management/MBeanOperationInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/MBeanOperationInfo;->getSignature()[Ljavax/management/MBeanParameterInfo;

    move-result-object v3

    .line 225
    .local v3, "signature":[Ljavax/management/MBeanParameterInfo;
    array-length v5, v3

    new-array v2, v5, [Ljava/lang/Class;

    .line 227
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 229
    sget-object v5, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->primCls:Ljava/util/Map;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljavax/management/MBeanParameterInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 231
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_0

    .line 232
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljavax/management/MBeanParameterInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 234
    :cond_0
    aput-object v4, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMBeanInterface()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5, v1, v2}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected getDescription(Ljavax/management/MBeanAttributeInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Ljavax/management/MBeanAttributeInfo;

    .prologue
    .line 76
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanAttributeInfo;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljavax/management/MBeanAttributeInfo;->isIs()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "is"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljavax/management/MBeanAttributeInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "methodName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMBeanInterface()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {p0, v4, v1, v5}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "mtd":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 85
    const-class v4, Lorg/apache/ignite/mxbean/MXBeanDescription;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/mxbean/MXBeanDescription;

    .line 87
    .local v0, "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanDescription;->value()Ljava/lang/String;

    move-result-object v3

    .line 90
    sget-boolean v4, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .end local v2    # "mtd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 105
    :cond_0
    return-object v3

    .line 78
    .end local v1    # "methodName":Ljava/lang/String;
    :cond_1
    const-string v4, "get"

    goto :goto_0

    .line 91
    .restart local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local v2    # "mtd":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    sget-boolean v4, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method description cannot be empty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 95
    :cond_3
    sget-boolean v4, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Description must start with upper case: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 97
    :cond_4
    sget-boolean v4, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Description must end with period: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected getDescription(Ljavax/management/MBeanInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Ljavax/management/MBeanInfo;

    .prologue
    .line 110
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanInfo;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMBeanInterface()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/mxbean/MXBeanDescription;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/mxbean/MXBeanDescription;

    .line 115
    .local v0, "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanDescription;->value()Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-boolean v2, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 119
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 122
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 123
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 126
    :cond_3
    return-object v1
.end method

.method protected getDescription(Ljavax/management/MBeanOperationInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Ljavax/management/MBeanOperationInfo;

    .prologue
    .line 131
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanOperationInfo;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMethod(Ljavax/management/MBeanOperationInfo;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "m":Ljava/lang/reflect/Method;
    const-class v3, Lorg/apache/ignite/mxbean/MXBeanDescription;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/mxbean/MXBeanDescription;

    .line 138
    .local v0, "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanDescription;->value()Ljava/lang/String;

    move-result-object v2

    .line 141
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 149
    .end local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 153
    :cond_0
    :goto_0
    return-object v2

    .line 142
    .restart local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 149
    .end local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 145
    .restart local v0    # "desc":Lorg/apache/ignite/mxbean/MXBeanDescription;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 146
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
.end method

.method protected getDescription(Ljavax/management/MBeanOperationInfo;Ljavax/management/MBeanParameterInfo;I)Ljava/lang/String;
    .locals 5
    .param p1, "op"    # Ljavax/management/MBeanOperationInfo;
    .param p2, "param"    # Ljavax/management/MBeanParameterInfo;
    .param p3, "seq"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanOperationInfo;Ljavax/management/MBeanParameterInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMethod(Ljavax/management/MBeanOperationInfo;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 163
    .local v1, "m":Ljava/lang/reflect/Method;
    const-class v3, Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;

    .line 165
    .local v0, "decsAnn":Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
    if-eqz v0, :cond_0

    .line 166
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;->value()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 179
    .end local v0    # "decsAnn":Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 183
    :cond_0
    :goto_0
    return-object v2

    .line 167
    .restart local v0    # "decsAnn":Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt p3, v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 179
    .end local v0    # "decsAnn":Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 169
    .restart local v0    # "decsAnn":Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    :cond_2
    invoke-interface {v0}, Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;->value()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p3

    .line 171
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 172
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 175
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 176
    :cond_5
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
.end method

.method protected getParameterName(Ljavax/management/MBeanOperationInfo;Ljavax/management/MBeanParameterInfo;I)Ljava/lang/String;
    .locals 4
    .param p1, "op"    # Ljavax/management/MBeanOperationInfo;
    .param p2, "param"    # Ljavax/management/MBeanParameterInfo;
    .param p3, "seq"    # I

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Ljavax/management/StandardMBean;->getParameterName(Ljavax/management/MBeanOperationInfo;Ljavax/management/MBeanParameterInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->getMethod(Ljavax/management/MBeanOperationInfo;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    .local v0, "m":Ljava/lang/reflect/Method;
    const-class v3, Lorg/apache/ignite/mxbean/MXBeanParametersNames;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/mxbean/MXBeanParametersNames;

    .line 195
    .local v1, "namesAnn":Lorg/apache/ignite/mxbean/MXBeanParametersNames;
    if-eqz v1, :cond_0

    .line 196
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/mxbean/MXBeanParametersNames;->value()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 205
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "namesAnn":Lorg/apache/ignite/mxbean/MXBeanParametersNames;
    :catch_0
    move-exception v3

    .line 209
    :cond_0
    :goto_0
    return-object v2

    .line 197
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .restart local v1    # "namesAnn":Lorg/apache/ignite/mxbean/MXBeanParametersNames;
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Lorg/apache/ignite/mxbean/MXBeanParametersNames;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt p3, v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 205
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "namesAnn":Lorg/apache/ignite/mxbean/MXBeanParametersNames;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 199
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .restart local v1    # "namesAnn":Lorg/apache/ignite/mxbean/MXBeanParametersNames;
    :cond_2
    invoke-interface {v1}, Lorg/apache/ignite/mxbean/MXBeanParametersNames;->value()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p3

    .line 201
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 202
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/mxbean/IgniteStandardMXBean;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
.end method
