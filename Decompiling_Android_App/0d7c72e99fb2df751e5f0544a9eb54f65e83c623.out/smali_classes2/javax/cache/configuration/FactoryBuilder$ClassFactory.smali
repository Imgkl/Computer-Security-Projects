.class public Ljavax/cache/configuration/FactoryBuilder$ClassFactory;
.super Ljava/lang/Object;
.source "FactoryBuilder.java"

# interfaces
.implements Ljavax/cache/configuration/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/cache/configuration/FactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/configuration/Factory",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2edeb8153aL


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;, "Ljavax/cache/configuration/FactoryBuilder$ClassFactory<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 121
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;, "Ljavax/cache/configuration/FactoryBuilder$ClassFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;, "Ljavax/cache/configuration/FactoryBuilder$ClassFactory<TT;>;"
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 130
    .local v2, "loader":Ljava/lang/ClassLoader;
    iget-object v3, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 133
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;, "Ljavax/cache/configuration/FactoryBuilder$ClassFactory<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 143
    check-cast v0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;

    .line 145
    .local v0, "that":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;
    iget-object v3, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    iget-object v4, v0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$ClassFactory;, "Ljavax/cache/configuration/FactoryBuilder$ClassFactory<TT;>;"
    iget-object v0, p0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
