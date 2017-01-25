.class Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;
.super Ljava/lang/Object;
.source "GridServiceProxy.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProxyCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private argTypes:[Ljava/lang/Class;

.field private args:[Ljava/lang/Object;

.field private transient ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private mtdName:Ljava/lang/String;

.field private svcName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "mtdName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "argTypes"    # [Ljava/lang/Class;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->mtdName:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->argTypes:[Ljava/lang/Class;

    .line 340
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->args:[Ljava/lang/Object;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/service/GridServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [Ljava/lang/Class;
    .param p4, "x3"    # [Ljava/lang/Object;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/service/GridServiceProxy$1;

    .prologue
    .line 303
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v3, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->serviceContext(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    move-result-object v2

    .line 347
    .local v2, "svcCtx":Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
    if-nez v2, :cond_0

    .line 348
    new-instance v3, Lorg/apache/ignite/internal/processors/service/GridServiceNotFoundException;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/service/GridServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->mtdName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->argTypes:[Ljava/lang/Class;

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 352
    .local v0, "key":Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->method(Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 354
    .local v1, "mtd":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 355
    new-instance v3, Lorg/apache/ignite/internal/processors/service/GridServiceMethodNotFoundException;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->mtdName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->argTypes:[Ljava/lang/Class;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/service/GridServiceMethodNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    throw v3

    .line 357
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->service()Lorg/apache/ignite/services/Service;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    .line 371
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->mtdName:Ljava/lang/String;

    .line 372
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readClassArray(Ljava/io/ObjectInput;)[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->argTypes:[Ljava/lang/Class;

    .line 373
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readArray(Ljava/io/ObjectInput;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->args:[Ljava/lang/Object;

    .line 374
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const-class v0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->svcName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->mtdName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->argTypes:[Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProxy$ServiceProxyCallable;->args:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeArray(Ljava/io/ObjectOutput;[Ljava/lang/Object;)V

    .line 366
    return-void
.end method
