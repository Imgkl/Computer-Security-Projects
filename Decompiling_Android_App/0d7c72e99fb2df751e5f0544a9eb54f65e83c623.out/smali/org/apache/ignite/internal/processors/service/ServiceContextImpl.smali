.class public Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;
.super Ljava/lang/Object;
.source "ServiceContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/services/ServiceContext;


# static fields
.field private static final NULL_METHOD:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J


# instance fields
.field private final affKey:Ljava/lang/Object;

.field private final cacheName:Ljava/lang/String;

.field private final exe:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final execId:Ljava/util/UUID;

.field private volatile isCancelled:Z

.field private final mtds:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final svc:Lorg/apache/ignite/services/Service;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->NULL_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/services/Service;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "execId"    # Ljava/util/UUID;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "affKey"    # Ljava/lang/Object;
    .param p5, "svc"    # Lorg/apache/ignite/services/Service;
    .param p6, "exe"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->mtds:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->execId:Ljava/util/UUID;

    .line 78
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->cacheName:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->affKey:Ljava/lang/Object;

    .line 80
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->svc:Lorg/apache/ignite/services/Service;

    .line 81
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->exe:Ljava/util/concurrent/ExecutorService;

    .line 82
    return-void
.end method


# virtual methods
.method public affinityKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->affKey:Ljava/lang/Object;

    return-object v0
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public executionId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->execId:Ljava/util/UUID;

    return-object v0
.end method

.method executor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->exe:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->isCancelled:Z

    return v0
.end method

.method method(Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 129
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->mtds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 131
    .local v1, "mtd":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 133
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->svc:Lorg/apache/ignite/services/Service;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->methodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/service/GridServiceMethodReflectKey;->argTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->mtds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    sget-object v2, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->NULL_METHOD:Ljava/lang/reflect/Method;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .end local v1    # "mtd":Ljava/lang/reflect/Method;
    :cond_1
    return-object v1

    .line 135
    .restart local v1    # "mtd":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->NULL_METHOD:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method service()Lorg/apache/ignite/services/Service;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->svc:Lorg/apache/ignite/services/Service;

    return-object v0
.end method

.method public setCancelled(Z)V
    .locals 0
    .param p1, "isCancelled"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;->isCancelled:Z

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/apache/ignite/internal/processors/service/ServiceContextImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
