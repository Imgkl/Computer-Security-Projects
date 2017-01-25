.class public Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;
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
    name = "SingletonFactory"
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
.field public static final serialVersionUID:J = 0x2edeb81542L


# instance fields
.field private instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;, "Ljavax/cache/configuration/FactoryBuilder$SingletonFactory<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;->instance:Ljava/lang/Object;

    .line 182
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;, "Ljavax/cache/configuration/FactoryBuilder$SingletonFactory<TT;>;"
    iget-object v0, p0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;, "Ljavax/cache/configuration/FactoryBuilder$SingletonFactory<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 192
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

    .line 194
    check-cast v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;

    .line 196
    .local v0, "that":Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;
    iget-object v3, p0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;->instance:Ljava/lang/Object;

    iget-object v4, v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;->instance:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;, "Ljavax/cache/configuration/FactoryBuilder$SingletonFactory<TT;>;"
    iget-object v0, p0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
