.class public final Ljavax/cache/expiry/CreatedExpiryPolicy;
.super Ljava/lang/Object;
.source "CreatedExpiryPolicy.java"

# interfaces
.implements Ljavax/cache/expiry/ExpiryPolicy;
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x2edebaf90fL


# instance fields
.field private expiryDuration:Ljavax/cache/expiry/Duration;


# direct methods
.method public constructor <init>(Ljavax/cache/expiry/Duration;)V
    .locals 0
    .param p1, "expiryDuration"    # Ljavax/cache/expiry/Duration;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    .line 44
    return-void
.end method

.method public static factoryOf(Ljavax/cache/expiry/Duration;)Ljavax/cache/configuration/Factory;
    .locals 2
    .param p0, "duration"    # Ljavax/cache/expiry/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/Duration;",
            ")",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;

    new-instance v1, Ljavax/cache/expiry/CreatedExpiryPolicy;

    invoke-direct {v1, p0}, Ljavax/cache/expiry/CreatedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    invoke-direct {v0, v1}, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    instance-of v3, p1, Ljavax/cache/expiry/CreatedExpiryPolicy;

    if-nez v3, :cond_3

    move v1, v2

    .line 105
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 107
    check-cast v0, Ljavax/cache/expiry/CreatedExpiryPolicy;

    .line 108
    .local v0, "other":Ljavax/cache/expiry/CreatedExpiryPolicy;
    iget-object v3, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-nez v3, :cond_4

    .line 109
    iget-object v3, v0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-eqz v3, :cond_0

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-object v3, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    iget-object v4, v0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    invoke-virtual {v3, v4}, Ljavax/cache/expiry/Duration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 113
    goto :goto_0
.end method

.method public getExpiryForAccess()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiryForCreation()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public getExpiryForUpdate()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0x1f

    .line 88
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 89
    .local v1, "result":I
    iget-object v2, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 90
    return v1

    .line 89
    :cond_0
    iget-object v2, p0, Ljavax/cache/expiry/CreatedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    invoke-virtual {v2}, Ljavax/cache/expiry/Duration;->hashCode()I

    move-result v2

    goto :goto_0
.end method
