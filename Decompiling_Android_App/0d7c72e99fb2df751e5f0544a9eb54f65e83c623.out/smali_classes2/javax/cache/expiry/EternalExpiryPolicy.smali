.class public final Ljavax/cache/expiry/EternalExpiryPolicy;
.super Ljava/lang/Object;
.source "EternalExpiryPolicy.java"

# interfaces
.implements Ljavax/cache/expiry/ExpiryPolicy;
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x2edeb81523L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factoryOf()Ljavax/cache/configuration/Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;

    new-instance v1, Ljavax/cache/expiry/EternalExpiryPolicy;

    invoke-direct {v1}, Ljavax/cache/expiry/EternalExpiryPolicy;-><init>()V

    invoke-direct {v0, v1}, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 74
    instance-of v0, p1, Ljavax/cache/expiry/EternalExpiryPolicy;

    return v0
.end method

.method public getExpiryForAccess()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiryForCreation()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljavax/cache/expiry/Duration;->ETERNAL:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public getExpiryForUpdate()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    const-class v0, Ljavax/cache/expiry/EternalExpiryPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
