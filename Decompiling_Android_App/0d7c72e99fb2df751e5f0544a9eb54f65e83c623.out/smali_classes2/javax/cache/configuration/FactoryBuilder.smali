.class public final Ljavax/cache/configuration/FactoryBuilder;
.super Ljava/lang/Object;
.source "FactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;,
        Ljavax/cache/configuration/FactoryBuilder$ClassFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static factoryOf(Ljava/io/Serializable;)Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)",
            "Ljavax/cache/configuration/Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "instance":Ljava/io/Serializable;, "TT;"
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;

    invoke-direct {v0, p0}, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static factoryOf(Ljava/lang/Class;)Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/cache/configuration/Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;

    invoke-direct {v0, p0}, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static factoryOf(Ljava/lang/String;)Ljavax/cache/configuration/Factory;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljavax/cache/configuration/Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;

    invoke-direct {v0, p0}, Ljavax/cache/configuration/FactoryBuilder$ClassFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
